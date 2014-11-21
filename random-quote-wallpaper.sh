SIZE=1920x1080
BG_COLORS_FILE=$HOME/Wallpapers/bg-colors.txt
TEXT_COLORS_FILE=$HOME/Wallpapers/text-colors.txt
QUOTES_FILE=$HOME/Wallpapers/quotes.txt
TARGET_FILE=$HOME/Wallpapers/quote.png

BG=`shuf -n 1 $BG_COLORS_FILE`
FILL=`shuf -n 1 $TEXT_COLORS_FILE`
QUOTE=`shuf -n 1 $QUOTES_FILE`

convert -size $SIZE xc:$BG -fill "$FILL" -pointsize 66 -gravity "Center" -draw "text 1,0 '$QUOTE'" $TARGET_FILE
gsettings set org.gnome.desktop.background picture-uri "file://$HOME/blank.png"
sleep 1.5 
gsettings set org.gnome.desktop.background picture-uri "$TARGET_FILE"
