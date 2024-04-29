import 'package:flutter/material.dart';
import 'package:flutter_widgets_of_the_day/pages/here2.dart';

class HeroPage1 extends StatelessWidget {
  const HeroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = HeroItems();
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 200,
        backgroundColor: Colors.purple,
        title: const Text(
          "Girl Dating 💥",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return HeroScreen(
                      items: controller.items[index],
                    );
                  },
                ),
              );
            },
            /* this tag to identify another screen perform hero animation */
            leading: Hero(
              tag: controller.items[index].image,
              child: CircleAvatar(
                maxRadius: 40,
                backgroundImage: AssetImage(controller.items[index].image),
              ),
            ),
            title: Text(
              controller.items[index].title,
              style: const TextStyle(
                  fontSize: 21,
                  color: Colors.purple,
                  fontWeight: FontWeight.w600),
            ),
            subtitle: Text(controller.items[index].subtitle),
          );
        },
        itemCount: controller.items.length,
      ),
    );
  }
}
