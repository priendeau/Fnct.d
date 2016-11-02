### Awk-script that return Nb nanosecond in 
### Unix-timestamp
### Take Argument $1 and $2
### file : GODDateToNS.awk 
### $1, unix timestamp format supplied 
### $2, nb nanosecond supplied
### a parameter DateSupplied may be 
### gived to the script In unix-timestamp format
### to Start the nb nanosecond since EPOCH to 
### JS2000, EPIC... must be EPIC time in 
### Unix-time format or EPIC in Unix-time format  
BEGIN{
IntDateSupplied=DateSupplied ; 
UnitCalcRef=UnitRef ;

### Referece to convert the in NanoSecond, if UnitRef is used it can
### change the result, like basing the Number of sec since unix-timestamp
### count in Millisec rather than sec, UnitRef will hold 1000 instead. 
if ( UnitRef == "" )
 { 
  UnitCalcRef = 1000000000 ; 
 }

if ( DateSupplied == "" )
 { 
  IntDateSupplied = 0 ; 
 }
if ( DateSupplied == "now" )
 { 
  IntDateSupplied = 0 ; 
 }
  
}
{
 
 DateCalc=( ( $1 * UnitCalcRef ) + $2 ) - ( IntDateSupplied*UnitCalcRef ) ; 
 printf("%i\n",DateCalc) ; 
}END{}
