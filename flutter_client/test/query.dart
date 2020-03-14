import 'package:http/http.dart' as http;
final response = http.get('http://192.168.0.8:3000/events');



getEvent(String url) async {

    final response = await http.get(url);
    print(response);

}
