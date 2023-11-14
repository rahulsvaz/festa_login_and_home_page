import 'package:festa_login_and_home_page/model/user_model.dart';
import 'package:http/http.dart' as http;

class ApiCalls {
  static getData() async {
    var response =
        await http.get(Uri.parse("https://randomuser.me/api/?results=10"));

    var data = randomModelFromJson(response.body.toString());

    return data;
  }
}
