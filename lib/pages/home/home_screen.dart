import 'package:assigment_isi/pages/cart/cart_screen.dart';
import 'package:assigment_isi/pages/history/history_screen.dart';
import 'package:assigment_isi/pages/menu_food/food_search_screen.dart';
import 'package:assigment_isi/pages/offers/no_offer_screen.dart';
import 'package:assigment_isi/pages/orders/order_screen.dart';
import 'package:assigment_isi/pages/profile/profile_screen.dart';
import 'package:assigment_isi/pages/tab_slides/login/login_screen.dart';
import 'package:assigment_isi/widgets/food_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

import '../../utils/color_schema.dart';
import '../tab_slides/tab_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  bool isOpened = false;

  final GlobalKey<SideMenuState> _sideMenuKey = GlobalKey<SideMenuState>();

  toggleMenu([bool end = false]) {
    if (!end) {
      final state = _sideMenuKey.currentState!;
      if (state.isOpened) {
        state.closeSideMenu();
      } else {
        state.openSideMenu();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SideMenu(
      radius: BorderRadius.circular(30),
      key: _sideMenuKey,
      menu: buildMenu(),
      background: const Color(0xFFFA4A0C),
      type: SideMenuType.shrinkNSlide,
      onChange: (isOpened) {
        setState(() => isOpened = isOpened);
      },
      child: Scaffold(
          backgroundColor: background,
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: background,
            centerTitle: true,
            leading: IconButton(
              onPressed: () {toggleMenu();},
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                      builder: (context) {
                        return CartScreen();
                    },
                  ),
                );
                  },
                  icon: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.grey[400],
                  ))
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Delicious \nfood for you",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                //To add some elevation & border radius to text field need to wrap in Material
                Material(
                  elevation: 0.0,
                  borderRadius: BorderRadius.circular(30.0),
                  child: TextField(
                    onTap: (){
                      Navigator.of(context).push(
                      MaterialPageRoute(
                      builder: (context) {
                        return MenuFoodScreen();
                    },
                  ),
                );
                    },
                    textAlign: TextAlign.start,
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                        hintText: "Search",
                        prefixIcon: Icon(
                          Icons.search_sharp,
                          color: Colors.black,
                        ),
                        border: InputBorder.none),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                DefaultTabController(
                  length: 4,
                  child: Expanded(
                    child: Column(
                      children: [
                        TabBar(
                          indicatorColor: deepOrange800,
                          labelColor: deepOrange800,
                          unselectedLabelColor: grey400,
                          labelPadding: EdgeInsets.symmetric(horizontal: 8.0),
                          tabs: [
                            Tab(
                              text: "Food",
                            ),
                            Tab(
                              text: "Drinks",
                            ),
                            Tab(
                              text: "Snacks",
                            ),
                            Tab(
                              text: "Sauce",
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "see more",
                                style:
                                    TextStyle(fontSize: 16, color: deepOrange800),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Expanded(
                            child: TabBarView(clipBehavior: Clip.none, children: [
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                FoodCardWidget(
                                    image: "assets/img/food1.png",
                                    text: "Vegie tomato mix"),
                                SizedBox(
                                  width: 20,
                                ),
                                FoodCardWidget(
                                    image: "assets/img/food1.png",
                                    text: "Vegie tomato mix"),
                                SizedBox(
                                  width: 20,
                                ),
                                FoodCardWidget(
                                    image: "assets/img/food1.png",
                                    text: "Vegie tomato mix"),
                                SizedBox(
                                  width: 20,
                                ),
                                FoodCardWidget(
                                    image: "assets/img/food1.png",
                                    text: "Vegie tomato mix"),
                              ],
                            ),
                          ),
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                FoodCardWidget(
                                    image: "assets/img/food1.png",
                                    text: "Bubur ayam"),
                                SizedBox(
                                  width: 20,
                                ),
                                FoodCardWidget(
                                    image: "assets/img/food1.png",
                                    text: "Bubur ayam"),
                                SizedBox(
                                  width: 20,
                                ),
                                FoodCardWidget(
                                    image: "assets/img/food1.png",
                                    text: "Bubur ayam"),
                              ],
                            ),
                          ),
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                FoodCardWidget(
                                    image: "assets/img/food1.png",
                                    text: "Nasi padang"),
                                SizedBox(
                                  width: 20,
                                ),
                                FoodCardWidget(
                                    image: "assets/img/food1.png",
                                    text: "Nasi padang"),
                                SizedBox(
                                  width: 20,
                                ),
                                FoodCardWidget(
                                    image: "assets/img/food1.png",
                                    text: "Nasi padang"),
                              ],
                            ),
                          ),
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                FoodCardWidget(
                                    image: "assets/img/food1.png",
                                    text: "Es campur"),
                                SizedBox(
                                  width: 20,
                                ),
                                FoodCardWidget(
                                    image: "assets/img/food1.png",
                                    text: "Es campur"),
                                SizedBox(
                                  width: 20,
                                ),
                                FoodCardWidget(
                                    image: "assets/img/food1.png",
                                    text: "Es campur"),
                              ],
                            ),
                          ),
                        ]))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }

  Widget buildMenu() {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 39),
            child: Column(
              children: [
                ListTile(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                      builder: (context) {
                        return ProfileScreen();
                    },
                  ),
                );
                  },
                  leading: const Icon(Icons.account_circle_outlined,
                      size: 20.0, color: Colors.white),
                  title: const Text("Profile",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  textColor: Colors.white,
                  dense: true,
                ),
                dividerListTile(),
                ListTile(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                      builder: (context) {
                        return OrderScreen();
                    },
                  ),
                );
                  },
                  leading: SvgPicture.asset('assets/icon/icon_orders.svg'),
                  title: const Text("Orders",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  textColor: Colors.white,
                  dense: true,
                ),
                dividerListTile(),
                ListTile(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                      builder: (context) {
                        return NoOfferScreen();
                    },
                  ),
                );
                  },
                  leading: const Icon(Icons.local_offer_outlined,
                      size: 20.0, color: Colors.white),
                  title: const Text("Offers and Promo",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  textColor: Colors.white,
                  dense: true,
                ),
                dividerListTile(),
                ListTile(
                  onTap: () {},
                  leading: SvgPicture.asset('assets/icon/icon_privacy_policy.svg'),
                  title: const Text("Privacy Policy",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  textColor: Colors.white,
                  dense: true,
                ),
                dividerListTile(),
                ListTile(
                  onTap: () {},
                  leading: SvgPicture.asset('assets/icon/icon_security.svg'),
                  title: const Text("Security",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  textColor: Colors.white,
                  dense: true,
                ),
                const SizedBox(
                  height: 204,
                ),
                ListTile(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                      builder: (context) {
                        return TabSlideScreen();
                    },
                  ),
                );
                  },
                  title: Row(
                    children: [
                      const Text("Sign-out",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600)),
                      const SizedBox(
                        width: 10,
                      ),
                      const Icon(Icons.arrow_forward,
                          size: 20.0, color: Colors.white)
                    ],
                  ),
                  textColor: Colors.white,
                  dense: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget dividerListTile() {
    return const Divider(color: Color(0xFFF4F4F8), endIndent: 60, indent: 70);
  }
}