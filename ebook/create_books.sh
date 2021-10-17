#!/bin/bash
#ebooks creation script v2.0

HONKIT="$PWD/node_modules/honkit/bin/honkit.js"

#Books can be regenerated for one or many languages
#Just specify them as arguments

BOOKS="$@"

if [ $# -lt 1 ]; then
  echo 1>&2 "Building all books"
  BOOKS="en-US zh-CN fr-FR"
fi

sed -i -e 's|2012 - [2][0-9][0-9][0-9]|2012 - '$(date '+%Y')'|g' cover_template.svg # Insert current year into book cover
grep -r Copyright cover_template.svg
echo -e "\nDeleting old generated files if they exist"
rm *.epub *.mobi *.pdf || true

for l in $BOOKS
do
	echo -e "\nStaging files for book creation"
	cp -a ../$l/. ../ebook/temp/
	cp -a ../en-US/images ../ebook/temp/images
	cp -a honkit-$l/. ../ebook/temp/
	cd temp/
	echo -e "\nAdjusting text to fetch images in subfolder images"
	for i in *.md; do
		sed -i 's/..\/en-US\/images/images/g' $i
	done
	echo -e "\nRemoval of the front matter in summary page"
	sed -i '/---/d;/published: false/d' SUMMARY.md
	echo -e "\nGenerating $l epub..."
	$HONKIT epub ./ ../design-with-fontforge_$l.epub
	echo -e "\nGenerating $l mobi..."
	$HONKIT mobi ./ ../design-with-fontforge_$l.mobi
	echo -e "\nGenerating $l pdf..."
	$HONKIT pdf ./ ../design-with-fontforge_${l}_precompressed.pdf
	echo -e "\nOptimizing PDF size..."
	gs -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -sOutputFile=../design-with-fontforge_$l.pdf ../design-with-fontforge_${l}_precompressed.pdf
	rm ../design-with-fontforge_${l}_precompressed.pdf
	echo -e "\ncleanup of temporary files"
	rm -rf *
	cd ..
done

git checkout cover_template.svg

echo  "Done."
