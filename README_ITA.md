# GUIDA SU COME SOPRAVVIVERRE SU OPENBOX (work in progress)

Se sei qui probabilmente è perchè ti sei ritrovato a usare linux su un computer datato, ti ho sgamato vero? oppure potresti essere un amante delle cose semplici... beh io sono entrambi :P

Quindi sei finito a cercare in giro dei modi per velocizzare linux, ne avrai letti un sacco, dalla disattivazione delle animazioni, a gestire le dimensioni della memoria swap, ecc... Tuttavia si finisce sempre lì, a dover cambiare ambiente grafico, passando da gnome (un macigno ciuccia risorse, tuttavia intuitivo dando all'occhio la sua giusta parte) a xfce (forse la miglior alternativa tra personalizzabilità e leggerezza), lxqt (che a pare mio... lasciamo perdere) e così via.

Attualmente mi ritrovo con Linux mint, da quando è entrato nei miei SSD è stato amore a primo bit, non solo perchè è più bello di xfce (stiamo parlando del mitico linux mint cinnamon) ed è semplice e leggero da usare, in più una serie di motivi mi hanno allontanato da Snap e Canonical (non è di questo che dobbiamo parlare, ti do un piccolo link se vuoi approfondire: https://www.alternativalinux.it/ubuntu-gli-inganni-di-snap-e-il-controllo-di-linux/) 

Probabilmente a un certo punto innamorato delle cose ancora più scarne, ti sei imbattuto in Fluxbox, Openbox, i3 e simili... ognuno di noi si è innamorato di un gestore di finestre diverso... A me tra tutti è toccato Openbox.

Di seguito ti mostrerò un elenco di comandi utili per sopravvivere la dentro, poichè una volta fatto il login (dalla schermata di login bisogna cambiare ambiente grafico selezionando openbox, normalmente è un pulsantino sulla destra, ogni distro è impostata diversamente) comparirà una schermata nera.. e mo? che si fa? prova a premere il pulsante destro del mouse, magia!! 
(in alcuni casi ho letto possa essere la combinazione Alt+F2)

Che ti piaccia o no (ma se sei qui figurati, forse lo usi meglio e più di me) bisogna usare il terminale, almeno nelle prime configurazioni.

*Questo passaggio non è fondamentale, quindi sentiti libero di fare come preferisci, io ho creato un Makefile (il Makefile presente qui è quello che uso quotidianamente e che tengo aggiornato) nella directory `/home/user/` in cui ho inserito i comandi che uso più spesso, una alternativa è editare il file `/home/user/.bashrc` (prima fanne una copia) per personalizzare comandi e poterli utilizzare ovunque ti trovi e non solo quando sei in `/home/user/`. 
Se non sai cosa siano il comando make e il file .bashrc vai un attimo a cercare sul web.*

*PS: queste sono suluzioni che io ho trovato comode, può essere che non lo siano per altri, ma il bello non sta solo nella personalizzazione degli ambienti a proprio piacimento, ma anche nel cercare "la soluzione" che più ci piace.
Per esempio, ho preferito in certi casi trovare e sperimentare tool da terminale perchè mi piace, e poi credo che per usare le GUI tanto valga usare un altro ambiente grafico :P*.

# SHORTCAT 
* tasto destro del mouse (oppure alt+f2): apre il menù openbox
* ctrl+alt + freccia sinistra/destra: sposta nel desktop precedente/successivo 
* tasto centrale mouse: permette di vedere i workspaces con applicazioni aperte
* la rotella del mouse sul bordo superiore di una finestra la nasconde lasciando solo la barra superiore visibile finchè non viene spostata o riusata la rotella
* invece premere la rotella superiore sul bordo superiore della finestra, la mette in ultimo piano 

# SFONDO

cè a chi piace e a chi no uno sfondo totalmente nero, ma a noi no. Quindi che si fa?
Ci appoggiamo al comando feh:
```
feh --bg-scale /percorso/file/immagine.jpg
```
che fa sta roba? in pratica crea un file `/home/user/.fehbg` che eseguito imposta uno sfondo, viene "salvato" in questo modo.
Ma a noi non piace impostare lo sfondo manualmente ogni volta che facciamo il login no? quindi che si fa?
Semplice, basta trovare il modo di eseguire il comando appena avviata la sessione, che è creare un file eseguibile `/etc/profile.d/my_background_openbox.sh.` Il file my_background_openbox sarà del tipo:
```
#!/bin/sh
feh --bg-scale /percorso/file/immagine.jpg
```
Perchè proprio nella cartella `/etc/profile.d`? perchè è una directory che contiene script di configurazione shell (generalmente in formato .sh) questi script vengono eseguiti automaticamente all'avvio di una shell interattiva di login, e sono utilizzati per settare variabili d'ambiente, funzioni e altre configurazioni specifiche di ambiente per gli utenti.
Ci sono alternative? si, una potrebbe essere inserire uno script nella cartella `~/.congig/autostart` se esiste, perchè potrebbe stare anche da altre parti.. ma personalmente non ho mai provato, in quella cartella autostart sono contenuti file di configurazione che definiscono quali applicazioni devono essere eseguite automaticamente all'avvio dell'ambiente desktop.

# PANNELLO DI CONTROLLO / TASKBAR
il primo problema a cui si va in contro e che ti farebbe venir voglia di cacciare un exit o peggio spegnere il pc dal tasto fisico, è l'assenza di un pannello di controllo.. in particolare per vedere l'ora, configurare wifi, bluethoot ecc... 

La mia scelta è caduta su `tint2` (comando avviabile da terminale oppure con il trucchetto dello sfondo che abbiamo visto prima).
Spoiler a volte spariscono delle icone (ma una volta configurato wifi o bluetooth non sarà necessario rifarlo a ogni avvio, ricordo che Openbox è solo un gestore di finestre). Un'opzione è anche farsi largo nel menù di openbox trovando l'applicativo per collegarsi, da terminale dovrebbe essere `nm-connection-editor`, oppure esiste anche `nmtui` che dovrebbe essere completo anche per la scansione delle reti, ma personalmente non lo ho mai utilizzato. Lo stesso vale per il bluetooth, puoi farti largo nel menù di openbox, usarlo dal pannello, dal terminale dovresti poterlo attivare e disattivare col comando `bluetooth`, ma ve ne sono altri come `bluetoothctl` e simili che permettono anche la gestione dei dispositivi da riga di comando .

*Come detto prima il bello non sta solo nel personalizzare ;)*

Per vedere la data c'è `date`, nel caso abbiate un portatile e vogliate sapere lo stato della batteria si usa `acpi`, il comando `watch acpi` per esempio permette di vedere in "tempo reale" lo stato della batteria. 

# GESTIONE AUDIO
Un'altra problematica, è modificare il volume, senza un'interfaccia grafica sembra complicato..
La soluzione che ho trovato è appoggiarsi a `pulsemixer` avviabile da terminale (non è complicato da utilizzare) e non necessita di librerie particolari.
Sicuramente ci saranno altri escamotage!!

# LUMINOSITA' 
Qui il discorso è più complicato, una soluzione scalabile è quella di editare il file di sistema `/sys/class/backlight/???/brightness` coi permessi di root, quindi sarà una cosa del genere: 
```
sudo nano /sys/class/backlight/intel_backlight/brightness
# oppure
sudo nano /sys/class/backlight/acpi_video0/brightness  #(nano è un editor di testo).
```
`intel_backlight` è specifico per i dispositivi che utilizzano schede grafiche Intel, mentre `acpi_video0` è un'interfaccia più generica che può funzionare con vari driver.
Ho riportato entrambi per completezza, ma dipenderà dal vostro hardware specifico, in ogni caso fatevi un giro tra quelle cartelle, appena troverete `brightness` provate a editare il file. ***NON inserite 0 oppure valori di fondoscala altrimenti rischiate di avere lo schermo nero***.
`max_brightness` contiene il valore massimo possibile.

*Esperienza personale:
ho un pc la cui scala è al contrario, 100% luminosità a zero e viceversa (i tasti della tastiera però indicano a sx più luminoso e dx meno) per questo ho scritto **non inserire valori di fondo scala***

# RISOLUZIONE SCHERMO
Ci appoggiamo a `xrand`, per esempio se volessimo impostare la risoluzione di 1920x1080:
```
xrandr --output eDP-1 --mode 1920x1080
```
Ovviamente, il parametro eDP-1 e 1920x180 dipendono dalla vostra macchina/monitor in ogni caso dopo aver scritto `xrandr` premendo tab verranno mostrate le uscite disponibili, lo stesso vale per le risoluzioni.

# PIU' SCHERMI
Possiamo appoggiarci al tool grafico `arandr`, è consigliato reimpostare lo sfondo con feh dopo aver cambiato la disposizione degli schermi.
Arandr permette di salvare la configurazione come un file sh eseguibile (anche qui è consigliato inserirlo nella cartella etc/profile.d.
*magari dato che può dare problemi con lo sfondo, se anche lo script di feh dovesse essere nella stessa cartella, sarebbe meglio inserirgli uno sleep di 1 secondo all'inizio in modo da essere sicuri che venga impostato lo sfondo solo dopo che sono stati impostati i monitor nelle posizioni desiderate*)

# LOCKSCREEN
Va impostato in qualche modo (siete anche liberi di non usarlo, ma probabilmente chiudendo solo il laptop non farà un tubo oltre a oscurare lo schermo senza bloccarlo).
di default è installato xscreensaver (che non ho mai usato). Io su linux mint ho a disposizione `cinnamon-screensaver-lock-dialog` che invoco da terminale, blocca lo oschermo scegliendo un messaggio di testo da mostrare, con tutta probabilità fa parte del pacchetto `cinnamon-session`. Potrebbero esserci cose diverse in base alle vostre distro e ambienti grafici installati.

*Non ho ancora capito se ci sono impostazioni che vanno "in conflitto" con openbox, poichè oscura lo schermo dopo dei minuti di inattività, non ho capito se è gestibile da xscreensaver oppure è reduce dalle impostazioni associate all'ambiente grafico di default, non me ne sono preoccupato in realtà*

