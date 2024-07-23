import 'package:e_commerce_app/core/constants/export.dart';

class HomeCardWidget extends StatelessWidget {
  const HomeCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
      width: double.maxFinite,
      color: AppColors.greyColor.withOpacity(0.1),
      child: Row(
        children: [
          Container(
            width: 150.w,
            decoration: const BoxDecoration(
                color: Colors.white,
                image: DecorationImage(image: NetworkImage(""))),
          ),
          SizeBoxWidget(width: 5.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizeBoxWidget(height: 5.h),
              SizedBox(
                width: 240.w,
                child: TextViewWidget(
                  maxLines: 3,
                  isEllipsis: true,
                  "Title : Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
                  style: textTheme.titleSmall?.copyWith(
                    color: AppColors.darkBlueTextColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizeBoxWidget(height: 5.h),
              TextViewWidget(
                "Price : 109.95",
                style: textTheme.titleMedium,
              ),
              SizeBoxWidget(height: 5.h),
              SizedBox(
                width: 240.w,
                child: TextViewWidget(
                  isEllipsis: true,
                  maxLines: 4,
                  "Description : Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday",
                  style: textTheme.labelMedium
                      ?.copyWith(color: AppColors.greyTextColor),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
