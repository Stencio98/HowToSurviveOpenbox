# GUIDA SU COME SOPRAVVIVERRE SU OPENBOX (work in progress)

Se sei qui probabilmente è perchè ti sei ritrovato a usare linux su un computer datato, ti ho sgamato vero? oppure potresti essere un amante delle cose semplici... beh io sono entrambi :P

Quindi sei finito a cercare in giro dei modi per velocizzare linux, ne avrai letti un sacco, dalla disattivazione delle animazioni, a gestire le dimensioni della memoria swap, ecc... Tuttavia si finisce sempre lì, a dover cambiare ambiente grafico, passando da gnome (un macigno ciuccia risorse, tuttavia intuitivo dando all'occhio la sua giusta parte) a xfce (forse la miglior alternativa tra personalizzabilità e leggerezza), lxqt (che a pare mio... lasciamo perdere) e così via.

Attualmente mi ritrovo con Linux mint, da quando è entrato nei miei SSD è stato amore a primo bit, non solo perchè è più bello di xfce (parliamo di linux mint cinnamon) ed è semplice e leggero da usare, ma anche perchè una serie di motivi mi hanno allontanato da Snap e Canonical (non è di questo che dobbiamo parlare, ti do un piccolo link se vuoi approfondire: https://www.alternativalinux.it/ubuntu-gli-inganni-di-snap-e-il-controllo-di-linux/) 

Probabilmente a un certo punto innamorato delle cose ancora più scarne, ti sei imbattuto in Fluxbox, Openbox, i3 e simili... ognuno di noi si è innamorato di un editor di finestre diverso... A me tra tutti è toccato Openbox.

Di seguito ti mostrerò un elenco di comandi utili per sopravvivere la dentro, poichè una volta fatto il login (dalla schermata di login bisogna cambiare ambiente grafico selezionando openbox, normalmente è un pulsantino sulla destra, ogni distro è impostata diversamente) comparirà una schermata nera.. e mo? che si fa? prova a premere il pulsante destro del mouse, magia!! 
(in alcuni casi ho letto possa essere la combinazione Alt+F2)

Che ti piaccia o no (ma se sei qui figurati, forse lo usi meglio e più di me) bisogna usare il terminale, almeno nelle prime configurazioni.

*Questo passaggio non è fondamentale, quindi sentiti libero di fare come preferisci, io ho creato un Makefile (devi avere il comando make per utilizzarlo) nella directory `/home/user/` in cui ho inserito i comandi che uso più spesso, una alternativa è editare il file `/home/user/.bashrc` (prima fanne una copia) per personalizzare comandi e poterli utilizzare ovunque ti trovi e non solo in `/home/user/`. 
Se non sai cosa siano il comando make e il file .bashrc vai un attimo a cercare sul web.*

*PS: queste sono suluzioni che io ho trovato comode, può essere che non lo siano per altri, ma il bello sta proprio nel personalizzare gli ambienti a proprio piacimento*

# SFONDO
cè a chi piace e a chi no uno sfondo totalmente nero, ma a noi no. Quindi che si fa?
Ci appoggiamo al comando feh:
```
feh --bg-scale /percorso/file/immagine.jpg
```
che fa sta roba? in pratica crea un file `/home/user/.fehbg` che eseguito imposta uno sfondo, o comunque salva lo sfondo.
Ma a noi non piace impostare lo sfondo manualmente ogni volta che facciamo il login no? quindi che si fa?
Semplice, basta trovare il modo di eseguire il comando appena avviata la sessione, che è creare un file eseguibile `/etc/profile.d/my_background_openbox.sh.` Il file my_background_openbox sarà del tipo:
```
#!/bin/sh
feh --bg-scale /percorso/file/immagine.jpg
```
Perchè proprio nella cartella `/etc/profile.d`? perchè è una directory che contiene script di configurazione shell (generalmente in formato .sh) questi script vengono eseguiti automaticamente all'avvio di una shell interattiva di login, e sono utilizzati per settare variabili d'ambiente, funzioni e altre configurazioni specifiche di ambiente per gli utenti.
Ci sono alternative? si, una potrebbe essere inserire uno script nella cartella `~/.congig/autostart` se esiste, perchè potrebbe stare anche da altre parti.. ma personalmente non ho mai provato, in quella cartella autostart sono contenuti file di configurazione che definiscono quali applicazioni devono essere eseguite automaticamente all'avvio dell'ambiente desktop.

# PANNELLO DI CONTROLLO
il primo problema a cui si va in contro e che ti farebbe venir voglia di cacciare un exit o peggio spegnere il pc dal tasto fisico, è l'assenza di un pannello di controllo.. in particolare per configurare wifi, bluethoot ecc... 

La mia scelta è caduta su tint2 (comando avviabile da terminale oppure con il trucchetto dello sfondo che abbiamo visto prima).
Spoiler a volte non funziona spariscono delle icone, ma una volta configurato wifi o bluetooth non sarà necessario rifarlo a ogni avvio, ricordo che Openbox è solo un gestore di finestre).

