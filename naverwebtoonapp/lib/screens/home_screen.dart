import 'package:flutter/material.dart';
import 'package:naverwebtoonapp/models/webtoonModel.dart';
import 'package:naverwebtoonapp/services/api_service.dart';
import 'package:naverwebtoonapp/widgets/webtoon_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  //  Stateless 상태에서 Data를 fetch하기 위해 형태를 바꿈(Futurebuilder Widget 사용)
  final Future<List<WebtoonModel>> webtoons = ApiService.getTodaysToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          '오늘의 웹툰',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
      ),
      //FutureBuilder는 UI를 그려주기위한 Builder
      body: FutureBuilder(
        future: webtoons, //웹툰의 값이 들어오는것을 기다려준다.
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            //데이터는 snapshot.data에 들어있다.
            //ListView를 통한 항목 나열
            return Column(
              children: [
                const SizedBox(
                  height: 200,
                ),
                Expanded(child: makeList(snapshot))
              ],
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }

  //메소드 추출
  ListView makeList(AsyncSnapshot<List<WebtoonModel>> snapshot) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: snapshot.data!.length,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      itemBuilder: (context, index) {
        //인덱스를 통해 접근 접근하고자 하는 데이터만을 로딩한다.
        var webtoon = snapshot.data![index];
        return Webtoon(
            title: webtoon.title, thumb: webtoon.thumb, id: webtoon.id);
      },
      separatorBuilder: (context, index) => const SizedBox(width: 40),
    );
  }
}
