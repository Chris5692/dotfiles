#!/bin/bash

date %I:%M%t%p | awk '{print $1"  "$2}'
