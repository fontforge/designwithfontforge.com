#!/bin/bash
#ebooks creation script v2.0

#Books can be regenerated for one or many languages
#Just specify them as arguments


for i in *.md; do
		sed '/layout: bookpage_zh-CN/c\
		lang: zh' $i
done
