# $1 = system, $2 = emulator, $3 = rompath, $4 = command
 
# mupen64plus stand-alone remaps
if [[ "$2" == mupen64plus-* ]]; then
    inputcfg="/opt/retropie/configs/n64/InputAutoCfg.ini"
    if [[ -f "$inputcfg.swap" ]]; then
        mv -f "$inputcfg.swap" "$inputcfg"
    fi
fi