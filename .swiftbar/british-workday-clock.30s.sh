#! /usr/bin/env bash

BRITISH_HOUR="$(TZ=":Europe/London" date +"%H")"

if [[ $(date +%u) -lt 6 ]] && [[ "$BRITISH_HOUR" > 07 ]] && [[ "$BRITISH_HOUR" < 18 ]]; then
    BRITISH_TIME="$(TZ=":Europe/London" date +"%H:%M")"
    echo "🇬🇧  $BRITISH_TIME"
fi

