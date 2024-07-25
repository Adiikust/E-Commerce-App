import 'package:e_commerce_app/core/constants/export.dart';

class HomeCardWidget extends StatelessWidget {
  final List? data;
  final int? index;
  const HomeCardWidget({
    super.key,
    this.data,
    this.index,
  });

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
            decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    image:
                        NetworkImage(data?[index!]['image'].toString() ?? ""))),
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
                  data?[index!]['title'].toString() ?? "",
                  style: textTheme.titleSmall?.copyWith(
                    color: AppColors.darkBlueTextColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizeBoxWidget(height: 5.h),
              TextViewWidget(
                "Price : ${data?[index!]['price'].toString() ?? ""}",
                style: textTheme.titleMedium,
              ),
              SizeBoxWidget(height: 5.h),
              SizedBox(
                width: 240.w,
                child: TextViewWidget(
                  isEllipsis: true,
                  maxLines: 4,
                  "Description : ${data?[index!]['description'].toString() ?? ""}",
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
