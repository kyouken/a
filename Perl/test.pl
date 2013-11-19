#!/usr/bin/perl

sub func_print {
    @ARGS = @_;
    print "@ARGS" , "\n";
}


@week = ( 'A' , 'B'  , 'C') ; 

push(@week , 'D');
func_print ( @week ) ; 

pop(@week) ; 
func_print ( @week ) ;

unshift(@week , "D" ) ;
func_print ( @week)  ;

shift( @week ) ; 
func_print (@week) ; 

reverse( @week) ; 
func_print (@week);

@num = ( 1 , 4 , 5 , 7 , 2 , 3 , 4 ) ; 
@num = sort( @num ) ;
func_print (@num);


