void main() {

  String name = "성우";
  bool yes =  true;
  int age = 23;
  double money = 100;

  //숫자를 가지는 데이터 타입은 아 num으로 부터 상속받았다.
  num x = 22;
  x = 123.3;

  //리스트 선언하는 법 리스트의 여러가지 함수를 사용해도 된다.
  //,로 끝내는 것은 ,로 포맷팅을 해준다.
  bool Five = true;
  var numbers = [1, 2, 3, 4,];

   //collection if 
  List<int> numberses = [2, 3, 4, 5, if(Five) 6,];
  numberses.add(52);
 
  print(numberses);


 //  String interpolation 텍스트에 변수를 넣기 위해 사용하는 기능
 var greeting = "안녕 내이름은 $name 야 잘부탁해 난 ${age + 1}살 이야 ";
 print(greeting);

 //collection for
  var charactor = ['미쿠', '시노부'];
  var aa = ['성우1', '성우2', for(var friend in charactor) "❤️ $friend"];
  print(aa);


  //Map: Dictionary 같은 개념
  //Object타입으로 데이터가 들어간다. 보면 데이터가 Object로 들어간다.
  var player = {
    'name': 'miku',
    'age': 18, 
    };
  // Key, Value의 데이터를 내가 직접 설정한다. Key, Data에 List가 들어간다.
    Map<int, bool> test = {
      1: true,
      2: false,
      3: true,
    };

  //Unique한 리스트이며, 이는 값이 고유해 똑같은 값이 추가되지 않는다. 즉, 요소가 하나만 있어야하는 리스트는 Set으로 만든다.
  Set<int> setTest = {1, 2, 3, 4};


  

}
