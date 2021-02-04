notebook=$1  # html/${title}.html

filename=$(cut -d '.' -f1 <<< "$(cut -d '/' -f2 <<< $notebook)")
echo "Append ${filename} to README.md"
readme="README.md"
my_nb_page="https://inmoonlight.github.io/notebooks"

echo "- [${filename}](${my_nb_page}/${notebook})" >> ${readme}  # git pages
