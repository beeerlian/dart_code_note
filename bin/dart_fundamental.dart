import 'dart:io';

void user_input(){
  //Untuk melakukan input dan output, gunakan stdin.readLineSync()
  print('Nama Anda : ');
  var name = stdin.readLineSync();
  print('Usia : ');
  var age = int.parse(stdin.readLineSync()!);
  print('Halo $name, Usian anda $age tahun');
}

void konversi(){
  //String to int
  var eleven = int.parse('11');

  //String to double
  var elevenPointTo = double.parse('11.2');

  //int to String
  var elevenAsString = 11.toString();

  //double to String
  var phiAsString = 3.14159.toStringAsFixed(2);//konversi menjadi double dengan dua digit dibelakang koma

  print('1. String to int => $eleven');
  print('2. String to doubl => $elevenPointTo');
  print('3. int to String => $elevenAsString');
  print('4. double to String => $phiAsString');
}

void serba_serbi_string(){
  // tanda \' digunakan untuk menunjukan bahwa tanda ' ini merupakan bagian string, bukan pembatasnya
  print('"Saya fikir dia pernah bilang \'hei kamu!!\'"');

  // tanda $ sebagai interpolation
  var name = 'opal';
  print('\nHello $name, how are you?');
  print('1 + 1 = ${1 + 1}\n');
  /*
  penggunaan huruf r membuat dart menganggap String sebagai raw
  sehingga akan mengabaikan interpolation ($)
  */
  print(r'Dia membeli mobil seharga $8000');

  /*Selain itu kita bisa menambahkan UNICODE kedalam string
  dengan menggunakan ekspresi \uXXXX dimana XXXX adalah nilai hexadesimal*/

  print('\nHi I \u2665 U');
}

void latihan_exepction(){
  /*exception = kondisi dimana program berjalan error
  contoh ketika kita membagi bilangan bulat dengan nol, ini akan error
  untuk mengatasi hal itu kita akan menggunakan try*/
  try {
    var a = 9;
    var b = 0;
    print(a~/b);
  }on IntegerDivisionByZeroException {
    print('bilangan tidak bisa dibagi dengan 0');
  }
  /*menggunakan on IntegerDivisionByZeroException karna itu merupakan pesan error
  yang akan muncul jia=k kita merunning program tanpa try*/

  /*untuk exception yg tidak diketahui errornya secara spesifik
  maka kita meggunakan try and catch */
  try {
    var a = 7;
    var b = 0;
    print(a~/b);
  } catch (e) {
    print('Exception yang terjadi : $e');
  }
  /*ada juga blok finally, blok ini akan tetap dieksekusi 
  tanpa peduli apapun hasil yang terjadi pada blok try catch */
  try {
    var a = 7;
    var b = 0;
    print(a~/b);
  } catch (e, s) {
    print('Exception yang terjadi : $e');
    print('Stack trace : $s');
  }finally{
    print('baris ini tetap dieksekusi');
  }

}

void latihan_konversi_suhu(){
  stdout.write('masukan suhu dalam fahrenheit : ');
  var fah = num.parse(stdin.readLineSync()!);
  var celsius = ((fah - 32)*5/9).toStringAsFixed(3);
  print('hasil konversi $fah fahrenheit menjadi $celsius celsius');
}

void parent_function(){
  var a = 7;
  var b = 6;
  print('rata rata dari $a dan $b adalah ${average(a, b)}');

  named_optional_parameter(verified : true, name : 'opal', age : 20);
}
double average(num num1,num num2) => (num1 + num2) / 2;
/*karna menggunakan arrow syntax => maka return tidak perlu ditulis */

void named_optional_parameter({String? name, int? age, bool? verified})=> print('nama : $name\nusia : $age\nVerified : $verified');

void null_safety(){
  /*sebuah variabel tidak boleh bernilai null, kecuali kalupun nilainya boleh null
  maka harus dideklarasikan dengan tanda ? */

  // int usia = null; akan error
  int? usia = null;

  // jika kita memiliki variabel nullable maka ketika menggunakan
  // variabel tersebut harus melakukan null check dengan tanda !

  if(usia! < 20){
    print('masih remaja');
  }
}