import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
        title: Text("GetX Practice"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(
              color: Color.fromARGB(255, 192, 236, 215),
              child: ListTile(
                title: Text("GetX Dialoge Box"),
                subtitle: Text("Dialoge using getx state management"),
                contentPadding: EdgeInsets.all(10),
                onTap: () {
                  Get.defaultDialog(
                      title: "Delete Chat",
                      titlePadding: EdgeInsets.all(20),
                      middleText: "Delete your selected chat",
                      textConfirm: "Yes",
                      textCancel: "No",
                      onConfirm: () {
                        Get.back();
                      },
                      backgroundColor: Colors.greenAccent.shade100);
                },
              ),
            ),
            Card(
              color: Color.fromARGB(255, 192, 236, 215),
              child: ListTile(
                title: Text("GetX BottomSheet"),
                subtitle: Text("BottomSheet using getx state management"),
                contentPadding: EdgeInsets.all(10),
                onTap: () {
                  Get.bottomSheet(Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                      color: Colors.greenAccent.shade100,
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.light_mode),
                          title: Text("Light Theme"),
                          onTap: () {
                            print("light");
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                        GestureDetector(
                          child: ListTile(
                            leading: Icon(Icons.dark_mode),
                            title: Text("Dark Theme"),
                            onTap: () {
                              print("dark");
                              Get.changeTheme(ThemeData.dark());
                            },
                          ),
                        )
                      ],
                    ),
                  ));
                },
              ),
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //     backgroundColor: Colors.greenAccent,
      //     onPressed: () {

      //       // Get.snackbar("Yaqoob Ahmed", "learning GetX",
      //       //     backgroundColor: const Color.fromARGB(255, 212, 253, 233),
      //       //     snackPosition: SnackPosition.BOTTOM);

      //     }),
    );
  }
}
