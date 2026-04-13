import 'dart:io';

import 'package:flutter/material.dart';
void main(){
  //******* Print Out Puts or Massages
  //print('its my fist programme ');

var dartBasics=DartBasics();
dartBasics.basics();


}
class DartBasics {

   // ****************** Types o
  // f Comments in Dart ******************

  // 1 Single line Comments

  /* 2 Multiline Comment

   */

  /// 3 Documentation comment Used for Providing the Reference to Projects ,software and Packages
  ///
// ****************Function*****************
void basics() {
// **************** Variable Types **************

// **************** Dynamic Variable
// When we Dont know what type of date will receive
// if we ues the other language code we use dynamic for "Bypass "the compiler errors .

  /* dynamic name = "Abdullah khalid";
  print( "Printing the Name " "$name");
  name=3927.23;
  print( "Printing the Name " "$name");*/

 // *************** Final Variable
  // Final variable provides the flexibility to declare the value on Runtime
  final cnic;
  cnic = 392-202-232342-2;
  print(cnic);

  // *************** Const Variable
  //const variable must be initialized and declare the values on same time
  const id =4993;
  print(id);

  // ************* Operators in Dart
  // operator are the special symbols that are used to performer certain operation on operands.
  // Arithmetic operator
  int a =4;
  int b =7;

  var c;
   c= a+b;
  print("sum of (a+b)= $c");

   c= a-b;
  print("deference of (a-b)= $c");

   c= a*b;
  print("product  of (a*b)= $c");

   c= a/b;
  print("division of (a/b)= $c");

   c= a%b;
  print("modulus ro Remainder of (a%b)= $c");

   c= a~/b;
  print("Quotient of (a~/b)= $c");

  // ********** Relational Operator

  int d=4;
  int e=7;
  var f= d>e;
  print("d is greater then e (d>e) $f ");

  var g= d<e;
  print("d is greater then e (d<e) $g");

  var h= d>=e;
  print("d is greater then or Equal to  (d>=e) $h");

  var i= d<=e;
  print("d is less then or Equal to     (d<=e) $i");

  var j= d==e;
  print("d is equal to  (d==e) $j");

  var k= d!=e;
  print("d is greater then e (d!=e) $g");

  //  *********** Type test operator

   String nume = "Afganistan ";
   int cuontry_code= 93;
   print(nume is String);
   print( cuontry_code is! String);

   // ************* Bitwise Operators
  int l=6;
  int m=5;


    // Performing Bitwise AND on l and m
  var n= l&m;
   print(n);
    // Performing Bitwise OR on a and b

    // Performing Bitwise XOR on a and b


    // Performing Bitwise NOT on a

    // Performing left shift on a

    // Performing right shift on a




  // *********** Data Types
  //  *************Numbers
  int age = 25;
  double price = 99.99;
  num count = 10; // Can hold both int and double
  count = 10.5;   // This is valid for 'num'
  String name = "Gemini";
  bool IsLoading = true;
  bool IsComplete = false;



  // **************** List Data Type
  // **************** Editable list
  // Modification Metheds
  List <int> nums=[1,2];
  nums.add(3);                     // [1,2,3]
  nums.addAll([5,6]);              // [1,2,3,5,6]
  nums.insert(3 ,4);               // [1,2,3,4,5,6]
  nums.insertAll(6, [7,8]);        // [1,2,3,4,5,6,7,8]

  nums.remove(6);                  // Remove the value 6
  nums.removeAt(0);                // Remove whatever is at index 0
  nums.clear();                    // Removes everything
  nums.reversed;
  nums.length;
  nums.reversed;
  nums.isEmpty;


  // Searching Mathews
 List < String> names =['Umer ','Zarrar','Afshal  '];
 print(names.contains("Umer"));
 print(name.indexOf("Zarrar"));
 print(name.lastIndexOf("Afshal"));

//************** Maps
var countries={
  "92":"pakistan",
  "91":"india",
  "93":"afganistan",
  "53":"cuba",};

  countries['52']='mexico';

  //************ Sets


 

}


}




