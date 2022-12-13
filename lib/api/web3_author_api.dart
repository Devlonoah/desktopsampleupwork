import 'package:desktopsampleupwork/constants/api_client.dart';
import 'package:http/http.dart' as http;

class Web3authorApi {
  ///get lab list from backend
  Future<http.Response> getLabList() async {
    var response = await http.get(Uri.parse(ApiClient.labList));

    return response;
  }
}
