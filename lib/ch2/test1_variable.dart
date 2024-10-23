import 'dart:ffi';

main(){
  //모든 변수는 객체이다
  int data1 = 11;
  print('${data1.isEven}');

  //casting... 객체의 캐스팅.. 상하위 관계에서만 논할 수 있다.
  // double data2 = data1.toDouble();
  double data2 = data1.toDouble();
  int data3 = data2.toInt();

  //string <-> int
  String data4 = '10';
  int data5 = int.parse(data4);
  String data6 = data5.toString();

  //var, dynamic
  //var은 타입 유추기법, 선언과 동시에 대입되는 값에 의해 타입이 결정된다
  var a = 10;
  a = 11;
  // a = "Hello";

  //dynamic 타입 없다, 다른 언어에서 any처럼 모든 타입의 데이터 대입 가능
  dynamic b = 10;
  b = "Hello";

  //var은 대입되는 값으로 타입 유추, 선언과 동시에 값 대입이 없다면 dynamic 타입으로 유추
  var c;
  c = 10;
  c = "hello";
  print(c);

  print(a);

  List<int> list1 = [10,20,30,40];
  // list1.add("12");
  list1.add(40);
  print(list1);

  list1.forEach((element){
    print(element);
  });
  
  List list2 = List.filled(3, null);
  print(list2);
  list2[1] = 10;
  //filled 생성자로 만들면서 사이즈를 고정했기 때문에 add 오류 발생.( ~ fixed-length ~ )
  // list2.add(20);
  print(list2);

  Map map1 = {1:10,'one':'hello',30:'EWek'};
  print(map1['one']);

}

greet(){

}