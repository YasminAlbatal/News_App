import 'package:flutter/material.dart';
import 'package:news_app/views/category_view.dart';

class card extends StatelessWidget {
  String title;

  String image;

  card({required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => CategoryView(category: title,title: title,),
        ));
      },
      child: Container(
        margin: const EdgeInsets.only(left: 16, top: 20, bottom: 10),
        height: 130,
        width: 175,
        child: Center(
            child: Text(
          title,
          style: TextStyle(
            fontSize: 22,
            color: Colors.white.withOpacity(1),
            fontWeight: FontWeight.w900,
          ),
        )),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image:
                DecorationImage(fit: BoxFit.cover, image: AssetImage(image))),
      ),
    );
  }
}
