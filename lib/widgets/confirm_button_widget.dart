import 'package:flutter/material.dart';

class ActionButtonConfirmWidget extends StatelessWidget {
  const ActionButtonConfirmWidget({Key? key, required this.buttonAction})
      : super(key: key);
  final String buttonAction;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                  child: Text(
                    "Please Note",
                    style: TextStyle(color: Color(0xff000000)),
                  ),
                ),
                content: Container(
                  margin: const EdgeInsets.only(top: 20),
                  height: 322,
                  width: 315,
                  decoration: BoxDecoration(
                    color: const Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(80),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        title: Wrap(
                          children: const [
                            Text(
                              'DELIVERY TO MAINLAND ',
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text("N1000 - N2000"),
                          ],
                        ),
                      ),
                      const Divider(color: Colors.black26, indent: 15, endIndent: 20),
                      ListTile(
                        title: Wrap(
                          children: const [
                            Text(
                              'DELIVERY TO ISLAND ',
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text("N2000 - N3000"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xffffffff),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      minimumSize: const Size(100.0, 60.0),
                    ),
                    child: const Text(
                      "Cancel",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  SizedBox(
                    width: 159,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text(
                        "Proceed",
                      ),
                    ),
                  ),
                ],
              );
            },
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.deepOrange,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          minimumSize: const Size(314.0, 70.0),
        ),
        child: Text(
          buttonAction,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20, fontFamily: 'SF-Pro'
          ),
        ),
      ),
    );
  }
}