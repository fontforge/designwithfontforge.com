#!/bin/bash
echo "Staging files for book creation"
echo
cp -a ../en-US/. ../ebook/temp/
cp -a gitbook-en-US/. ../ebook/temp/
cd temp/
echo "Generating en-US epub..."
echo
gitbook epub ./ ../design-with-fontforge_en-US.epub
echo
echo "Generating en-US mobi..."
echo
gitbook mobi ./ ../design-with-fontforge_en-US.mobi
echo
echo "Generating en-US pdf..."
echo
gitbook pdf ./ ../design-with-fontforge_en-US.pdf
echo
echo "cleanup of temporary files"
echo
rm -rf *
cd ..
echo "Staging files for book creation"
echo
cp -a ../fr-FR/. ../ebook/temp/
cp -a ../en-US/images ../ebook/temp/images
cp -a gitbook-fr-FR/. ../ebook/temp/
cd temp/
echo
echo "Adjusting text to fetch images in subfolder images"
echo
for i in *.md; do
    sed -i 's/..\/en-US\/images/images/g' $i
done
echo "Generating fr-FR epub..."
echo
gitbook epub ./ ../design-with-fontforge_fr-FR.epub
echo
echo "Generating fr-FR mobi..."
echo
gitbook mobi ./ ../design-with-fontforge_fr-FR.mobi
echo
echo "Generating fr-FR pdf..."
echo
gitbook pdf ./ ../design-with-fontforge_fr-FR.pdf
echo
echo "cleanup of temporary files"
echo
rm -rf *
cd ..
echo "Staging files for book creation"
echo
cp -a ../zh-CN/. ../ebook/temp/
cp -a ../en-US/images ../ebook/temp/images
cp -a gitbook-zh-CN/. ../ebook/temp/
cd temp/
echo
echo "Adjusting text to fetch images in subfolder images"
echo
for i in *.md; do
    sed -i 's/..\/en-US\/images/images/g' $i
done
echo "Generating zh-CN epub..."
echo
gitbook epub ./ ../design-with-fontforge_zh-CN.epub
echo
echo "Generating zh-CN mobi..."
echo
gitbook mobi ./ ../design-with-fontforge_zh-CN.mobi
echo
echo "Generating zh-CN pdf..."
echo
gitbook pdf ./ ../design-with-fontforge_zh-CN.pdf
# uncomment if needed.  For an unknown reason Gitbook produces a 52 MB file size for the Chinese PDF.
# This command will optimize its size by reducing to 10 MB
#gs -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -sOutputFile=design-with-fontforge_zh-CN.pdf design-with-fontforge_zh-CN.pdf
echo
echo "cleanup of temporary files"
echo
rm -rf *
cd ..

