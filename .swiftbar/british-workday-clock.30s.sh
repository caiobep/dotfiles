#! /usr/bin/env bash

BRITISH_TIME="$(TZ=":Europe/London" date +"%H:%M")"

if [[ $(date +%u) -lt 6 ]] && [[ "$BRITISH_TIME" > 08:30 ]] && [[ "$BRITISH_TIME" < 18:00 ]]; then
    echo "🇬🇧  $BRITISH_TIME"
fi

