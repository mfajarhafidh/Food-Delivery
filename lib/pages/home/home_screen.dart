import 'package:assigment_isi/pages/cart/cart_screen.dart';
import 'package:assigment_isi/pages/history/history_screen.dart';
import 'package:assigment_isi/pages/search_menu/food_search_screen.dart';
import 'package:assigment_isi/pages/offers/no_offer_screen.dart';
import 'package:assigment_isi/pages/orders/order_screen.dart';
import 'package:assigment_isi/pages/profile/profile_screen.dart';
import 'package:assigment_isi/widgets/food_widget.dart';
import 'package:flutter/material.dart';
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
          leading: Padding(
            padding: const EdgeInsets.only(left: 30),
            child: IconButton(
              onPressed: () {
                toggleMenu();
              },
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 42.0),
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const CartScreen();
                        },
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.grey[400],
                  )),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Delicious \nfood for you",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              //To add some elevation & border radius to text field need to wrap in Material
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const MenuFoodScreen();
                      },
                    ),
                  );
                },
                child: Container(
                  height: 60,
                  width: 314,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xFFEFEEEE)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 35, top: 21, bottom: 21),
                        child: Container(
                          height: 18,
                          width: 18,
                          child: Icon(
                            Icons.search_sharp,
                            color: Colors.black,
                            fill: 1.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Container(
                          padding: const EdgeInsets.only(left: 16),
                          child: Text(
                            "Search",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF000000)),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
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
                        labelPadding:
                            const EdgeInsets.symmetric(horizontal: 8.0),
                        tabs: const [
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
                      const SizedBox(
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
                      const SizedBox(
                        height: 10,
                      ),
                      Expanded(
                          child: TabBarView(clipBehavior: Clip.none, children: [
                        ListView(
                          scrollDirection: Axis.horizontal,
                          children: const [
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
                        ListView(
                          scrollDirection: Axis.horizontal,
                          children: const [
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
                        ListView(
                          scrollDirection: Axis.horizontal,
                          children: const [
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
                        ListView(
                          scrollDirection: Axis.horizontal,
                          children: const [
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
                      ]))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: deepOrange800,
            unselectedItemColor: grey400,
            items: [
              BottomNavigationBarItem(
                label: "Home",
                icon: IconButton(
                  onPressed: (){
                    Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const HomeScreen();
                    },
                  ),
                );
                    }, 
                  icon: Icon(Icons.home)),
              ),
              BottomNavigationBarItem(
                label: "Favorite",
                icon: IconButton(
                  onPressed: (){Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const Text("Favoritos");
                    },
                  ),
                );}, 
                  icon: Icon(Icons.favorite)),
              ),
              BottomNavigationBarItem(
                label: "Profile",
                icon: IconButton(
                  onPressed: (){Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const ProfileScreen();
                    },
                  ),
                );}, 
                  icon: Icon(Icons.person)),
              ),
              BottomNavigationBarItem(
                label: "History",
                icon: IconButton(
                  onPressed: (){Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const HistoryScreen();
                    },
                  ),
                );}, 
                  icon: Icon(Icons.history)),
              ),
            ]),
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
                          return const ProfileScreen();
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
                          return const OrderScreen();
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
                          return const NoOfferScreen();
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
                  leading:
                      SvgPicture.asset('assets/icon/icon_privacy_policy.svg'),
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
                          return const TabSlideScreen();
                        },
                      ),
                    );
                  },
                  title: Row(
                    children: const [
                      Text("Sign-out",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600)),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.arrow_forward, size: 20.0, color: Colors.white)
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
