#search word in give file
grep -i "systemd" access.log

 
#print no of occurences
grep -c "systemd" access.log 

#calculate total no of words in a file
#file_path="/home/malini/Documents/assignment/access.log"
#awk 'BEGIN{c=0} //{c++} END{print "Number of words: ",c}' RS="[[:space:]]" $file_path


#output
#0
