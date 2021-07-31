

function masterid(){ 
    echo Enter ID
read ID

lynx -dump -nolist http://oeis.org/search?q=id:$ID >groovy.txt

echo The requested sequence name is
namebeg=18
nammo="$(grep -n "Formerly" groovy.txt | grep -Eo '^[^:]+')"
namend=$((nammo-1))
sed -ne "${namebeg},${namend}p" groovy.txt


nammo="$(grep -n "Formerly" groovy.txt | grep -Eo '^[^:]+')"
nammo=$((nammo+2))
namm2="$(grep -n "(list; graph" groovy.txt | grep -Eo '^[^:]+')"
echo The integer sequence is: 
sed -ne "${nammo},${namm2}p" groovy.txt

namm2="$(grep -n "; graph" groovy.txt | grep -Eo '^[^:]+')"


rm groovy.txt
}
function idname(){
echo enter name 
read name

curl "https://oeis.org/search?q=$name&sort=&language=english&go=Search" -o search1.txt
num=$(grep -o 'internal' search1.txt | wc -l)
numf=$((num/2))
echo There is or are : $numf occurences
echo ID is the value beginning with A in
sed -n '/internal/p' search1.txt | head -$numf
echo Note down ID and go to Home and choose 1 to get data on chosen sequence

rm search1.txt
}


function idnumber(){
echo Enter numbers followed by space
read val
val="${val// /%2C}"
smp="%2C"
valf="$val$smp"

curl "https://oeis.org/search?q=$valf&language=english&go=Search" -o search.txt 

 num=$(grep -o 'internal' search.txt | wc -l)
 numf=$((num/2))

echo There are $numf occurences

echo ID is the value beginning with A below
sed -n '/internal/p' search.txt | head -$numf
echo Note down ID and go to Home and choose 1 to get data on chosen sequence

rm search.txt
}


function refrns(){
echo Enter ID
read rID

lynx -dump -nolist http://oeis.org/search?q=id:$rID >groovy.txt

refo="$(grep -n "REFERENCES" groovy.txt | grep -Eo '^[^:]+')"
linko="$(grep -n "LINKS" groovy.txt | grep -Eo '^[^:]+')"


linko=$((linko-1))
sed -ne "${refo},${linko}p" groovy.txt

rm groovy.txt
}

function helptext(){
  echo OEIS is the abbreviation of Online Encyclopedia of Integer Sequences
  echo Each integer sequence has a unique ID through which info about the sequence is extracted.
  echo This script lets you get the name and sequece from the ID.
  echo It also helps you to get the IDs of sequences from a search query that can take name of few terms of the sequence.
  echo An ID is of the form AXXXXXX where XXXXXX  is a six digit number.
  echo When a search query is attempted using name or terms, one or more IDs may be shown.
  echo If there are too many possibilities, first 10 will be displayed
  echo In all cases, you must note down the ID of required sequence and enter it
  echo This script can also get references when ID is given.
  echo Enter 0 to quit  Other integer to visit home
}


#MAIN
flag=1
while [[ "$flag" != "0" ]]
do
  echo "Enter 1 for inserting ID and getting name and sequence ,"
  echo "2 for inserting name and getting ID and sequence"
  echo "3 for inserting some terms and getting ID"
  echo "4 for inserting ID and getting references"
  echo "5 for help"
  echo "0 to exit"
  read flag
  if [ "$flag" == "1" ]
  then 
      masterid
      echo Enter 0 to quit Other integer to visit home
  fi 
  if [ "$flag" == "2" ]
  then 
      idname
       echo Enter 0 to quit Other integer to visit home
  fi
  if [ "$flag" == "3" ]
  then 
      idnumber
       echo Enter 0 to quit Other integer to visit home
  fi
  if [ "$flag" == "4" ]
  then 
      refrns
      echo Enter 0 to quit Other integer to visit home
  fi

  if [ "$flag" == "5" ]
  then 
      helptext
  fi

  read flag
done
echo Thank You
