# Polimi_Board
Design of new board for **Politecnico di Milano** Univeristy. \
This project is for the Embedded Systems course.
![alt text](https://github.com/IronZack95/Polimi_Board/blob/main/Render/back%20zoom%20raytracing%202.png)
## Description
The board is based on *STM32* chip - **[STM32F205RCT6](https://www.st.com/resource/en/datasheet/stm32f205rb.pdf)** as a main core.
![alt text](https://github.com/IronZack95/Polimi_Board/blob/main/Render/Polimi%20Board%20Front_quote.png)
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
- Jumpers are introduced to choose power from USB OTG and USB Programming
- The primary source of power arrives from USB
- Board size **10cm x 7cm**
- Hole distances **6cm x 9cm**

## BOM - Mouser
https://www.mouser.it/api/CrossDomain/GetContext?syncDomains=www&returnUrl=https%3a%2f%2fwww.mouser.com%2fProjectManager%2fProjectDetail.aspx%3fAccessID%3dec9a158a8f&async=False&setPrefSub=False&clearPrefSub=False

# Potential problems
- cambiati i simboli dei connettori RJ45, micro SD e mini USB
- la micro SD non ha l'uscita WRITE PROTECT, è un problema? è stata scollegata 
- microSD card detect è stato messo in corrispondenza di PC6 -> SDIO_D6

# To be reviwed
 - [x] La footprint del cristallo da 25 MHz è sbagliata, la distanza tra i pin è 4.15mm invece che 4.88. Dovrebbe essere uguale a quella del cristallo da 12 MHz che invece è giusta.
- [x] Puoi togliere dalla BOM l'STM32 perché li abbiamo già in abbondanza
- [x] Per i led si può scendere col prezzo: ad esempio un led verde da 0.15$ invece che 0.3: https://www.mouser.it/ProductDetail/Wurth-Elektronik/151031VS06000?qs=LlUlMxKIyB01ggED1iKswA%3D%3D
- [x] Idem per i condensatori; questi da 100nF (0.1uF) costano solo 0.093€ l'uno: https://www.mouser.it/ProductDetail/KYOCERA-AVX/06033G104ZAT2A?qs=NXubJDmysXJMPmHfVo6Z%252BA%3D%3D
Ricorda di ordinare per prezzo (e filtra solo per i componenti in stock al momento) quando cerchi i componenti e specialmente per i passivi prendi sempre le cose meno costose (finchè sono in specifica per quanto riguarda voltaggio (potenza per le resistenze) e valore del componente).
In generale tutti i passivi mi sembrano più costosi del necessario.
- [x] Condensatore da 47uF: hai scelto un condensatore ai polimeri, costano ma a parte che non hanno la tendenza di sputare fuori l'elettrolita hanno caratteristiche generalmente *peggiori* dei condensatori elettrolitici normali. Per gli elettrolitici è preferibile prendere quelli through hole "vecchio stile", con una tensione di lavoro/temperatura massima sovradimensionata. Per esempio questi condensatori da 47uF della Panasonic https://www.mouser.it/ProductDetail/Panasonic/EEU-EB1J470S?qs=ctSfcQVnnmTBOdyC1HlWZw%3D%3D non costano nulla (0.26€ cadauno) e hanno una durata di esercizio di ben 5000 ore e una tensione max di lavoro di 63V e una temperatura massima di 105°C. Nella nostra applicazione è perfettamente equivalente al condensatore ai polimeri (anzi l'unica differenza sostanziale è che il condensatore ai polimeri andava fino a 100V, cosa che non ci serve) ma costa 1/10 del prezzo.
- [x] i chip vanno bene, i connettori vanno bene, riguarda tutti i passivi e cerca di scendere coi prezzi. Ho guardato principalmente i condensatori ma non escludo che si possa scendere di prezzo anche con le resistenze.
- [x] Mi sembra che manca il connettore IDC per il JTAG e le strip da 2.54mm per jumper e breakout vari. Il connettore IDC lo possiamo lasciare fuori dalla BOM perché non credo ci servirà e i connettori costano.
- [ ] Per le strip da 2.54mm ti consiglio questa serie: https://www.mouser.it/c/?tradename=EconoStik Attenzione a selezionare nel filtro le seguenti proprietà, altrimenti le misure del connettore saranno sbagliate:
- Termination Post Length: 3.05mm
- Mating Post Length: 5.84mm

Commenti vari sul layout:
- [x] I connettori USB posizionali bene in modo che l'estremità del connettore (quella suggerita dal silkscreen) arrivi a toccare il bordo della scheda, altrimenti non sarà possibile infilare la spina nel connettore senza che il corpo della spina ostruisca l'inserimento.
- [x] Idem come sopra per il connettore Ethernet. Le sagome di ingombro della libreria di KiCad (quelle che compaiono col bordo rosa) sono estremamente conservative; non farti problemi a farle intersecare un po' se lo ritieni necessario.
- [x] Le dimensioni della scheda sembrano un po' abbondanti, magari si può scorciare un pochino verticalmente (tipo 60mmx100mm invece che 100x100)

## Usefull Links
- [Big Board reference with Ram](https://github.com/HEAPLab/marco-ram-board/tree/master)
- [Thermal camera project](https://github.com/fedetft/thermal_camera)
- [How to connect micro SD](https://emanbuc.gitbooks.io/appunti-iot/content/manuscript/sd_card_connection.html)
- [Oled alternatives](https://www.amazon.it/AZDelivery-Display-retroilluminato-Raspberry-gratuito/dp/B078J78R45?ref_=ast_sto_dp&th=1), or [like](https://www.ebay.it/itm/204428760352?itmmeta=01HQXT2FC1579AP9QA0BS3KWXZ&hash=item2f98e75520:g:HqMAAOSw8oZhO3MO)
