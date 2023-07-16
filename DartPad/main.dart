/* 변수를 다루는 법에 배우고 있다*/

void main() {
    print("hello world");

    //var는 함수에서 사용(지역변수)
    var name = '성우'; //선언 시 String이므로 변수를 대입할 때 같은 데이터 타입으로 해야됨
    name = '조성우';

    //클래스에서는 데이터 타입을 명시한다
    String charactor = '미쿠';


    //dynamic type 동적으로 여러가지 메소드를 호출하거나 아직 타입을 모를대 이렇게 사용한다. 근데 이거 많이 쓰면 안돼
    dynamic game;
    if(game is String){
    
    }

    if(game is int){

    }

    // String일 수도, null값을 가질 수도 있음을 명시하기위해 ?를 붙인다.
    String? sam = 'hi';
    sam = null;
    if (sam != null ) {
        sam.isNotEmpty;
    }

    //final 변수를 통해 변수를 고정한다. 런타임 중에 고정 변수를 만들 수 있다는 점에서 사용된다.
    final name02 = "조성우";


    //초기 변수값을 빼고 선언하는 변수 처음에 API를 통해 값을 받아 넣는 경우 사용한다. 값도 없는데, 받지 않았는데 변수를 사용하는 것을 막는다.
    late final String name03;
    
    //컴파일 타임에 존재하는 상수(이부분에서 final과 다른거 알지?)
    const timer = 1;

}