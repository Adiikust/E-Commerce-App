import 'package:e_commerce_app/core/constants/export.dart';

class RegistrationView extends StatefulWidget {
  const RegistrationView({super.key});

  @override
  State<RegistrationView> createState() => _RegistrationViewState();
}

class _RegistrationViewState extends State<RegistrationView> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: AppColors.blackColor),
        backgroundColor: AppColors.whiteColor,
        elevation: 0,
      ),
      body: Form(
        key: _globalKey,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: ListView(
            children: [
              SizeBoxWidget(height: 70.h),
              TextViewWidget(
                StringsResource.yourName,
                style: textTheme.titleSmall?.copyWith(
                  color: AppColors.darkBlueTextColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextFormFieldWidget(
                controller: nameController,
                hintText: "",
                validator: (name) => Validation.validateName(name),
              ),
              SizeBoxWidget(height: 30.h),
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
                title: StringsResource.register,
                onTap: () {
                  if (_globalKey.currentState!.validate()) {}
                },
                textColor: AppColors.backBtnColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
