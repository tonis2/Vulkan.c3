module camera;
import std::math;
import std::io;
import helpers;

fn float radians(float value) {
    return value * (float)math::PI / 180;
}

struct UniformData {
    Matrix4f projection;
    Matrix4f view;
    Matrix4f model;
    Matrix4f clip;
}

struct Camera {
    Vec3f eye;
    Vec3f focus;
    float zoom;
    float aspect;
    float yaw;
    float pitch;
    float min_zoom;
    float max_zoom;
}

fn Camera new(Vec3f focus, float zoom, float aspect) {
    Camera camera = {
        {0, 0, zoom},
        focus,
        zoom,
        aspect,
        -90.0,
        50.0,
        0.1,
        1000.0,
    };

    camera.eye_offset();
    return camera;
}

fn void Camera.eye_offset(Camera* self) {
    float horizontal_distance = self.zoom * math::cos(radians(self.pitch));
    float vertical_distance = self.zoom * math::sin(radians(self.pitch));

    self.eye = {
        self.focus.x - horizontal_distance * math::sin(radians(self.yaw)),
        self.focus.y + vertical_distance,
        self.focus.z - horizontal_distance * math::cos(radians(self.yaw)),
    };
}

fn void Camera.add_zoom(Camera* self, float value) {
    if ((math::abs(self.zoom + value) > self.min_zoom) && (math::abs(self.zoom + value) < self.max_zoom)) {
        self.zoom += value;
    }
    self.eye_offset();
}

fn void Camera.rotate_x(Camera* self, float deg) {
    self.yaw += deg;
    self.eye_offset();
}

fn void Camera.rotate_y(Camera* self, float deg) {
    float max_turn = 69.0;
    self.pitch -= deg;

    if (self.pitch > max_turn) {
        self.pitch = max_turn;
    }

    if (self.pitch < -max_turn) {
        self.pitch = -max_turn;
    }
    self.eye_offset();
}

fn void Camera.scene_offset(Camera* self, Vec3f offset) {
    float offset_x = offset.x + math::cos(radians(self.pitch)) * math::sin(radians(self.yaw));
    float offset_z = offset.x + math::cos(radians(self.pitch)) * math::cos(radians(self.yaw));
    self.eye.x -= offset_z;
    self.focus.x -= offset_z;
    self.eye.z += offset_x;
    self.focus.z += offset_x;
    self.eye.y -= offset.y;
    self.focus.y -= offset.y;
    self.eye_offset();
}

fn UniformData Camera.matrix(Camera* self, Matrix4f model = MATRIX4F_IDENTITY) {
    Matrix4f perspective = matrix4f_perspective(radians(45.0), self.aspect, self.min_zoom, self.max_zoom);
    Matrix4f view = vector::matrix4f_look_at(self.eye, self.focus, {0.0, 1.0, 0.0});
 /*   Matrix4f position = {
            1.0, 0.0, 0.0, 0.0,
            0.0, 1.0, 0.0, 0.0,
            0.0, 0.0, 1.0, 0.0,
            self.eye.x, self.eye.y, self.eye.z, 1.0,
    };*/

    return UniformData {
        perspective,
        view,
        model,
        FLIP_VULKAN_PROJECTION
    };
}


const Matrix4f FLIP_VULKAN_PROJECTION = { 1.0f,  0.0f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 0.0f,  0.0f, 0.5f, 0.0f, 0.0f,  0.0f, 0.5f, 1.0f};