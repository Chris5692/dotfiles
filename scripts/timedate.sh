#!/bin/bash

#date | awk '{print $3" "$2" "$1}'			## Print date 
date | awk '{print $5" "$6}'				## Print time
#date | awk '{print $3" "$2" "$1" "$5" "$6}'		## Print time and date
