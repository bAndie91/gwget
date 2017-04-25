#!/bin/bash
# This script generates the msg entries missing from ".mo" files in each locales.

export TEXTDOMAINDIR=deb/usr/share/locale/
file=gwget

for langdir in "$TEXTDOMAINDIR"/*
do
	lang=`basename "$langdir"`
	grep -Pon '".+?(?<!\\)"' "$file" |\
	{
	declare -A new
	while IFS=: read -r lno text
	do
		text=`echo -n "$text" | sed -e 's/^"//; s/"$//;'`
		if [ -z "${new[$text]}" ]
		then
			msgid=${text//\\n/$'\n'}
			if [ "$(LANGUAGE=$lang gettext gwget "$msgid")" = "$msgid" ]
			then
				new[$text]=1
				echo "# file: $file, line: $lno"
				echo "msgid \"$text\""
				echo "msgstr \"\""
				echo
			fi
		fi
	done
	}
done
