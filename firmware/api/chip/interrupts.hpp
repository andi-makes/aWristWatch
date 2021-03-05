#pragma once

extern "C" void Reset_Handler();
extern "C" void NMI_Handler();
extern "C" void HardFault_Handler();
extern "C" void SVC_Handler();
extern "C" void PendSV_Handler();
extern "C" void SysTick_Handler();
extern "C" void WWDG_IRQHandler();
extern "C" void PVD_IRQHandler();
extern "C" void RTC_IRQHandler();
extern "C" void RCC_IRQHandler();
extern "C" void EXTI0_1_IRQHandler();
extern "C" void EXTI2_3_IRQHandler();
extern "C" void EXTI4_15_IRQHandler();
extern "C" void DMA1_Channel1_IRQHandler();
extern "C" void DMA1_Channel2_3_IRQHandler();
extern "C" void DMA1_Channel4_7_IRQHandler();
extern "C" void ADC_COMP_IRQHandler();
extern "C" void LPTIM1_IRQHandler();
extern "C" void USART4_USART5_IRQHandler();
extern "C" void TIM2_IRQHandler();
extern "C" void TIM3_IRQHandler();
extern "C" void TIM6_IRQHandler();
extern "C" void TIM7_IRQHandler();
extern "C" void TIM21_IRQHandler();
extern "C" void I2C3_IRQHandler();
extern "C" void TIM22_IRQHandler();
extern "C" void I2C1_IRQHandler();
extern "C" void I2C2_IRQHandler();
extern "C" void SPI1_IRQHandler();
extern "C" void SPI2_IRQHandler();
extern "C" void USART1_IRQHandler();
extern "C" void USART2_IRQHandler();
extern "C" void AES_RNG_LPUART1_IRQHandler();

extern "C" void SystemInit();

struct interrupt {
    static inline void enable() {
        // NOLINTNEXTLINE(hicpp-no-assembler): Enables interrupts
        asm("CPSIE i");
    }

    static inline void disable() {
        // NOLINTNEXTLINE(hicpp-no-assembler): Enables interrupts
        asm("CPSID i");
    }
};
