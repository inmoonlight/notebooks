notebook=$1  # notebooks/${title}.ipynb
filename=$(cut -d '.' -f1 <<< "$(cut -d '/' -f2 <<< $notebook)")
echo "Append ${filename} to README.md"
readme="README.md"

echo "- [$filename]($notebook)" >> $readme  # git support relative path
