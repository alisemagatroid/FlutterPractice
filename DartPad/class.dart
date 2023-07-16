
//클래스의 필드는 데이터 타입을 꼭 명시해야됨
//final 존재
class Player {

  //late를 써서 나중에 할당받을 수 있게 한다.
  late String name;
  late int age;

  //기본적으로 자바의 생성자(constructer) 문법이 작동한다.
  Player(this.name, this.age); 

  // 필드에 접근할때 같은 이름의 변수때문에 헷갈리는거 아니면 this를 쓰는 것이 권장되지 않음
  void sayHello(){
    print("안녕 나의 이름은 $name");
  }
}

void main() {
  var p1 = Player("성우", 23);
  var p2 = Player("구구", 99);

  p1.sayHello();
  p2.sayHello();

}