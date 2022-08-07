#!/bin/bash
#
#   ./progress.sh
#
#   Shows animated progress bar.
#   returns 255 when progress exceeds maxprogress
#
source $(dirname $0)/../simple_curses.sh
progress=0
maxprogress=1000
main(){
    window "PROGRESS" "whit" "33%" "gray"
    progressbar 70 $progress $maxprogress "green" "gray"
    endwin
}
update(){
    sleep 0.2
    progress=$(( progress + 1))
    [ "$progress" -gt "$maxprogress" ] && return 255
    return 0
}
main_loop "$@"
