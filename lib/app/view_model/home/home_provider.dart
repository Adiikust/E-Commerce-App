import 'package:e_commerce_app/core/constants/export.dart';
import 'package:e_commerce_app/core/enums/response_status_enum.dart';
import 'package:http/http.dart' as http;

class HomeProvider extends ChangeNotifier {
  final List homeModel = [];

  var getResponseStatus = ResponseStatus.loading;
  void updateGetResponse({var loading}) {
    getResponseStatus = loading;
    notifyListeners();
  }

  Future<void> fetchProducts() async {
    updateGetResponse(loading: ResponseStatus.loading);
    try {
      final response = await http.get(Uri.parse(EndpointUrls.products));
      print("Response status code: ${response.statusCode}");
      print("Response body: ${response.body}");
      if (response.statusCode == 200) {
        if (response.body.isNotEmpty) {
          List<dynamic> jsonData = jsonDecode(response.body);
          homeModel.clear();
          for (var item in jsonData) {
            homeModel.add(item);
          }
          updateGetResponse(loading: ResponseStatus.success);
          notifyListeners();
        }
      } else {
        updateGetResponse(loading: ResponseStatus.failed);
        print("else Data ${response.body}");
        Map<String, dynamic> map = jsonDecode(response.body);
        print("else data ${response.body.toString()}");
      }
    } catch (error) {
      updateGetResponse(loading: ResponseStatus.failed);
      print("catch error  $error");
    }
  }
}
