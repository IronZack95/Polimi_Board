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
- [x] 1x micro-SD Port, With SDIO/MMC protocol
- [x] 1x Ethernet Port, with magnetic transformer included, wired to **LAN8742** chip
- [x] 1x reset button
- [x] 6x General buttons, 4 of them placed as a joystick cross, the others beside
- [x] 1x power LED
- [x] 1x JTAG interface
- [x] 1x LED linked to a GPIO Port
- [x] 1x [OLED SCREEN I2C](https://www.az-delivery.de/it/products/0-96zolldisplay)
- [x] 1x External Flash SPI chip

# Notes
- Jumpers are introduced to choose the direction of the USB OTG, in one case HS (High speed) and in one case FS (Full speed)
-  Jumpers are introduced to choose power from USB OTG and USB Programming
- As a primary source of power a normal jack is chosen then the USB one 

# Potential problems
- Is used the sower supply configuration from ARDUINO UNO Rev3

# To be reviwed
- [x] Secondo me non ci serve l'alimentazione tramite jack; quindi tutta la parte con l'LM358, l'interruttore e l'MCP1826 possono essere tolte. Nella marco-ram-board c'era il jack perché il consumo massimo teorico superava i 500mA limite per la porta USB, mentre nella tua board siamo ben sotto. La cosa che potrebbe servire per davvero è il jumper per scegliere l'alimentazione tra le due porte USB, e quello c'è già.

- [x] I valori dei condensatori nella pagina Power non sono specificati. Considerato che arriva una tensione già filtrata dalla porta USB, dovrebbero bastare 47uF prima del regolatore e 10uF dopo il regolatore, magari degli elettrolitici. Poi quando scegli le footprint per gli elettrolitici, evita quelli SMD, hanno una sfortunata tendenza a perdere l'elettrolita e spargerlo in giro.

- [x] L'FT2232D non è più in produzione ed è stato sostituito dall'FT2232HL che è uguale a parte che è USB 2 invece che USB 1.1. Purtroppo, a differenza dell'FT2232D, l'FT2232HL non funziona se non si collega un cristallo da 12MHz a OSCI/OSCO. Un vantaggio dell'FT2232HL è che è alimentato a 3V3 non a 5V, questo ti permette di dimezzare il valore dei condensatori di disaccoppiamento.

- [x] Sempre sull'FT2232, se non viene usata una EEPROM bisognerebbe mettere un pullup sul pin EEDATA.

- [x] Mi sfugge il perché c'è una resistenza da 100k sulla massa dell'USB OTG. Avrebbe senso per evitare ground loop, ma se alimentiamo la board anche da quella porta la 100k va a limitare la corrente di tutta la board, che è molto peggio. Toglierei la resistenza, e se ci sono dei ground loop amen, per della logica digitale non importa.

- [x] Il connettore esterno per il JTAG ha senso da usare se non montiamo l'FT2232 (dato che costa ben 5$!), ma se non lo montiamo poi non c'è nessun connettore per la seriale. Andrebbe aggiunta una fila di header a passo 2.54mm con RXD, TXD, GND

- [x] Nella pagina della Ethernet hai scritto "Baypass" invece di "Bypass" (c'è una "a" di troppo). Manca il valore, dovrebbe bastare 100n.

- [x] Nella pagina GPIO il LED è collegato in un modo un po' bizzarro che rende difficile pilotarlo correttamente da software. Per accenderlo bisogna tenere flottante la GPIO, per spegnerlo bisogna portarla a massa. Alimenterei direttamente il LED dalla GPIO, tanto con una resistenza da 10k consumerà al massimo 0.2mA (considerando una caduta di tensione spannometrica sulla giunzione del led di 1.3V), che nello schema generale delle cose non è nulla.


## Usefull Links
- [Big Board reference with Ram](https://github.com/HEAPLab/marco-ram-board/tree/master)
- [Thermal camera project](https://github.com/fedetft/thermal_camera)
- [How to connect micro SD](https://emanbuc.gitbooks.io/appunti-iot/content/manuscript/sd_card_connection.html)
- [Oled alternatives](https://www.amazon.it/AZDelivery-Display-retroilluminato-Raspberry-gratuito/dp/B078J78R45?ref_=ast_sto_dp&th=1), or [like](https://www.ebay.it/itm/204428760352?itmmeta=01HQXT2FC1579AP9QA0BS3KWXZ&hash=item2f98e75520:g:HqMAAOSw8oZhO3MO)
