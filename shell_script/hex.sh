#!/bin/bash 

###################################################################
#Script Name	: Hex.sh                                                                                             
#Description	: Receive and print hexadecimal numbers                                                                                
#Args           : '%X' -> Hexadecimal                                                                             
#Author       	: Azabell                                        
#Email         	: jeewoo19930315@gmail.com                                           
###################################################################

Msg () {
 for i
 do echo "$PN: $i" >&2
 done
}
Fatal () { Msg "$@"; exit 66; }
PrintBases () {
 for i
 do
 	case "$i" in
 	0x*|[a-f]*|[A-F]*) ibase=16;; # 16진수
	*)
	
	Msg "부적절한 숫자($i)라 무시합니다."
 esac
 number=`echo "$i" | sed -e 's:^0[bBxX]::' | tr '[a-f]' '[A-F]'`
 dec=`echo "ibase=$ibase; $number" | bc`
 case "$dec" in
	 [0-9]*) ;;
 *) continue;;
 esac
 echo `bc <<!
 obase=16; "hex="; $dec
!
` | sed -e 's: : :g'
 done
}
while [ $# -gt 0 ]
do
 case "$1" in
 --) shift; break;;
esac
 shift
done

if [ $# -gt 0 ]
then
 PrintBases "$@"
else
 while read line
 do
 PrintBases $line
 done
fi


