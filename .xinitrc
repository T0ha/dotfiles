export PATH="$HOME/bin:/usr/local/heroku/bin:$PATH"
export BROWSER='chromium'

# Xresources handler
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# Xmodmap source
#if [ -f ~/.Xmodmap]; then
#fi

# Plumb files instead of starting new editor.
export EDITOR=vim
export PATH=/home/t0ha/.gem/ruby/2.1.0/bin:$PATH
# unset FCEDIT VISUAL

# Get rid of backspace characters in Unix man output.
export PAGER=nobs

# Equivalent variables for rc(1).
export home=$HOME
export prompt="$H=;          "
export user=$USER
export path="$PLAN9/bin:$PATH"
export shell=rc

#Run additional things
9 plumber

setxkbmap -layout 'us,ru' -option 'grp:ctrl_shift_toggle'
xmodmap ~/.Xmodmap

xrandr --output LVDS  --mode 1600x900 --primary
xrandr --output HDMI-0 --mode 1920x1200 --rate 148.5 --left-of LVDS

case $1 in
    kde)
	exec startkde
	;;
    e17)
	exec enlightenment_start
	;;
    awesome)
	
	exec /usr/bin/awesome >> ~/.cache/awesome/stdout 2>> ~/.cache/awesome/stderr

	;;
    i3)
	exec i3
	;;
    *)
	exec i3
	;;
esac
