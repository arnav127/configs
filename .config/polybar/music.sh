echo -n '🎵 '
playerctl metadata xesam:artist | tr -d '\n'
echo -n ' - '
playerctl metadata xesam:title
