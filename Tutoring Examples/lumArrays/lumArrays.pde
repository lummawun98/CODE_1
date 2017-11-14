//String names[] = { "Neil", "Vivian", "Andrew", "Jeana"} ;
////names = sort(names) ;
////println(names[0], names[1], names[2], names[3]) ;
//names = sort(names, 4) ;
//println(names[0], names[1], names[2], names[3]) ;

//int myNumber ;
//float myOtherNumber = 10.0 ;
//int[] myNumbers = new int[10] ;
//int[] myArray = {0,1,2,3,4,5,6,7,8,9} ;
//String [] myStrings = {"HELLO!"} ;
//char [] myCharacters = {'H', 'E'} ;

int[] myNumbers = new int [100] ;
for(int i=0; i<100; i++){
  myNumbers[i] = i * int(random(2, 100)) ;
  println(myNumbers[i]) ;
}