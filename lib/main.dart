import 'package:e_commerce_app/core/constants/export.dart';

void main() => runApp(const SizeAdapter(
    designSize: Size(414.0, 896.0),
    designStatusBarHeight: 44.0,
    child: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: StringsResource.appName,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.ligthThemeData,
      routerConfig: router,
    );
  }
}
