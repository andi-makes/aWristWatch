#pragma once

namespace aww::stby {
    void kick();
    void tick();
    bool in_stby();
    void enter_stby();
    void exit_stby();
    int get_counter();
}