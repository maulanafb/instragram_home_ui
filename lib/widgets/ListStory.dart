import 'package:flutter/material.dart';

class ListStory extends StatelessWidget {
  final String judul;
  final String image;

  ListStory(this.image, this.judul);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(80),
                ),
              ),
              Container(
                height: 78,
                width: 78,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(image)),
                  border: Border.all(color: Colors.white, width: 5),
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(80),
                ),
              ),
            ],
          ),
          Text(judul)
        ],
      ),
    );
  }
}
