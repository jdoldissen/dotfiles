#!/bin/env zsh

for file in ~/.shell_{aliases,functions,exports,options,extras}; do
	if [[ -r "$file" ]] && [[ -f "$file" ]]; then
		source "$file"
	fi
done
