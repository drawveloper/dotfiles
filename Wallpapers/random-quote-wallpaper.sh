SIZE=1720x1080
BG_COLORS_FILE=bg-colors.txt
TEXT_COLORS_FILE=text-colors.txt
QUOTES_FILE=quotes.txt
TARGET_FILE=`pwd`/wallpaper-quote.png

BG=`shuf -n 1 $BG_COLORS_FILE`
FILL=`shuf -n 1 $TEXT_COLORS_FILE`

shuf -n 1 $QUOTES_FILE | \

convert -background $BG -border 100x0 -bordercolor $BG  -size $SIZE -fill $FILL -gravity Center -pointsize 66 caption:@- $TARGET_FILE

gsettings set org.gnome.desktop.background picture-uri "file://$HOME/blank.png"

sleep 1.5 

gsettings set org.gnome.desktop.background picture-uri "$TARGET_FILE"
