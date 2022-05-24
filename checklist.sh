echo "[Flats](#Flats)" >checklist.md
echo  >>checklist.md
echo "[patches](#Patches)" >>checklist.md
echo  >>checklist.md
echo ##Flats >>checklist.md
echo  >>checklist.md
echo "|**Flat**                         | Normal                              | Specular | Brightmap | Roughness | Metallic | ao |">> checklist.md
echo "|---------------------------------|-------------------------------------|----------|-----------|-----------|----------|------------|----|" >>checklist.md
cd sources/flats
for file in *.png ; do
echo "|![$file](sources/flats/$file) | ![](materials/normalmaps/auto/$file)| ![](materials/specular/auto/$file)| ![](materials/brightmaps/auto/$file) | ![](materials/roughness/auto/$file)| ![](materials/metallic/auto/$file)| ![](materials/ao/auto/$file)">>../../checklist.md
echo "Name: **$file** | | | | | |" >>../../checklist.md
echo "Also known as: | | | | | |" >>../../checklist.md
done
cd ../..
echo  >>checklist.md
echo ##Patches >>checklist.md
echo  >>checklist.md
echo "|**Patches**                         | Normal                              | Specular | Brightmap | Roughness | Metallic | ao |">> checklist.md
echo "|---------------------------------|-------------------------------------|----------|-----------|-----------|----------|------------|----|" >>checklist.md
cd sources/patches
for file in *.png ; do
echo "|![$file](sources/patches/$file) | ![](materials/normalmaps/auto/$file)| ![](materials/specular/auto/$file)| ![](materials/brightmaps/auto/$file) | ![](materials/roughness/auto/$file)| ![](materials/metallic/auto/$file)| ![](materials/ao/auto/$file)">>../../checklist.md
echo "Name: **$file** | | | | | |" >>../../checklist.md
echo "Also known as: | | | | | |" >>../../checklist.md
done
cd ../..

pandoc -i checklist.md -o a.html
