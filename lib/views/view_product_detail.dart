import 'package:e_commerce_example/shared/uicolor.dart';
import 'package:e_commerce_example/shared/uipath.dart';
import 'package:e_commerce_example/shared/uitext.dart';
import 'package:e_commerce_example/widgets/widget_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ViewProductDetail extends StatefulWidget {
  const ViewProductDetail({Key? key}) : super(key: key);

  @override
  _ViewProductDetailState createState() => _ViewProductDetailState();
}

class _ViewProductDetailState extends State<ViewProductDetail>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  int? selectedIndex;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 3);
    tabController.addListener(() {
      setState(() {
        selectedIndex = tabController.index;
      });
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            backgroundColor: UIColor.white,
            appBar: getAppBar(),
            body: getBody()));
  }

  AppBar getAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      centerTitle: true,
      leading: InkWell(
        onTap: () {
          Get.back();
        },
        child: Icon(
          Icons.keyboard_arrow_left,
          size: 30,
          color: UIColor.black,
        ),
      ),
      actions: [
        Image.asset(UIPath.shoppingBasket),
      ],
    );
  }

  Widget getBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextBasic(
              text: UIText.usd,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            TextBasic(
              text: UIText.productName4,
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: UIColor.black,
            ),
            const SizedBox(
              height: 24,
            ),
            getTabHeader(),
            getTabBarView(),
            getReview(),
          ],
        ),
      ),
    );
  }

  Widget getTabHeader() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: TabBar(
          controller: tabController,
          labelColor: UIColor.primaryGreen,
          unselectedLabelColor: UIColor.gray,
          indicatorColor: UIColor.primaryGreen,
          isScrollable: true,
          tabs: [
            Tab(
              child: Text(
                UIText.overview,
              ),
            ),
            Tab(
              child: Text(
                UIText.features,
              ),
            ),
            Tab(
              child: Text(
                UIText.specification,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getTabBarView() {
    return Center(
      child: SizedBox(
        height: 300,
        child: TabBarView(
          controller: tabController,
          children: [
            tabBarImage(UIPath.headphone4x),
            tabBarFeatures(),
            tabBarSpecification(),
          ],
        ),
      ),
    );
  }

  Widget tabBarImage(String image) {
    return InkWell(
      onTap: () {
        Get.to(const ViewProductDetail());
      },
      child: Container(
        margin: const EdgeInsets.all(24),
        color: UIColor.white,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (context, index) {
            return GestureDetector(
                onTap: () async {
                  Get.to(const ViewProductDetail());
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Container(
                      height: 200,
                      color: UIColor.white,
                      child: Row(
                        children: [
                          Image.asset(image),
                        ],
                      )),
                ));
          },
        ),
      ),
    );
  }

  Widget tabBarFeatures() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 12,
        ),
        TextBasic(
          text: "Highly Detailed Audio",
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: UIColor.black,
        ),
        const SizedBox(
          height: 12,
        ),
        TextBasic(
          text:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
          color: UIColor.black,
          letterSpacing: 1.7,
        )
      ],
    );
  }

  Widget tabBarSpecification() {
    return const Center(child: TextBasic(text: "Specification", fontSize: 32));
  }

  Widget getReview() {
    return Column(
      children: [
        TextBasic(
          text: "Review (102)",
          color: UIColor.black,
          fontSize: 20,
        ),
      ],
    );
  }
}
