
import 'dart:convert';

import 'package:gamescores/model/soccermodel.dart';
import 'package:http/http.dart';

class SoccerApi {
// we are gonna set variables
// then add endpoint Url
// and lastly we gonna get data from api sport.io server 

final String apiUrl="https://v3.football.api-sports.io/fixtures?live=all";

static const api_key="483383dfa6e83a44046e65143d1e3342";

//headers
static const headers = {
  'x-rapidapi-host': "v3.football.api-sports.io",
    'x-rapidapi-key': "483383dfa6e83a44046e65143d1e3342"
};

//create our method
 
  Future<List<SoccerMatch>> getAllMatches() async {
    Response res = await get(apiUrl, headers: headers);
    var body;

    if (res.statusCode == 200) {
      // this mean that we are connected to the data base
      body = jsonDecode(res.body);
      List<dynamic> matchesList = body['response'];
      print("Api service: ${body}"); // to debug
      List<SoccerMatch> matches = matchesList
          .map((dynamic item) => SoccerMatch.fromJson(item))
          .toList();

      return matches;
    }
  }
}