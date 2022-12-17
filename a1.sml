(* 
Zak Kilpatrick
12/16/2022
CSC 330 001 
Winter 2023
Assignment 1
*)

fun replace ([],_,_) = nil
    | replace (x::xs,y,z) = if x=y 
        then z::replace(xs,y,z) 
        else x::replace(xs,y,z);

fun stringfun x = (fn a => a^x);


fun avg L:real =  
    let
        fun helper [] = 0.0
        | helper (x::xs) = x+helper(xs)
        val y = length(L)
        val x = helper(L)
    in  
        x/real(y)
    end;
