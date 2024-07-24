import 'package:e_commerce_app/app/view/home/component/home_card_widget.dart';
import 'package:e_commerce_app/core/constants/export.dart';
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
                    itemCount: 30,
                    itemBuilder: (context, index) {
                      return const HomeCardWidget()
                          .defaultPadding(horizontal: 5.w, vertical: 5.h);
                    },
                  );
          }
        },
      ),
    );
  }
}
