import 'package:e_commerce_example/shared/uicolor.dart';
import 'package:e_commerce_example/shared/uipath.dart';
import 'package:e_commerce_example/shared/uitext.dart';
import 'package:e_commerce_example/widgets/widget_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ViewSearch extends StatefulWidget {
  const ViewSearch({Key? key}) : super(key: key);

  @override
  _ViewSearchState createState() => _ViewSearchState();
}

class _ViewSearchState extends State<ViewSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: getAppBar(), body: getBody());
  }

  AppBar getAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      centerTitle: true,
      title: TextBasic(
        text: UIText.search,
        color: UIColor.black,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
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
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 24,
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintText: UIText.searchHeadphone,
                  hintStyle: const TextStyle(fontWeight: FontWeight.w300),
                  prefixIcon: const Icon(Icons.search)),
            ),
            const SizedBox(
              height: 40,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: TextBasic(
                  text: UIText.lastestSearch,
                  color: UIColor.black,
                  fontSize: 16,
                )),
            const SizedBox(
              height: 16,
            ),
            getSearchResult(UIText.productName),
            const SizedBox(
              height: 16,
            ),
            getSearchResult(UIText.cable),
            const SizedBox(
              height: 32,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: TextBasic(
                  text: UIText.popularProduct,
                  color: UIColor.black,
                  fontSize: 16,
                )),
            const SizedBox(
              height: 12,
            ),
            getProduct(UIText.productName, 270, 4.6, 86),
            const SizedBox( 
              height: 12,
            ),
            getProduct(UIText.productName2, 270, 4.6, 86),
            const SizedBox(
              height: 12,
            ),
            getProduct(UIText.productName3, 270, 4.6, 86),
          ],
        ),
      ),
    );
  }
}

Widget getSearchResult(String productName) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          Image.asset(
            UIPath.clock,
            color: UIColor.gray,
          ),
          const SizedBox(
            width: 8,
          ),
          TextBasic(
            text: productName,
            color: UIColor.black,
          ),
        ],
      ),
      Image.asset(
        UIPath.x,
        color: UIColor.black,
      ),
    ],
  );
}

Widget getProduct(
    String productName, int productPrice, double star, int review) {
  return Row(
    children: [
      Image.asset(
        UIPath.headphone,
        height: 95,
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 12,
          ),
          TextBasic(
            text: productName,
            fontSize: 16,
            color: UIColor.black,
          ),
          const SizedBox(
            height: 8,
          ),
          TextBasic(
            text: "USD " + productPrice.toString(),
            fontWeight: FontWeight.bold,
            color: UIColor.black,
            fontSize: 15,
          ),
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            width: 275,
            child: Row(
              children: [
                Image.asset(UIPath.star),
                const SizedBox(
                  width: 2,
                ),
                TextBasic(text: star.toString(), color: UIColor.black,),
                const SizedBox(
                  width: 12,
                ),
                TextBasic(text: review.toString() + " review", color: UIColor.black,),
                const Spacer(),
                const Icon(Icons.more_vert_outlined),
              ],
            ),
          ),
        ],
      ),
    ],
  );
}
