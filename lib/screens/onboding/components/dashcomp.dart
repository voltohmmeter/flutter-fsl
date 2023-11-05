import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GridDashboard extends StatelessWidget {
  GridDashboard({Key? key}) : super(key: key);

  final List<Items> items = [
     Items(
      title: "Voice Input",
      subtitle: "March, Wednesday",
      event: "3 Events",
      img: "assets/icons/voice.png",
    ),
    Items(
      title: "Text input",
      subtitle: "Bocali, Apple",
      event: "4 Items",
      img: "assets/icons/text.png",
    ),
     Items(
      title: "Realtime Signlanguage",
      subtitle: "March, Wednesday",
      event: "3 Events",
      img: "assets/icons/sign.png",
    ),
    Items(
      title: "Settings",
      subtitle: "Bocali, Apple",
      event: "4 Items",
      img: "assets/icons/setting.png",
    ),
     Items(
      title: "Quizes",
      subtitle: "March, Wednesday",
      event: "3 Events",
      img: "assets/icons/quiz.png",
    ),
    Items(
      title: "Object Detection",
      subtitle: "Bocali, Apple",
      event: "4 Items",
      img: "assets/icons/detection.png",
    ),
  ];

  // Define a list of functions for onPressed actions
  final List<void Function()> onPressedActions = [
    () {
      // Action for Calendar item
      print("Tapped Voice ");
      // Add your specific action for Calendar here
    },
    () {
      // Action for Groceries item
      print("Tapped Text");
      // Add your specific action for Groceries here
    },
    () {
      // Action for Groceries item
      print("Tapped Signlanguage detection");
      // Add your specific action for Groceries here
    },
    () {
      // Action for Groceries item
      print("Tapped Settings");
      // Add your specific action for Groceries here
    },
    () {
      // Action for Groceries item
      print("Tapped Quiz");
      // Add your specific action for Groceries here
    },
    () {
      // Action for Groceries item
      print("Tapped Object Detection");
      // Add your specific action for Groceries here
    },
    // Add more actions for other items...
  ];

   @override
  Widget build(BuildContext context) {
    // Calculate the number of columns based on the screen size
    int crossAxisCount = MediaQuery.of(context).size.width > 600 ? 3 : 2;

    return Flexible(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
        ),
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              // Call the corresponding onPressed action
              onPressedActions[index]();
            },
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                constraints: const BoxConstraints(
                  maxWidth: 150,
                  maxHeight: 150,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      items[index].img,
                      width: 42,
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Text(
                      items[index].title,
                      style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      items[index].subtitle,
                      style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                          color: Colors.white38,
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Text(
                      items[index].event,
                      style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                          color: Colors.white70,
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
class Items {
  final String title;
  final String subtitle;
  final String event;
  final String img;

  Items({
    required this.title,
    required this.subtitle,
    required this.event,
    required this.img,
  });
}
