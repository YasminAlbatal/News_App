import 'package:flutter/material.dart';

class contentItem extends StatelessWidget {
  String title1;
  String title2;
  String image;


  contentItem({required this.title1,required this.title2 ,required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top:30,left: 16,right: 16),
          height: 200,
          width: 400,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image:
                  DecorationImage(fit: BoxFit.cover, image: NetworkImage(image))),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30.0,right: 30),
          child: Text(

            title1,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 21,
              color: Colors.black,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 35.0,right: 30),
          child: Text(
            title2,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black.withOpacity(0.5),
            ),
          ),
        )
      ],
    );
  }
}
