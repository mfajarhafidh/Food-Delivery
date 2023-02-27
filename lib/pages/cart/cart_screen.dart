import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../../utils/color_schema.dart';

class Cart_Screen extends StatelessWidget {
  List<MyModel> models = [
    MyModel(name: 'product1', image: 'assets/image/food1.png', price: 215.80),
    MyModel(name: 'product2', image: 'assets/image/food1.png', price: 415.30),
    MyModel(name: 'product3', image: 'assets/image/food1.png', price: 115.50),
    MyModel(name: 'product4', image: 'assets/image/food1.png', price: 115.50),
    MyModel(name: 'product5', image: 'assets/image/food1.png', price: 115.50),
    MyModel(name: 'product6', image: 'assets/image/food1.png', price: 115.50),
    MyModel(name: 'product7', image: 'assets/image/food1.png', price: 115.50),
    MyModel(name: 'product8', image: 'assets/image/food1.png', price: 115.50),
    MyModel(name: 'product9', image: 'assets/image/food1.png', price: 115.50),
    MyModel(name: 'product10', image: 'assets/image/food1.png', price: 115.50),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: background,
      appBar: AppBar(
        toolbarHeight: 120,
        backgroundColor: background,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: (() {}),
          color: Colors.black,
        ),
        title: Text(
          'Cart',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView.builder(
          itemCount: models.length,
          itemBuilder: ((context, index) {
            final model = models[index];
            return Slidable(
              // Specify a key if the Slidable is dismissible.
              key: ValueKey(0),
              // The end action pane is the one at the right or the bottom side.
              endActionPane: ActionPane(
                motion: ScrollMotion(),
                children: [
                  CustomSlidableAction(
                      padding: EdgeInsets.only(left: 15),
                      onPressed: ((context) {}),
                      child: CircleAvatar(
                        radius: 26,
                        backgroundColor: deepOrange800,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.favorite),
                          color: Colors.white,
                        ),
                      )),
                  CustomSlidableAction(
                      padding: EdgeInsets.only(right: 30),
                      onPressed: ((context) {}),
                      child: CircleAvatar(
                        radius: 26,
                        backgroundColor: deepOrange800,
                      )),
                ],
              ),
              child: buildListTile(model),
            );
          })),
    );
  }

  Widget buildListTile(MyModel model) => ListTile(
        contentPadding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        leading: CircleAvatar(
          radius: 30,
          child: Image.asset(model.image),
        ),
        title: Row(
          children: [
            Column(
              children: [
                Text(
                  model.name,
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  model.price.toString(),
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ],
        ),
        trailing: Icon(Icons.add),
        onTap: () {},
      );
}

class MyModel {
  final String name;
  final String image;
  final double price;

  MyModel({
    required this.name,
    required this.image,
    required this.price,
  });
}