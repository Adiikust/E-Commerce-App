import 'package:e_commerce_app/core/constants/export.dart';

class ButtonWidget extends StatelessWidget {
  final void Function()? onTap;
  final String? title;
  final Color? color;
  final Color? textColor;
  final double? height;
  final double? width;
  final bool isLoading;

  const ButtonWidget(
      {required this.title,
      this.color,
      required this.textColor,
      required this.onTap,
      this.width,
      this.height,
      this.isLoading = false,
      super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isLoading ? () {} : onTap,
      child: Container(
        height: height ?? 48.h,
        width: width ?? double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.backBtnColor),
          color: color,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Center(
            child: Text(
          isLoading ? 'Please wait...' : title.toString(),
          style: GoogleFonts.inter(
              fontSize: 16.sp, fontWeight: FontWeight.w500, color: textColor),
        )),
      ),
    );
  }
}
