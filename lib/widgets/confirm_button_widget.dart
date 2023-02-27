import 'package:flutter/material.dart';

class ActionButtonConfirmWidget extends StatelessWidget {
  const ActionButtonConfirmWidget({Key? key, required this.buttonAction})
      : super(key: key);
  final String buttonAction;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          print("Confirm proses");
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Padding(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                  child: Text(
                    "Please Note",
                    style: TextStyle(color: Color(0xff000000)),
                  ),
                ),
                content: Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 322,
                  width: 315,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(80),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        title: Container(
                          child: Wrap(
                            children: [
                              Container(
                                child: Text(
                                  'DELIVERY TO MAINLAND ',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                child: Text("N1000 - N2000"),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Divider(color: Colors.black26, indent: 15, endIndent: 20),
                      ListTile(
                        title: Container(
                          child: Wrap(
                            children: [
                              Container(
                                child: Text(
                                  'DELIVERY TO ISLAND ',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                child: Text("N2000 - N3000"),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                actions: [
                  Container(
                    child: TextButton(
                      onPressed: () {
                        print("Confrim cancel press");
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        "Cancel",
                        style: TextStyle(color: Colors.grey),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xffffffff),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        minimumSize: Size(100.0, 60.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 159,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        print("Confrim proced pres");
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        "Proceed",
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          );
        },
        child: Text(
          buttonAction,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.deepOrange,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          minimumSize: Size(314.0, 70.0),
        ),
      ),
    );
  }
}