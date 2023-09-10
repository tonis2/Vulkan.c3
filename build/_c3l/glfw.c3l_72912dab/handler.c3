module glfw;

EventHandler* handle;

struct EventHandler {
    double mouse_x_pos;
    double mouse_y_pos;
    double mouse_x_delta;
    double mouse_y_delta;
    bool left_mouse_click;
    bool right_mouse_click;
    GLFWwindow window;
    KeyboardEvent on_keyboard_event;
    MouseEvent on_mouse_event;
    uint last_key;
}

fn void EventHandler.init(&self) {
    setMouseButtonCallback(self.window, (MouseCallback*)&mouseEvents);
    setKeyCallback(self.window, (KeyCallback*)&keyboardEvents);
    handle = self;
}

fn void mouseEvents(GLFWwindow window, int button, int action, int mods) {
    // left mouse button action
    if (button == 0) {
        if (action == 1) {
            handle.left_mouse_click = true;
        } else {
            handle.left_mouse_click = false;
        }
    }

    // right button
    if (button == 1) {
        if (action == 1) {
            handle.right_mouse_click = true;
        } else {
            handle.right_mouse_click = false;
        }
    }

  /*  handle.on_mouse_event(handle);*/
}

fn void keyboardEvents(GLFWwindow window, int key, int scancode, int action, int mods) {
    handle.last_key = key;
    /*handle.on_keyboard_event(handle, key);*/
}


fn void EventHandler.update(&self) {
    glfw::pollEvents();
    double x_local, y_local;
    getCursorPos(self.window, &x_local, &y_local);

    self.mouse_x_delta = x_local - self.mouse_x_pos;
    self.mouse_y_delta = y_local - self.mouse_y_pos;

    self.mouse_x_pos = x_local;
    self.mouse_y_pos = y_local;
}