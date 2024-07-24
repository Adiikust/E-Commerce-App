import 'package:e_commerce_app/core/constants/export.dart';
import 'package:http/http.dart' as http;

class HomeProvider extends ChangeNotifier {
  final List<HomeModel> homeModel = [];

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

      if (response.statusCode == 200) {
        print("Response body: ${response.body}");
        Map<String, dynamic> jsonData = jsonDecode(response.body.toString());
        homeModel.clear();
        homeModel.add(HomeModel.fromJson(jsonData));
        updateGetResponse(loading: ResponseStatus.success);
        notifyListeners();
      } else {
        updateGetResponse(loading: ResponseStatus.failed);
        print("else Data ${response.body}");
        print("else data ${response.body.toString()}");
      }
    } catch (error) {
      updateGetResponse(loading: ResponseStatus.failed);
      print("catch error  $error");
    }
  }
}
