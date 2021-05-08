#include "display.hpp"

#include <chip/interrupts.hpp>
#include <chip/lptim.hpp>
#include <chip/nvic.hpp>
#include <chip/rcc.hpp>
#include <chip/spi.hpp>

// NVIC number 25
// cppcheck-suppress unusedFunction
void SPI1_IRQHandler() {
    static bool scnd{ true };
    if (scnd) {
        SPI1::DR::set_reg(
            static_cast<SPI1::DR::type_t>(display::buffer >> 16U));
    } else {
        while (SPI1::SR::get_bit(SPI1::BSY)) {
        }
        SPI1::CR1::clear_bit(SPI1::SPE);    // Disable SPI
        display::le::set_bit(low);
        display::le::set_bit(high);
    }
    scnd = !scnd;
}
uint32_t display::buffer{ 0 };

uint8_t display::brightness{ 1 };
bool display::ison{ true };

void display::on() {
    oe::set_mode(gpio::MODE::ALTERNATE);
    LPTIM1::CMP::set_reg(brightness & 0xFFU);
    ison = true;
}

void display::off() {
    oe::set_mode(gpio::MODE::OUTPUT);
    oe::set_bit(high);
    ison = false;
    display::fill_buffer_bcd(10U, 10U, 10U, 10U);
    display::send();
}

void display::update_brightness() {
    if (!ison) {
        return;
    }
    if (brightness == 0xFF) {
        oe::set_mode(gpio::MODE::OUTPUT);
        oe::set_bit(low);
    } else if (brightness == 0) {
        oe::set_mode(gpio::MODE::OUTPUT);
        oe::set_bit(high);
    } else {
        oe::set_mode(gpio::MODE::ALTERNATE);
        LPTIM1::CMP::set_reg(brightness & 0xFFU);
    }
}

void display::setup() {
    // Enable LPTIM1
    LPTIM1::set_clock_source(lptim::clock::LSE);
    LPTIM1::power_on();

    LPTIM1::set(lptim::cr::ENABLE, true);    // Enable the LPTIM1
    LPTIM1::ARR::set_reg(656U);    // Set top limit of PWM (656 ~= 50Hz)
    LPTIM1::set(lptim::cr::CNTSTRT, true);    // Start the PWM in continous mode

    oe::set_alternate_function(gpio::AF::AF2);

    oe::set_mode(gpio::MODE::ALTERNATE);
    le::set_mode(gpio::MODE::OUTPUT);
    clk::set_mode(gpio::MODE::ALTERNATE);
    sdi::set_mode(gpio::MODE::ALTERNATE);
    mdi::set_mode(gpio::MODE::ALTERNATE);

    SPI1::CR1::clear_reg();
    SPI1::CR1::set_bit(
        SPI1::DFF, SPI1::SSI, SPI1::SSM, SPI1::LSBFIRST, SPI1::MSTR);

    SPI1::CR2::set_bit(SPI1::TXEIE);

    NVIC::ISER::set_bit(25U);
}

void display::send() {
    SPI1::DR::set_reg(static_cast<SPI1::DR::type_t>(buffer & 0xFFFFU));
    SPI1::CR1::set_bit(SPI1::SPE);    // Enable SPI
}
