#!/usr/bin/perl

#------------------------------------
#[1] 標準出力
#------------------------------------
print "Hello World ! " , "\n" ;
print "Hello World \n" ;

#-----------------------------------
#[2] 四則演算
#-----------------------------------
my $x = 10 + 3 ; 
my $y = 10 * 20 ;
my $z = 10 / 4 ;
print "${x}-${y}-${z}\n";

#-----------------------------------
#[3]  配列
#-----------------------------------
@week = ( "SUN" , "MON" , "THU" , "WEB" , "THR" , "FRI" , "SAT" ) ;
print "$week[0]\n" ; 
print "@week" , "\n" ; 
print @week , "\n" ; 

#-----------------------------------
#[4] 配列コピー
#-----------------------------------
my $arrayNum = @week ;
print $arrayNum , "\n" ; 
my $array = "@week" ;
print $array , "\n" ; 

#-----------------------------------
#[5] 配列の足し合わせ
#-----------------------------------
@fruit = ( "apple" , "banana" , "orange" ) ;
@fruit = ( "@fruit" , "meron" ) ;
print "@fruit" , "\n" ;

#-----------------------------------
#[6] Linuxコマンド
#-----------------------------------
#(1) exit code　有
my $result = system "ls -ltr | grep ex" ; 
print $result , "\n" ; 

#(2) exit code  無
my $result = `ls -ltr | grep ex` ;
print $result , "\n" ; 

#-----------------------------------
#[7] if文
#-----------------------------------
#(1) 文字列比較
my $var = "B" ; 
if ( $var eq "A" ) {
    print "Aです\n" ; 
} elsif ( $var eq "B" ) {
    print "Bです\n" ;           # ここ 
} else {
    print "どちらでもない\n" ; 
}

#(2)文字列比較で否定形
my $var = "A" ; 
if ( $var ne "A" ) {
    print "Aではない\n" ; 
} elsif ( $var ne "B" ) {
    print "Bではない\n" ; 
} else {
    print "どちらでもない\n" ; 
}

#(3)文字列比較で = を使う
my $var = "B" ; 
if ( $var = "A" ) {
    print "文字列Aです\n" ;  # ここに入って来てしまう（デフォルト = true） 
} elsif ( $var = "B" ) {
    print "文字列Bです\n" ; 
} else {
    print "どちらでもない" ; 
}

#(4)数字で = を使う
my $var = "2" ; 
if ( "${var}" == "3" ) {
   print "3です\n" ; 
} elsif ( "${var}" == "2" ) {
   print "2です\n" ; 
} else { 
   print "どちらでもない\n" ; 
}

#-----------------------------------
#[8] foreach文 / for文
#-----------------------------------
my @week = (  'SUN' , 'MON' , 'TUE' , 'WEB' , 'THU' , 'FRI' , 'SAT' ) ;
foreach $value ( @week ) {
    print $value , "\n" ; 
}

for ( $i = 0 ; $i < 7 ; $i++ ) {
    print $week[$i] , "\n" ; 
}

#----------------------------------
#[9] File Read
#----------------------------------
open ( FILE , "test.txt" ) ; 
while ( <FILE> ) {
    print $_ ;
}
close ( FILE ) ;

#---------------------------------
#[10] File Write
#--------------------------------
open ( TEST_FILE2 , "> test2.txt" ) ; 
foreach $value ( @week ) {
    print TEST_FILE2 "${value}\n" ; 
}
close ( TEST_FILE2 ) ;

#---------------------------------
#[11] File Reader Practice
#---------------------------------
my $counter  = 0 ;
my @ARGS = ` find . -type f ` ; 
foreach $file_name ( @ARGS ) {
    print "\n\n${file_name}\n--------------\n";

    open ( FILE , "< ${file_name}" ) or die "File Open Error. \n" ; 
    while ( <FILE> ) {
        $counter++;
        print "${counter} : $_";
    }
    close ( FILE ) ; 

    $counter = 0 ; 
}

#-------------------------------
#[12] File Writer
#-------------------------------
my @data = ( "A" , "B" , "C" ) ; 
open ( FILE , "> test3.txt" ) or die "Can't Open File.\n" ; 
foreach $item ( @data ) {
    print FILE "${item}\n" ; 
}
close ( FILE ) ; 

#------------------------------
#[13] Function 
#------------------------------
sub func_test {
    my ( $arg1  , $arg2 ) = @_ ; 
    print $arg1 , "\n" ; 
    print $arg2 , "\n" ; 
}
func_test( "hoge" , "fee" ) ;

sub func_test2 {
   my @ARGS = @_ ; 
   foreach $value ( @ARGS ) {
       print $value  ; 
   }
}
func_test2( ` find . -type f` ) ; 

