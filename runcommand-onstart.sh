# $1 = system, $2 = emulator, $3 = rompath, $4 = command
 
# mupen64plus stand-alone remaps
if [[ "$2" == mupen64plus-* ]]; then
    inputcfg="/opt/retropie/configs/n64/InputAutoCfg.ini"
    romfile="${3##*/}"
    remap="/opt/retropie/configs/n64/mupen64plus/remaps/${romfile%.*}.ini"
    if [[ -f "$remap" ]]; then
        mv -n "$inputcfg" "$inputcfg.swap"
        cp -f "$remap" "$inputcfg"
    fi
fi