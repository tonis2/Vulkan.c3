module camera;
import std::math;
import std::io;

fn float radians(float value) {
    return value * (float)math::PI / 180;
}

struct UniformData {
    Matrix4f projection;
    Matrix4f view;
    Vec3f eye;
}

struct Camera {
    Vec3f target;
    Vec3f eye;
    Matrix4f perspective;
    Matrix4f view;
    float pitch;
    float yaw;
    float zoom_value;
}

fn Camera new(Vec3f target = {0.0, 0.0, 0.0}, Vec3f eye = {0.0, 0.0, 0.0}, float aspect = 0.8, float view = 45, float min_zoom = 0.1, float max_zoom = 500) {
    return Camera {
        target,
        eye,
        perspective(radians(view), aspect, min_zoom, max_zoom),
        matrix_look_at(eye, target, {0.0, 1.0, 0.0}),
        0,
        0,
        -eye.z
    };
}

fn void Camera.rotate (Camera* self, float x_offset, float y_offset) {
    self.yaw += x_offset;
    self.pitch += y_offset;

    if (self.pitch > 89.0) self.pitch = 89.0;
    if (self.pitch < -89.0) self.pitch = -89.0;

    self.eye = Vec3f { math::cos(radians(self.yaw)) * math::cos(radians(self.pitch)),
                       math::sin(radians(self.pitch)),
                       math::sin(radians(self.yaw)) * math::cos(radians(self.pitch))};

    self.view = matrix_look_at(self.eye, self.target, {0.0, 1.0, 0.0});
    self.view.m23 = self.zoom_value;
}

fn void Camera.zoom(Camera* self, float value) {
    if (self.zoom_value + value > 0) return;
    self.zoom_value += value;
    self.view.m23 += value;
}

fn UniformData Camera.matrix(Camera self) {
    return UniformData {
        self.perspective.transpose(),
        self.view.transpose(),
        self.eye,
    };
}

fn Matrix4f matrix_look_at(Vec3f eye, Vec3f target, Vec3f up)
{
	Vec3f vz = (eye - target).normalize();
	Vec3f vx = up.cross(vz).normalize();
	Vec3f vy = vz.cross(vx);

	return Matrix4f {
		vx[0], vx[1], vx[2], - vx.dot(eye),
		vy[0], vy[1], vy[2], - vy.dot(eye),
		vz[0], vz[1], vz[2], - vz.dot(eye),
		0.0, 0.0, 0.0, 1
	};
}

fn Matrix4f perspective(float fov, float aspect_ratio, float near, float far)
{
	float f = (float)math::tan(math::PI * 0.5 - 0.5 * fov);
	float rangeInv = (float)1.0 / (near - far);

	return {
		f / aspect_ratio, 0, 0, 0,
		0, f, 0, 0,
		0, 0, (near + far) * rangeInv,  near * far * rangeInv * 2,
		0, 0, -1, 0,
	};
}