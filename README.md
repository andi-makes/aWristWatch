# andi makes a wrist watch! ⌚
> *It ain't pretty, but it's **mine**!* 😄

## Hardware 💡
### Microcontroller
The microcontroller used by this project is the `STM32L011F4` from STM. 
It features many peripherals as well as low power operation features.

### Display
This watch displays the time using four `KCSA02-105` 7-Segment displays from 
Kingbright. They were chosen because of their small footprint. Those 7-Segment 
displays are driven by the `STP08DP05` serial constant current driver from STM.

### Power
In it's normal operation, the watch gets powered by a LIPO battery. It can also 
be powered by an external powersource which provides 5V. The external connection
is also used to charge the internal LIPO using a `MCP73831` charger IC from 
Microchip. For OR-ing those two power supplies together so that the battery
is not used for powering the circuit during charging two `LM66100` ideal diodes
are used. The resulting powerline gets regulated by a `TLV70033` linear voltage 
regulator. The resulting 3.3V are used to power the microcontroller. For the 
powersupply for the display the non regulated voltage is used.

## Firmware 🧠
