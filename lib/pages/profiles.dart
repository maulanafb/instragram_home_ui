import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/Tabbar.dart';

import '../widgets/ImageProfile.dart';
import '../widgets/ListStory.dart';

import '../widgets/datadata.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Text(
              'Maulanafb_',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            Icon(
              Icons.arrow_drop_down,
              color: Colors.black,
            ),
          ],
        ),
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.add_box_outlined,
                  color: Colors.black,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
              ),
            ],
          )
        ],
      ),
      body: ListView(children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  ImageProfile(),
                  DataData('200', 'Post'),
                  DataData('200M', 'Followers'),
                  DataData('200', 'Following'),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'MaulanaFb',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              RichText(
                text: TextSpan(
                  text: 'Pontianak 3 mei 2022 eat sleep repeat\n',
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: '#AKUMAINBERSIH',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  text: 'LinkTree',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 7,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: OutlinedButton(
            onPressed: () {},
            child: Text(
              'Edit Profile',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ListStory(
                    'https://quotescover.com/wp-content/themes/qc2019/images/quotes-poster-anatomy.webp',
                    'tang Snas'),
                ListStory(
                    'https://quotescover.com/wp-content/themes/qc2019/images/quotes-poster-anatomy.webp',
                    'tang Snas'),
                ListStory(
                    'https://quotescover.com/wp-content/themes/qc2019/images/quotes-poster-anatomy.webp',
                    'tang Snas'),
                ListStory(
                    'https://quotescover.com/wp-content/themes/qc2019/images/quotes-poster-anatomy.webp',
                    'tang Snas'),
                ListStory(
                    'https://quotescover.com/wp-content/themes/qc2019/images/quotes-poster-anatomy.webp',
                    'tang Snas'),
                ListStory(
                    'https://quotescover.com/wp-content/themes/qc2019/images/quotes-poster-anatomy.webp',
                    'tang Snas'),
              ],
            ),
          ),
        ),
        Row(
          children: [
            TabBarr(true, Icons.grid_on_outlined),
            TabBarr(false, Icons.person_pin_outlined),
          ],
        ),
        GridView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: ScrollPhysics(),
            itemCount: 200,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, mainAxisSpacing: 5, crossAxisSpacing: 5),
            itemBuilder: (context, index) {
              return Image.network(
                  'https://quotescover.com/wp-content/uploads/2022/06/fear_uncertainty.jpg');
            })
      ]),
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          currentIndex: 4,
          showUnselectedLabels: false,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'adw'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'adw'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'adw'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'adw'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'adw'),
          ]),
    );
  }
}
