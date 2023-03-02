import 'dart:io';

void main (){
  print("Hello Quan ngu");
  // biến
  int number = 1;
  String quan = "Hello Quan ngu";
  print(number);
  print(quan);
  // cách nối chuỗi 
  String quan1 = "Hello Quan ngu" + number.toString(); // cách 1
  print(quan1);
  String quan2 = "Hello Quan ngu $number"  ; // cách 2
  print(quan2);
  // cách khai báo biến tiếp
  var number1 = 2; // ta gắn dữ liệu nào thì kiểu dữ liệu theo đó nếu sử dụng var
  inLinhTinhRa();
  var quan3 = "Hello Quan ngu ${noiChuoiVsHam()}";
  print(quan3);


  //Mảng trong dart
  var list = [4,2,3,1];
  List<int> list1 = [1,2,3,4,5]; // 2 kiểu khai báo này là như nhau
  print("cac gia tri cua list : $list" );
  print("cac gia tri cua list1 : $list1" );
  list1[0] = 0;
  list.sort(); // sắp xếp mảng
  print("List khi duoc sap xep tang dan: $list");
  list.sort((a ,b )=> b.compareTo(a)); // sap xep giam dan khi b.compareTo(a) và ngược lại
  print("List khi duoc sap xep giam dan: $list");

  list1.add(6);
  print("gia tri cua list1 sau khi thay doi: $list1" );
  var list2 = {"gt1","gt2","gt3"};
  list2.add("gt1");
  print("gia tri cua list2 : $list2" );// các giá trị trong list {} có tính duy nhất

  const a = 1;
  final b =1 ;  // 2 cách này là như nhau , gắn cố định a =1 ko cho phép thay đổi



  // khi gán một biến có giá trị bằng null phải đặt dấu hỏi chấm sau kiểu dữ liệu
  int? v;
  v= null;
  String? p = null;
  print("$v ,$p");
  // sử dụng từ khóa late để khai báo biến nhưng sẽ gắn giá trị cho biến đó sau
  late String m ;
  m = "Quy ngu";
  print("$m");

  stdin.readLineSync(); // nhập 1 số từ bàn phím
}
void inLinhTinhRa(){
  print("In linh tinh ra nay");
}
String noiChuoiVsHam(){
  return "Noi chuoi thu nay thang Quan ngu";
}