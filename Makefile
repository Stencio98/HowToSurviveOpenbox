default:
	./.fehbg
	$(MAKE) xset-no-screensaver

default_2:
#set arandr configuration then set wallpaper and disable screensaver
	xrandr --output LVDS --primary --mode 1366x768 --pos 1600x132 --rotate normal --output HDMI-0 --off --output VGA-0 --mode 1600x900 --pos 0x0 --rotate normal
	./.fehbg
	$(MAKE) xset-no-screensaver

app-finder-openbox-helper:
	xfce4-appfinder

lock-screen:
	cinnamon-screensaver-lock-dialog
update:
	sudo apt-get clean
	sudo apt-get update
	sudo apt-get dist-upgrade
	sudo apt-get autoremove
	flatpak update
	sudo snap refresh

disable_keyboard:
	xinput float 'AT Translated Set 2 keyboard'

1280x720:
	xrandr --output eDP-1 --mode 1280x720

1366x768:
	xrandr --output eDP-1 --mode 1366x768

umlet:
	./Umlet/umlet.sh

data-grip:
	./DataGrip-2024.3.3/bin/datagrip.sh

intellij:
	./idea-IU-243.22562.145/bin/idea.sh

status-pc:
	watch $(MAKE) pc

pc:
	date
	acpi
	free -h
	df -h

audio:
	@echo "___press q to exit NOT use ctrl+C___"
	@sleep 1
	pulsemixer

redshift:
	redshift -O 3000

redshiftq:
	redshift -x

brightness:
	@echo "!!!DO NOT USE THE MAX OR MIN RANGE FOR CAUTION!!!"
	@echo "to know range, go to ../intel_backlight and watch files"
#	sudo nano /sys/class/backlight/intel_backlight/brightness
	sudo nano /sys/class/backlight/acpi_video0/brightness

xset-no-screensaver:
	xset s off
	xset -dpms
	xset q

background:
	@echo "in /etc/profile.d stanno script che vengono eseguiti al login"
	feh --bg-scale ~/Pictures/akatsuki-pictures-6vgzl0pobhu2n6w1.jpg

monitor:
	arandr

disable-touchpad:
	xinput disable 'ETPS/2 Elantech Touchpad'

panel:
#tint2
	xfce4-panel
xampp:
	@echo "link xampp ubuntu"
	@echo "https://wiki.ubuntu-it.org/Server/Xampp"
	@echo "avviare xampp : sudo /opt/lampp/xampp start"
	@echo "avviare gui xampp : sudo /opt/lampp/manager-linux-x64.run"

wifi:
	nmtui

cpu:
	sudo cpupower-gui
