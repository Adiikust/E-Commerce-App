import 'package:e_commerce_app/core/constants/export.dart';

class TextFormFieldWidget extends StatelessWidget {
  final String? labelText;
  final String hintText;
  final bool obscureText;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final TextInputType? keyboardType;
  final bool? enable;
  final bool? readOnly;
  final double? hintFontSize;
  final Color? hintColor;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final InputBorder? errorBorder;
  final InputBorder? focusedErrorBorder;
  final int? maxLines;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  const TextFormFieldWidget(
      {super.key,
      this.labelText,
      this.enable,
      this.readOnly,
      required this.hintText,
      this.obscureText = false,
      this.controller,
      this.onChanged,
      this.validator,
      this.maxLines = 1,
      this.keyboardType,
      this.hintColor,
      this.hintFontSize,
      this.enabledBorder,
      this.errorBorder,
      this.focusedBorder,
      this.prefixIcon,
      this.suffixIcon,
      this.focusedErrorBorder});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      validator: validator,
      enabled: enable ?? true,
      readOnly: readOnly ?? false,
      obscureText: obscureText,
      maxLines: maxLines,
      keyboardType: keyboardType,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(color: AppColors.primaryColor, fontSize: 16.sp),
        errorStyle: TextStyle(color: AppColors.errorColor, fontSize: 12.sp),
        hintText: hintText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintStyle: TextStyle(
          color: hintColor ?? AppColors.blackColor,
          fontSize: hintFontSize ?? 16.sp,
          fontWeight: FontWeight.w400,
        ),
        enabledBorder: enabledBorder ??
            const UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.greyColor),
            ),
        focusedBorder: focusedBorder ??
            const UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.greyColor),
            ),
        errorBorder: errorBorder ??
            const UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.greyColor),
            ),
        focusedErrorBorder: focusedErrorBorder ??
            const UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.greyColor),
            ),
      ),
    );
  }
}
