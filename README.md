# Polimi_Board
Design of new board for **Politecnico di Milano** Univeristy. \
This project is for the Embedded Systems course.

![alt text](https://eccmr.org/wp-content/uploads/2021/11/Polimi-logo-colours.jpg)

## Description
The board is based on *STM32* chip - **[STM32F205RCT6](https://www.st.com/resource/en/datasheet/stm32f205rb.pdf)** as a main core.

# Board Design specifications
- [x] 1x [specific main core chip](https://estore.st.com/en/stm32f205rct6-cpn.html)
- [x] 1x micro-USB B Port, directly connencted to the main chip.
- [x] 1x micro-USB B Port, for serial progeamming chip **FT2232**
- [x] 1x micro-SD Port
- [x] 1x Ethernet Port, with magnetic transformer included, wired to **LAN8742** chip
- [x] 1x reset button
- [x] 6x General buttons, 4 of them placed as a joystick cross, the others beside
- [x] 1x power LED
- [x] 1x LED linked to a GPIO Port
- [x] 1x OLED SCREEN I2C, [like](https://www.amazon.it/AZDelivery-Display-retroilluminato-Raspberry-gratuito/dp/B078J78R45?ref_=ast_sto_dp&th=1), or [like](https://www.ebay.it/itm/204428760352?itmmeta=01HQXT2FC1579AP9QA0BS3KWXZ&hash=item2f98e75520:g:HqMAAOSw8oZhO3MO)
- [x] 1x External Flash SPI chip

# Notes
- Jumpers are introduced to choose the direction of the USB OTG, in one case HS (High speed) and in one case FS (Full speed)
- As a primary source of power a normal jack is chosen

# Potential problems
- USB GND need to have a pull-down resistor?
- For USART programming the micro are needed the CTS and RTS? or is sufficient only TX and RX?
- For RJ45 chip with transformers the shield connector is correct?
- LAN8742 chip can be used without any specific firmware, right?
- External Flash advance feature like Hold and Write protect can be ignored?
- OLED screen interface is sufficient with pin connectoris?
- Define the power supply type for the Board?

# To be reviwed
- Check power supplies module
- Check all ports


## Usefull Links
- [Big Board reference with Ram](https://github.com/HEAPLab/marco-ram-board/tree/master)
- [Thermal camera project](https://github.com/fedetft/thermal_camera)
- [How to connect micro SD](https://emanbuc.gitbooks.io/appunti-iot/content/manuscript/sd_card_connection.html)
