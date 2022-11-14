import 'package:get/get.dart';

class Provider extends GetConnect {
  Future<List<dynamic>> getUser() async {
    final response = await get(
        'http://sport-data.allfootballapp.com/soccer/biz/data/schedule?season_id=10346');

    if (response.status.hasError) {
      return Future.error(response.statusText!);
    } else {
      return response.body['content']['matches'];
    }
  }
}
