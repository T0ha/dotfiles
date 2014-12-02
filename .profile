PATH="~/bin:/usr/local/heroku/bin:$PATH"
export BROWSER='chromium'

# Plumb files instead of starting new editor.
EDITOR=E
unset FCEDIT VISUAL

# Get rid of backspace characters in Unix man output.
PAGER=nobs

# Equivalent variables for rc(1).
home=$HOME
prompt="$H=;          "
user=$USER

# MPD daemon start (if no other user instance exists)
[ ! -s ~/.mpd/pid ] && mpd

#Run additional things
9 plumber
