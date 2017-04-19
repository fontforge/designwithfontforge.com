#!/bin/bash
#ebooks creation script v2.0

#Books can be regenerated for one or many languages
#Just specify them as arguments

if [ $# -lt 1 ]; then
  echo 1>&2 "Please specify at least one language ex: en-US"
  exit 2
fi
for l in "$@"
do
	echo -e "\nStaging files for book creation"
	cp -a ../$l/. ../ebook/temp/
	cp -a ../en-US/images ../ebook/temp/images
	cp -a gitbook-$l/. ../ebook/temp/
	cd temp/
	echo -e "\nAdjusting text to fetch images in subfolder images"
	for i in *.md; do
		sed -i 's/..\/en-US\/images/images/g' $i
	done
	echo -e "\nRemoval of the front matter in summary page"
	sed -i '/---/d;/published: false/d' SUMMARY.md
	echo -e "\nGenerating $l epub..."
	gitbook epub ./ ../design-with-fontforge_$l.epub
	echo -e "\nGenerating $l mobi..."
	gitbook mobi ./ ../design-with-fontforge_$l.mobi
	echo -e "\nGenerating $l pdf..."
	gitbook pdf ./ ../design-with-fontforge_$l_precompressed.pdf
	echo -e "\nOptimizing PDF size..."
	gs -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -sOutputFile=../design-with-fontforge_$l.pdf ../design-with-fontforge_$l_precompressed.pdf
	rm ../design-with-fontforge_$l_precompressed.pdf
	echo -e "\ncleanup of temporary files"
	rm -rf *
	cd ..
done
echo  "Done."