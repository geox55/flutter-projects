
import 'package:http/http.dart' as http;
class HomeApi {
  Future<String> getHome() async {
    const response = 'Участник хакатона!';

    return response;
  }

  late http.Response response;

  Future<String> getBurger() async {
    const response = 'Участник хакатона!';

    return response;
  }
}
