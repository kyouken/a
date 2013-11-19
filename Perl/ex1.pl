#!/usr/bin/perl

# print "Hellow World!\n";
# print "Hellow Horld" , "\n";

#my $x = 10 + 3 -1 ;
#my $y = 10 * 3 ;
#my $z = 10 / 2 ;
#print "${x}-${y}-${z}\n";
#print "${x}-${x}-${x}" , "\n";

#----------------------------------------------------------
#@week = ("Sun" , "Mon" , "Thu" , "Web" , "Thr" , "Fri" , "Sat" );
#要素を一つ表示
#@print "[0]$week[0]" , "\n";
#
#要素を全部表示
#print "[1]@{week}\n";
#
#要素の個数を表示
#my $num = @week;
#print "[2]${num}個\n";
#----------------------------------------------------------

#----------------------------------------------------------
#@fruit = ("apple" , "orange" , "banana" );
#@fruit = ( @fruit , "grape" );
#print "@{fruit}" , "\n";
#----------------------------------------------------------


#----------------------------------------------------------
#配列の出力の仕方の違い
#@fruit = ( "apple" , "orange" , "banana" ) ;
#print @fruit   , "\n" ; #appleorangebanana
#print "@fruit" , "\n" ; #apple orange banana
#----------------------------------------------------------


#----------------------------------------------------------
# Linuxコマンドの実行
my $return_value = system "ls -ltr | grep ex";
print $return_value , "\n" ; 

my $return_value = `ls -ltr | grep ex`;
print $return_value , "\n" ; 
print $? , "\n" ; 
#----------------------------------------------------------

