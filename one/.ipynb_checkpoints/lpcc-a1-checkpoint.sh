kode=$(cat code.asm)
for line in "$kode"
do
    if [[ printf "$line" | grep -q ';' ]] 
    then
        comments=$(printf "$line" | cut -d ";" -f 2)
        printf "$comments"
    fi
done