#!/bin/sh

EXEDIR="$(dirname "$0")"
EXEDIR="$(cd "$EXEDIR"; pwd)"

"$EXEDIR/blockcheck.sh" 2>&1 | tee "$EXEDIR/../blockcheck.log"
# windows 7 notepad does not view unix EOL correctly
unix2dos "$EXEDIR/../blockcheck.log"
