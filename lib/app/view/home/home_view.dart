import 'package:e_commerce_app/app/view/home/component/home_card_widget.dart';
import 'package:e_commerce_app/core/constants/export.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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
      body: ListView.builder(
        itemCount: 30,
        itemBuilder: (context, index) {
          return const HomeCardWidget()
              .defaultPadding(horizontal: 5.w, vertical: 5.h);
        },
      ),
    );
  }
}
