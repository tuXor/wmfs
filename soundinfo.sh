#!/bin/sh
amixer get Master | grep "Mono:" | awk '{print $4}' | grep -Eo "[0-9]+"

