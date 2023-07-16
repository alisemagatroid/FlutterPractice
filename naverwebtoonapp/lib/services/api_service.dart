import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:naverwebtoonapp/models/webtoonDetailModel.dart';
import 'package:naverwebtoonapp/models/webtoonEpisideModel.dart';
import 'package:naverwebtoonapp/models/webtoonModel.dart';

class ApiService {
  static const String baseUrl =
      "https://webtoon-crawler.nomadcoders.workers.dev";
  static const String today = "today";

  //오늘의 웹툰 목록을(List) 가져오는 메소드
  static Future<List<WebtoonModel>> getTodaysToons() async {
    List<WebtoonModel> webtoonInstances = [];
    final url = Uri.parse('$baseUrl/$today');
    final response = await http.get(url); //이 부분이 처리 되고 함수가 작동되야되므로 여기서 Async

    if (response.statusCode == 200) {
      final List<dynamic> webtoons =
          jsonDecode(response.body); //dynamic type의 List로 받아온다.
      for (var webtoon in webtoons) {
        final instance = WebtoonModel.fromJson(webtoon);
        webtoonInstances.add(instance);
      }
      return webtoonInstances;
    }
    throw Error();
  }

  //웹툰 하나의 정보를 가져오는 메소드
  static Future<WebtoonDetailModel> getToonById(String id) async {
    final url = Uri.parse("$baseUrl/$id");
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final webtoon = jsonDecode(response.body);
      return WebtoonDetailModel.fromJson(webtoon);
    }
    throw Error();
  }

  //선택한 웹툰의 에피소드들을(List) 가져오는 메소드
  static Future<List<WebtoonEpisodeModel>> getLatestEpisidesById(
      String id) async {
    List<WebtoonEpisodeModel> episodesInstances = [];
    final url = Uri.parse("$baseUrl/$id/episodes");
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final episodes = jsonDecode(response.body);
      for (var episode in episodes) {
        print(episode);
        episodesInstances.add(WebtoonEpisodeModel.fromJson(episode));
      }
    }
    throw Error();
  }
}
