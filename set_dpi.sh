#!/bin/bash

dpi=$(xdpyinfo | awk '
    /dimensions/ {
      pix_w = gensub(/([0-9]*)x.*/, "\\1", 1, $2);
      real_w = gensub(/\(([0-9]*)x.*/, "\\1", "g", $4);
      printf("%.0f\n", pix_w / real_w * 25.4);
    }')

xrandr --dpi $dpi
