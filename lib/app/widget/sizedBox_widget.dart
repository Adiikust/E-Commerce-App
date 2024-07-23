import 'package:e_commerce_app/core/constants/export.dart';

class SizeBoxWidget extends StatelessWidget {
  final double? width;
  final double? height;
  const SizeBoxWidget({
    super.key,
    this.width,
    this.height,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
    );
  }
}
