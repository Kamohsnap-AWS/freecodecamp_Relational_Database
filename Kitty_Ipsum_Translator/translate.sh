#!/bin/bash
# Translates kitty_ipsum to doggy_ipsum

cat $1 | sed -E 's/catnip/dogchow/g; s/cat/dog/g; s/meow|meowzer/woof/g;'
