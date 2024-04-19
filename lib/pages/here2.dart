import 'package:flutter/material.dart';

class HeroScreen extends StatelessWidget {
  final HeroInfo items;
  const HeroScreen({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: SizedBox(
              height: 600,
              child: Hero(
                tag: items.image,
                child: Image.asset(
                  items.image,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: SizedBox(
              child: Text(
                "Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy.",
                style: TextStyle(fontSize: 20, color: Colors.purple),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class HeroInfo {
  final String title;
  final String subtitle;
  final String image;
  HeroInfo(this.title, this.subtitle, this.image);
}

class HeroItems {
  List<HeroInfo> items = [
    HeroInfo("Olivia", "olivia@gmail.com", "assets/p1.jpg"),
    HeroInfo("Emma", "emma@gmail.com", "assets/p2.jpg"),
    HeroInfo("Charlotte", "charlotte@gmail.com", "assets/p3.jpg"),
    HeroInfo("Amelia", "amelia@gmail.com", "assets/p4.jpg"),
    HeroInfo("Sophia", "sophia@gmail.com", "assets/p5.jpg"),
    HeroInfo("Isabella", "isabella@gmail.com", "assets/p6.jpg"),
    HeroInfo("Evelyn", "evelyn@gmail.com", "assets/p7.jpg"),
    HeroInfo("Ava", "ava@gmail.com", "assets/p8.jpg"),
    HeroInfo("Luna", "luna@gmail.com", "assets/p9.jpg"),
    HeroInfo("Harper", "Harper@gmail.com", "assets/p10.jpg"),
  ];
}
