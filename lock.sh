#!/bin/bash

bgfile="$(mktemp --suffix=.png)"
locker="i3lock -c 000000 -i $bgfile -n"

# Delay in seconds. Note that by default systemd-logind allows a maximum sleep
# delay of 5 seconds.
sleep_delay=1

# Run before starting the locker
pre_lock() {
  scrot "$bgfile"
  convert "$bgfile" -scale 10% -scale 1000% -blur 0x5 "$bgfile"
  xset dpms 5 5 5
  return
}

# Run after the locker exits
post_lock() {
  rm "$bgfile"
  xset dpms 0 0 0
  return
}

pre_lock

# kill locker if we get killed
trap 'kill %%' TERM INT

if [[ -e /dev/fd/${XSS_SLEEP_LOCK_FD:--1} ]]; then
    # lock fd is open, make sure the locker does not inherit a copy
    $locker &

    sleep $sleep_delay

    # now close our fd (only remaining copy) to indicate we're ready to sleep
    exec {XSS_SLEEP_LOCK_FD}<&-
else
    $locker &
fi

wait # for locker to exit

post_lock
