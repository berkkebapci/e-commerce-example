import 'package:e_commerce_example/shared/uicolor.dart';
import 'package:e_commerce_example/shared/uipath.dart';
import 'package:e_commerce_example/shared/uitext.dart';
import 'package:e_commerce_example/views/view_product_detail.dart';
import 'package:e_commerce_example/views/view_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ViewHome extends StatefulWidget {
  const ViewHome({Key? key}) : super(key: key);

  @override
  _ViewHomeState createState() => _ViewHomeState();
}

class _ViewHomeState extends State<ViewHome>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  int? selectedIndex;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 4);
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
      length: 4,
      child: Scaffold(
        backgroundColor: UIColor.white,
        appBar: getAppBar(),
        body: getBody(),
      ),
    );
  }

  AppBar getAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      centerTitle: true,
      title: Image.asset(UIPath.logo),
      leading: Image.asset(UIPath.menu),
      actions: [
        Image.asset(UIPath.profilePicture),
      ],
    );
  }

  Widget getBody() {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          getTitles(),
          getSearch(),
          getTabsandProducts(),
        ],
      ),
    );
  }

  Widget getTitles() {
    return Padding(
      padding: const EdgeInsets.only(top: 12, left: 20, right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            UIText.homeTitle,
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            UIText.homeSubTitle,
            style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget getSearch() {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: TextFormField(
        onTap: () {
          Get.to(const ViewSearch());
        },
        keyboardType: TextInputType.none,
        obscureText: true,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            hintText: UIText.searchHeadphone,
            hintStyle: const TextStyle(fontWeight: FontWeight.w300),
            prefixIcon: const Icon(Icons.search)),
      ),
    );
  }

  Widget getTabsandProducts() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        color: UIColor.tabBarBackgroundColor,
      ),
      child: Column(
        children: [
          getTabHeader(),
          getTabBarView(),
          getProductTitle(),
          getProducts(),
        ],
      ),
    );
  }

  Widget getTabHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: TabBar(
        controller: tabController,
        labelColor: UIColor.white,
        unselectedLabelColor: UIColor.gray,
        indicatorColor: UIColor.transparent,
        isScrollable: true,
        tabs: [
          Tab(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: tabController.index == 0
                      ? UIColor.primaryGreen
                      : UIColor.transparent),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Text(
                UIText.headphone,
              ),
            ),
          ),
          Tab(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: tabController.index == 1
                      ? UIColor.primaryGreen
                      : UIColor.transparent),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Text(
                UIText.headband,
              ),
            ),
          ),
          Tab(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: tabController.index == 2
                      ? UIColor.primaryGreen
                      : UIColor.transparent),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Text(
                UIText.earpads,
              ),
            ),
          ),
          Tab(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: tabController.index == 3
                      ? UIColor.primaryGreen
                      : UIColor.transparent),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Text(
                UIText.cable,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget getTabBarView() {
    return SizedBox(
      height: 200,
      child: TabBarView(
        controller: tabController,
        children: [
          tabBarContainer(UIPath.headphone, UIText.tma),
          tabBarContainer(UIPath.earphone, UIText.tma),
          tabBarContainer(UIPath.headphone, UIText.tma),
          tabBarContainer(UIPath.earphone, UIText.tma),
        ],
      ),
    );
  }

  Widget tabBarContainer(String image, String productName) {
    return InkWell(
      onTap: () {
        Get.to(const ViewProductDetail());
      },
      child: Container(
          margin: const EdgeInsets.all(24),
          color: UIColor.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productName,
                    style: TextStyle(
                        letterSpacing: 1.5,
                        fontSize: 22,
                        color: UIColor.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    UIText.shopNow,
                    style: TextStyle(fontSize: 14, color: UIColor.primaryGreen),
                  ),
                ],
              ),
              Image.asset(image)
            ],
          )),
    );
  }

  Widget getProductTitle() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            UIText.featured,
            style: TextStyle(fontSize: 18, color: UIColor.black),
          ),
          Text(UIText.seeAll,
              style: TextStyle(fontSize: 14, color: UIColor.gray)),
        ],
      ),
    );
  }

  Widget getProducts() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: SizedBox(
          height: 200,
          child: Scrollbar(
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
                          width: 150,
                          color: UIColor.white,
                          child: Column(
                            children: [
                              Image.asset(UIPath.headphone),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(UIText.tma2)),
                              const SizedBox(
                                height: 8,
                              ),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(UIText.usd,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12))),
                            ],
                          )),
                    ));
              },
            ),
          )),
    );
  }
}
