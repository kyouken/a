#!/usr/bin/perl

# 標準出力
#print "Hello World \n";
#print "Hello World2 " , "\n" ; 


# 四則演算
#my $x = 10 + 3 ; 
#my $y = 10 * 20;
#my $z = 10 / 4 ;
#print "${x}-${y}-${z}\n";


# 配列
@week = ( "SUN" , "MON" , "THU" , "WEB" , "THR" , "FRI" , "SAT" ) ;
#print "$week[0]\n";
#print "@week" , "\n" ; 
#print @week , "\n"  ; 

#my $arrayNum = @week; 
#print $arrayNum , "\n" ; 
#my $arrayNum = "@week" ; 
#print $arrayNum , "\n" ; 


# 配列の足し合わせ
#@fruit = ( "apple" , "orange" , "banana" ) ;
#@fruit = ( "@fruit" , "meron" ) ; 
#print "@fruit" , "\n" ; 


# Linux コマンドの呼び出し

# [1] exit code 有
#my $return_value = system "ls -ltr | grep ex" ; 
#print $return_value , "\n" ; 
#
#print "----------------\n" ; 
#
# [2] exit code 無
#$return_value = `ls -ltr | grep ex` ; 
#print $return_value , "\n" ; 


# 制御構文
#my $var = B  ; 
#if ( $var ne A ) {
#   print "Aです\n" ;
#} elsif ( $var ne B ) {
#   print "Bです\n" ; 
#}else {
#   print "どちらでもない\n" ; 
#}

# for
#@week = ( 'Sun' , 'Mon' , 'Tue' , 'Web' , 'Thu' , 'Fri' , 'Sat' ) ; 
#foreach $value ( @week ) {
#    print  $value , "\n" ; 
#}
#
#for ( $i = 0 ; $i < 7 ; $i++ ) {
#    print "[${i}] $week[${i}] \n";
#}



# File Open
#open ( FILE_TEST , 'test.dat' ) ; 
#while ( <FILE_TEST> ) {
#    print $_  ; 
#}
#close ( FILE_TEST ) ;


#print "\n\n" ; 


# File Write
#open TEST_FILE2 , "> dist.dat"  ; 
#print TEST_FILE2 "hoge" ; 
#close ( $TEST_FILE2 ) ;


# File Reader Practice
#my $counter = 0;
#@ARGS = ` find . -type f ` ; 
#
#foreach $file_name ( @ARGS ) { 
#    
#    print "\n\n";
#    print  "${file_name}" ; 
#    print "-----\n" ; 
#
#    open FILE , "<${file_name}" or die "File Open Error. \n";
#    while ( <FILE> ) {
#        $counter++;
#        print "${counter} : $_";
#    }
#    close FILE;
#    
#    $counter = 0 ;
#}


# File Writer
#@data = ( "A" , "B" , "C" ) ;
#open FILE , ">./test2.txt" or die "Can't Open File.\n" ; 
#foreach $item ( @data ) {
#    print FILE "${item}\n" ; 
#}
#close FILE;


# Function
#sub func_test { 
#   my ( $arg1 , $arg2 ) = @_ ; 
#   return $arg1 + $arg2 ;
#}
#
#print func_test(1,2) , "\n" ;

# Function2
sub func_args {
    @ARGS = @_;
    foreach $arg ( @ARGS ) {
        print $arg ; 
    }
}

func_args(`find . -type f`);





