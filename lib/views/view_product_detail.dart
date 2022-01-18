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
            getTabBarView(),
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
          text: UIText.featuresTitle,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: UIColor.black,
        ),
        const SizedBox(
          height: 12,
        ),
        TextBasic(
          text: UIText.loremIpsum * 2,
          color: UIColor.black,
          letterSpacing: 1.7,
        )
      ],
    );
  }

  Widget tabBarSpecification() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(UIPath.profilePicture),
        const SizedBox(
          width: 12,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextBasic(
              text: UIText.userName,
              color: UIColor.black,
            ),
            const SizedBox(
              height: 4,
            ),
            SizedBox(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(UIPath.star),
                        Image.asset(UIPath.star),
                        Image.asset(UIPath.star),
                        Image.asset(UIPath.star),
                        Image.asset(UIPath.star),
                      ],
                    ),
                  ),
                  const Spacer(),
                  TextBasic(
                    text: UIText.commentDate,
                    color: UIColor.black,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              width: 270,
              child: TextBasic(
                text: UIText.loremIpsum,
                color: UIColor.black,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ],
    );
  }
}
