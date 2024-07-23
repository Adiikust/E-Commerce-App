import 'package:e_commerce_app/core/constants/export.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    _splashDuration();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.eco,
              size: 150.sp,
              color: AppColors.blackColor,
            ),
            TextViewWidget(
              StringsResource.appName,
              style: textTheme.displayLarge,
            ),
          ],
        ).center(),
      ),
    );
  }

  void _splashDuration() {
    Future.delayed(const Duration(seconds: 6), () async {
      context.pushReplacementNamed(RouteNames.loginView);
      // Navigator.of(context).pushReplacement(
      //   MaterialPageRoute(
      //       builder: (context) => FirebaseAuth.instance.currentUser?.uid != null
      //           ? const HomeScreen()
      //           : prefs.getBool('switchState') == true
      //           ? const AdminHomeScreen()
      //           : const WelcomeScreen()),
      // );
    });
  }
}
