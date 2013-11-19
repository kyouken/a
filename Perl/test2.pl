#!/usr/bin/perl

%fruit = (
    "red" => "apple" , 
    "yellow" => "banana"
) ; 


#print $fruit{"red"} , "\n" ; 
#print ${fruit{"yellow"}} , "\n" ; 

#@keyList = keys(%fruit) ; 
#@valueList = values(%fruit);

#print "@keyList" , "\n" ; 
#print "@valueList" , "\n" ; 

delete  $fruit{"red"} ; 
@valueList = values(%fruit);
print "@valueList" , "\n" ; 



