#!/bin/bash
# Filter out http-links, #hashtags, @tags, punctuation (except apostrophe) and convert all to lowercase, strip leading and trailing spaces
cat unfiltered.data | sed -re 's/^(" )?RT[^:]*: //' -e 's/[@#][^[:space:]]*//g' -e 's/http[s]?:\/\/[^[:space:]]*//g' -e 's/http|https|:\/|:\/\///g' | tr -dc 'a-zA-Z0-9[:punct:][:space:]\n' | tr -s '[:blank:]' | sed -r 's/^[^A-Za-z]*$//' | tr -dc '[:alnum:][:punct:][:space:]' | tr -s '[:blank:]' | sed -r 's/ ('"'"'[^[:space:]]+)/\1/g' | tr 'A-Z' 'a-z' | tr -cs 'a-z0-9\n'"'" ' ' | sed -re 's/^[[:space:]]*//' -e 's/[[:space:]]*$//' > filtered.data
