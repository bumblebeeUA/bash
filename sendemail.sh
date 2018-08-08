#!/bin/bash

#simple way of create 3 files
#touch 1.txt
#touch 2.txt
#touch 3.txt
#!/bin/bash

create_files () {
#       i=1;
        end=$1;
        for ((i; i<3; i++))
        do
        touch file${i}.txt
done
}

create_files



#now we wrap all files in .tar
tar -cvf archive.tar file.txt file1.txt file2.txt

#remove non .tar files
rm file.txt file1.txt file2.txt

#create variable hostname
myhost=$(hostname)

#create variable which contains date of generation files
MY_DATE=$(ls -l archive.tar | awk '{ print $6" "$7 }')

#echo $MY_DATE
#date_output=$MY_DATE | awk '{ print $6" "$7 }'
#echo $date_output

#in next line I sen email with attachment to recipitant
echo "New report was generated by $myhost" | mutt -a "/home/user/bash/archive.tar" -s "Report $MY_DATE" -- anton.ryabchenko.92@gmail.com antonr@i.ua oleksandr.sechko@gmail.com dimdema92@gmail.com
