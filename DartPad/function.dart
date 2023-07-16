void sayHi (String name) {
  print("Hello $name nice to meet you");
}

String immediateHi (String name2) => "Hello $name2";

//기본적으로 {}를 감싸서 named parameter를 사용하는데, 이렇게되면 Dart의 널 세이프티가 작동해서 기본적으로 에러를 띄운다(널뜨면 어케할거?)
//1. 아래와 같이 기본값을 정해줌으로써 널 세이프티를 케어할 수 있다.
//2. require modifier를 설정한다. required를 각 파라미터 앞에 붙여준다.
String sayHello({
  String name = "홍길동", 
  int age = 99, 
  String country = "somewhere"
}) {
  return "Hello $name, you are $age, and you come from $country";
}

//Positional Parameters [] 널이 될 수도 있다는 것을 포함하기 위한 파라미터 설정 잘 안쓰는거 같기도....?
String sayBye (String name, int age, [String? country = "nowhere"]) => "Bye $name, you are $age, and you come from $country";


// QQ 연산자
// 파라미터 데이터타입 뒤에 ?를 붙임으로써 null이 올 수 있음을 명시한다. 이렇게되면 toUpperCase함수의 경우 null이 올지도 모르므로 에러를 띄움
// 기본적인 솔루션으로는 안에 null이 오면 어케 처리할지 if로 처리하는 방법이 있다.
// QQ는 좌항이 null이면 우항을 리턴하고 null이 아니면 좌항을 그대로 리턴하는 연산자이다...?

String capitalizeName (String? namae) => namae?.toUpperCase() ?? 'AnyOne';



//Typedef alias만들기

typedef ListOfInt = List<int>;

ListOfInt reverseListOfNumber(ListOfInt list) {
  var reversed = list.reversed;
  return reversed.toList();
}

void main() {

  sayHi("조성우");
  print(immediateHi("미쿠"));


  //named argument 사용하는 법 함수의 파라미터에 뭐가 들어가는지 알고있으면(순서 신경안써도 됨) 다음과 같이 하면 더 효율적이다.
  //print(sayHello("성우", 23, "korea"))
  print(sayHello(
    age: 23,
    country: "korea",
    name: "성우",
  ));


  capitalizeName("조성우");
  capitalizeName(null); 

  // ??=를 통해서 좌항이 null일 경우 우항의 값을 대입할 데이터를 넣는 연산자도 있다.  

  print(reverseListOfNumber([1, 2, 3]));

}