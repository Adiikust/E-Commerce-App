import 'package:e_commerce_app/core/constants/export.dart';

class RegisterAllProvider {
  static get appAllProvider => [
        ChangeNotifierProvider(create: (_) => HomeProvider()),
      ];
}
