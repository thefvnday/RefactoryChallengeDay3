import 'dart:io';
import 'dart:math';

//deretfibbonchi
/*
int fib(int n) {
  if (n < 2) {  //base case
    return n;
  }
  return fib(n - 2) + fib(n - 1);  //recursive case
}

void main() {
  int n;
  
  String output ="";
  for (int n=1 ; n<=10 ; n=n+1){
    output += fib(n).toString()+ ",";
  }
  print(output+ "...");

  print("Check deret Fibbonachi?");
  String inTemp = stdin.readLineSync()!;
  
  try {
    n = int.parse(inTemp);
  } on FormatException {  
    print("Bukan bilangan integer");
    return;
  }
  
  print("fib($n) = ${fib(n)}");
}
*/

//___________________________________________________________________________________________

//palidrome
/*
void main(List<String> arguments) {
 print('Masukkan angaka atau huruf :');
    String? original =  stdin.readLineSync();
  
   // gunakan string? reverse untuk membalikkan data
   String? reverse = original!.split('').reversed.join('');
  // membandingkan data antara
  if(original == reverse)
  {
    print(' Palindrome');
  }else{
    print(' Bukan Palindrome');
  }
}
*/

//____________________________________________________________________________
//capitalize sentence
/*
void main(List<String> arguments) {
  final name = "fandy ahmad irianto";
   final Myname = name
       .split(" ")
       .map((e) => e.replaceFirst(String.fromCharCode(e.codeUnitAt(0)),
           String.fromCharCode(e.codeUnitAt(0)).toUpperCase()))
       .join(" ");
   print(Myname); 
}
*/

//________________________________________________________________________________________
// random string based on value of argument

void main() {
  print(getRandomString);  // 5GKjb
  print(getRandomString(10)); // LZrJOTBNGA
  print(getRandomString(15)); // PqokAO1BQBHyJVK
}
String getRandomString(int len) {
  
  int r = int.parse(stdin.readLineSync()!);  Random();
  const _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  return List.generate(len, (index) => _chars[r.nextInt(_chars.length)]).join();
}