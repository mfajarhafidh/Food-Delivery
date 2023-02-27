import 'package:assigment_isi/widgets/food_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

import '../../utils/color_schema.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: background,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: background,
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
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
                                  image: "assets/image/food1.png",
                                  text: "Vegie tomato mix"),
                              SizedBox(
                                width: 20,
                              ),
                              FoodCardWidget(
                                  image: "assets/image/food1.png",
                                  text: "Vegie tomato mix"),
                              SizedBox(
                                width: 20,
                              ),
                              FoodCardWidget(
                                  image: "assets/image/food1.png",
                                  text: "Vegie tomato mix"),
                              SizedBox(
                                width: 20,
                              ),
                              FoodCardWidget(
                                  image: "assets/image/food1.png",
                                  text: "Vegie tomato mix"),
                            ],
                          ),
                        ),
                        Container(
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              FoodCardWidget(
                                  image: "assets/image/food1.png",
                                  text: "Bubur ayam"),
                              SizedBox(
                                width: 20,
                              ),
                              FoodCardWidget(
                                  image: "assets/image/food1.png",
                                  text: "Bubur ayam"),
                              SizedBox(
                                width: 20,
                              ),
                              FoodCardWidget(
                                  image: "assets/image/food1.png",
                                  text: "Bubur ayam"),
                            ],
                          ),
                        ),
                        Container(
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              FoodCardWidget(
                                  image: "assets/image/food1.png",
                                  text: "Nasi padang"),
                              SizedBox(
                                width: 20,
                              ),
                              FoodCardWidget(
                                  image: "assets/image/food1.png",
                                  text: "Nasi padang"),
                              SizedBox(
                                width: 20,
                              ),
                              FoodCardWidget(
                                  image: "assets/image/food1.png",
                                  text: "Nasi padang"),
                            ],
                          ),
                        ),
                        Container(
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              FoodCardWidget(
                                  image: "assets/image/food1.png",
                                  text: "Es campur"),
                              SizedBox(
                                width: 20,
                              ),
                              FoodCardWidget(
                                  image: "assets/image/food1.png",
                                  text: "Es campur"),
                              SizedBox(
                                width: 20,
                              ),
                              FoodCardWidget(
                                  image: "assets/image/food1.png",
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
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: deepOrange800,
          unselectedItemColor: grey400,
          items: [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "Favorite",
              icon: Icon(Icons.favorite),
            ),
            BottomNavigationBarItem(
              label: "Profile",
              icon: Icon(Icons.person),
            ),
            BottomNavigationBarItem(
              label: "History",
              icon: Icon(Icons.history),
            ),
          ],
        ));
  }
}