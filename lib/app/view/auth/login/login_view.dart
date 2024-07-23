import 'package:e_commerce_app/core/constants/export.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _globalKey,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: ListView(
            children: [
              SizeBoxWidget(height: 30.h),
              Icon(
                Icons.eco,
                size: 150.sp,
                color: AppColors.blackColor,
              ).center(),
              TextViewWidget(
                StringsResource.appName,
                style: textTheme.displayLarge
                    ?.copyWith(color: AppColors.backBtnColor),
              ).center(),
              SizeBoxWidget(height: 50.h),
              TextViewWidget(
                StringsResource.yourEmail,
                style: textTheme.titleSmall?.copyWith(
                  color: AppColors.darkBlueTextColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextFormFieldWidget(
                controller: emailController,
                hintText: "",
                validator: (email) => Validation.validateEmail(email),
              ),
              SizeBoxWidget(height: 30.h),
              TextViewWidget(
                StringsResource.password,
                style: textTheme.titleSmall?.copyWith(
                  color: AppColors.darkBlueTextColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextFormFieldWidget(
                controller: passwordController,
                hintText: "",
                validator: (password) => Validation.validatePassword(password),
              ),
              SizeBoxWidget(height: 70.h),
              ButtonWidget(
                title: StringsResource.login,
                onTap: () {
                  if (_globalKey.currentState!.validate()) {
                    context.pushReplacementNamed(RouteNames.homeView);
                  }
                },
                textColor: AppColors.backBtnColor,
              ),
              SizeBoxWidget(height: 10.h),
              ButtonWidget(
                title: StringsResource.register,
                onTap: () => context.pushNamed(RouteNames.registrationView),
                textColor: AppColors.backBtnColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
