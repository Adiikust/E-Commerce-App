import 'package:e_commerce_app/app/view/home/component/home_card_widget.dart';
import 'package:e_commerce_app/core/constants/export.dart';
import 'package:e_commerce_app/core/enums/response_status_enum.dart';
import 'package:flutter/cupertino.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
    final provider = Provider.of<HomeProvider>(context, listen: false);
    provider.fetchProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextViewWidget(
          StringsResource.productList,
          style: textTheme.titleLarge?.copyWith(
            color: AppColors.darkBlueTextColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.logout_outlined,
                color: AppColors.backBtnColor,
              ))
        ],
      ),
      body: Consumer<HomeProvider>(
        builder: (context, homeProviderData, child) {
          // // return homeProviderData.homeModel.length != 0
          // return homeProviderData.homeModel.isNotEmpty
          //     ? ListView.builder(
          //         itemCount: 30,
          //         itemBuilder: (context, index) {
          //           return const HomeCardWidget()
          //               .defaultPadding(horizontal: 5.w, vertical: 5.h);
          //         },
          //       )
          //     : TextViewWidget(
          //         "Data Not Found!",
          //         style: textTheme.titleSmall?.copyWith(
          //           color: AppColors.errorColor,
          //           fontWeight: FontWeight.w600,
          //         ),
          //       ).center();
          // // : const CupertinoActivityIndicator().center();

          if (homeProviderData.getResponseStatus == ResponseStatus.loading) {
            return const CupertinoActivityIndicator().center();
          } else if (homeProviderData.getResponseStatus ==
              ResponseStatus.failed) {
            return TextViewWidget(
              "Data Not Found!",
              style: textTheme.titleSmall?.copyWith(
                color: AppColors.primaryColor,
                fontWeight: FontWeight.w600,
              ),
            ).center();
          } else {
            return homeProviderData.homeModel.isEmpty
                ? TextViewWidget(
                    "Data Not Found!",
                    style: textTheme.titleSmall?.copyWith(
                      color: AppColors.errorColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ).center()
                : ListView.builder(
                    itemCount: homeProviderData.homeModel.length ?? 0,
                    itemBuilder: (context, index) {
                      return HomeCardWidget(
                        data: homeProviderData.homeModel,
                        index: index,
                      ).defaultPadding(horizontal: 5.w, vertical: 5.h);
                    },
                  );
          }
        },
      ),
    );
  }
}
