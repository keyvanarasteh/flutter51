
import 'package:dio/dio.dart';

void main(List<String> arguments) {
  print('basladi');
  request();
  print('bitti');
}


void request() async {
  var dio = Dio();
  
  var path = "https://reqres.in/api/users";

  var response = await dio.get(path);

  print(response.statusCode);

  print(response.data);

}

