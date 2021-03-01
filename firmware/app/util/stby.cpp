#include "stby.hpp"

#include "../driver/display.hpp"

namespace aww::stby {
    int counter{ 0 };
    bool stby{ false };
    /// Resets standby counter
    void kick() { counter = 0; }
    /// Increments standby counter
    void tick() { ++counter; }

    int get_counter() { return counter; }

    bool in_stby() { return stby; }
    void enter_stby() {
        stby = true;
        display::off();
    }
    void exit_stby() {
        stby = false;
        display::on();
    }
}