#if [ -d /etc/X11/xinit/xinitrc.d ] ; then
#	for f in /etc/X11/xinit/xinitrc.d/* ; do
#		[ -x "$f" ] && . "$f"
#	done
#	unset f
#fi
#export LANG=ru_RU.UTF-8

setxkbmap -layout 'us,ru' -option 'grp:ctrl_shift_toggle'

xrandr --output LVDS  --mode 1600x900 --primary
xrandr --output VGA-0 --mode 1920x1080 --left-of LVDS

case $1 in
    kde)
	exec startkde
	;;
    e17)
	exec ssh-agent enlightenment_start
	;;
    awesome)
	
	exec ssh-agent /usr/bin/awesome >> ~/.cache/awesome/stdout 2>> ~/.cache/awesome/stderr

	;;
    i3)
	exec ssh-agent i3
	;;
    *)
	exec ssh-agent i3
	;;
esac
