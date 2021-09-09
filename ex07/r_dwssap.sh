#!/bin/sh
 cat /etc/passwd | sed '/^#/d' | cut -d ':' -f1 | tail -n+2 | rev | sort -r | awk 'NR>=ENVIORN["FT_LINE1"] && NR<=ENVIRON["FT_LINE2"]'|paste -sd ',' - | sed 's/ /,/g' |sed 's/$/./' |tr -d '\n'
