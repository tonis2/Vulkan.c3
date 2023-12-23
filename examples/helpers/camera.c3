module camera;
import std::math;
import std::io;

fn float radians(float value) {
    return value * (float)math::PI / 180;
}

struct UniformData {
    Matrix4f projection;
    Matrix4f view;
    Matrix4f model;
}

struct Camera {
    Vec3f target;
    Vec3f eye;
    Matrix4f perspective;
    Matrix4f view;
    float min_zoom;
    float max_zoom;
}

fn Camera new(Vec3f target = {0.0, 0.0, 0.0}, Vec3f eye = {0.0, 0.0, 0.0}, float aspect = 0.8, float view = 45, float min_zoom = 0.1, float max_zoom = 500) {
    return Camera {
        target,
        eye,
        matrix4f_perspective(radians(view), aspect, min_zoom, max_zoom),
        vector::matrix4f_look_at(eye, target, {0.0, 1.0, 0.0}),
        min_zoom,
        max_zoom
    };
}

fn void Camera.rotate(Camera* self, Quaternionf rotation) {
    if (self.view.m00 < 0) rotation.i = -rotation.i;
    self.view = rotation.to_matrixf().mul(self.view);
}

fn void Camera.zoom(Camera* self, float value) {
   self.view.m32 += value;
}

fn UniformData Camera.matrix(Camera self, Matrix4f model = MATRIX4F_IDENTITY) {
    return UniformData {
        self.perspective,
        self.view,
        model
    };
}


const Matrix4f FLIP_VULKAN_PROJECTION = { 1.0f,  0.0f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 0.0f,  0.0f, 0.5f, 0.0f, 0.0f,  0.0f, 0.5f, 1.0f};