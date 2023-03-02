void main(){
  printName("tram", "Truong" , middiename: "Dinh",number:10 ); // String? có thể truyền hoặc không , nhưng khi truyền phải có tên biến middiename :
  var a  = sumUp(1);
  print(a);
  
  TestWidget tw1 = new TestWidget(width: 100, height: 100);
  print(tw1);

  TestWidget tw2 = new TestWidget.ctt1("OKOK",width: 200, height: 100 );
  print(tw2);
}

void printName (String fname , String lname , {String? middiename , required int number}){ // khi có từ khóa required thì dù có là string?  cũng phải truyền tham số nếu không sẽ báo lỗi
  print("$fname ${middiename ?? ''} $lname");
}
int sumUp(int a,[ int b =1 , int c =2 , int d =3]){ // các số được đặt cố định trong ngoặc [] , có thể truyền tham số đè lên khi có dấu ? thì có thể đặt là null
  return(a+b+c+d);
}
class TestWidget{
  int width;
  int height;
  String? sLable;
  TestWidget({required this.width , required this.height}); // khởi tạo nhưng bình thường cũng được , nhưng ở đây thường khởi tạo như này
  TestWidget.ctt1(this.sLable,{required this.width , required this.height});

  @override
  String toString() {
    return 'TestWidget{width: $width, height: $height, sLable: $sLable}';
  } // khi có thêm hàm khởi tạo mới phải "." cho nó một cái tên

}