#test if particular folder exists or not in current directory
file1= mkdir def
[ -d "$file1" ] && echo "Directory exists."

#if its doesn't exists then create it
 [ ! -d "abc" ] && mkdir abc
