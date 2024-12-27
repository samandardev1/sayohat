import 'package:flutter/material.dart';

final List<Map<String, dynamic>> imagesData = [
  {
    'type': 'Mehmonxona',
    'images': [
      'rasimlar/02.jpg',
      'rasimlar/03.jpg',
      'rasimlar/04.jpg',
      'rasimlar/02.jpg',
    ],
    'texts': [
      'Turi : Mehmonxona',
      'Viloyat : Namangan',
      "Mo'jal : Namangan To'raqo'rg'on ",
      'Tavsif : Hamma sharoyitlar bor honalar shinam ',
      "Narxi : 400#",
    ],
  },
  {
    'type': 'Mehmonxona',
    'images': [
      'rasimlar/02.jpg',
      'rasimlar/03.jpg',
      'rasimlar/04.jpg',
      'rasimlar/02.jpg',
    ],
    'texts': [
      'Turi : Mehmonxona',
      'Viloyat : Namangan',
      "Mo'jal : Namangan To'raqo'rg'on ",
      'Tavsif : Hamma sharoyitlar bor honalar shinam ',
      "Narxi : 400#",
    ],
  },
  {
    'type': 'Mehmonxona',
    'images': [
      'rasimlar/02.jpg',
      'rasimlar/03.jpg',
      'rasimlar/04.jpg',
      'rasimlar/02.jpg',
    ],
    'texts': [
      'Turi : Mehmonxona',
      'Viloyat : Namangan',
      "Mo'jal : Namangan To'raqo'rg'on ",
      'Tavsif : Hamma sharoyitlar bor honalar shinam ',
      "Narxi : 400#",
    ],
  },
  {
    'type': 'Mehmonxona',
    'images': [
      'rasimlar/02.jpg',
      'rasimlar/03.jpg',
      'rasimlar/04.jpg',
      'rasimlar/02.jpg',
    ],
    'texts': [
      'Turi : Mehmonxona',
      'Viloyat : Namangan',
      "Mo'jal : Namangan To'raqo'rg'on ",
      'Tavsif : Hamma sharoyitlar bor honalar shinam ',
      "Narxi : 400#",
    ],
  },
  {
    'type': 'Mehmonxona',
    'images': [
      'rasimlar/02.jpg',
      'rasimlar/03.jpg',
      'rasimlar/04.jpg',
      'rasimlar/02.jpg',
    ],
    'texts': [
      'Turi : Mehmonxona',
      'Viloyat : Namangan',
      "Mo'jal : Namangan To'raqo'rg'on ",
      'Tavsif : Hamma sharoyitlar bor honalar shinam ',
      "Narxi : 400#",
    ],
  },
  {
    'type': 'Kvartira',
    'images': [
      'rasimlar/02.jpg',
      'rasimlar/02.jpg',
      'rasimlar/04.jpg',
      'rasimlar/01.jpeg',
    ],
    'texts': [
      'Turi : Mehmonxona',
      'Viloyat : Namangan',
      "Mo'jal : Namangan To'raqo'rg'on ",
      'Tavsif : Hamma sharoyitlar bor honalar shinam ',
      "Narxi : 400#",
    ],
  },
  {
    'type': 'Sanatoriya',
    'images': [
      'rasimlar/04.jpg',
      'assets/image3_2.jpg',
      'assets/image3_3.jpg',
      'assets/image3_4.jpg',
    ],
    'texts': [
      'Turi : Mehmonxona',
      'Viloyat : Namangan',
      "Mo'jal : Namangan To'raqo'rg'on ",
      'Tavsif : Hamma sharoyitlar bor honalar shinam ',
      "Narxi : 400#",
    ],
  },
  {
    'images': [
      'rasimlar/03.jpg',
      'assets/image4_2.jpg',
      'assets/image4_3.jpg',
      'assets/image4_4.jpg',
    ],
    'texts': [
      'Turi : Mehmonxona',
      'Viloyat : Namangan',
      "Mo'jal : Namangan To'raqo'rg'on ",
      'Tavsif : Hamma sharoyitlar bor honalar shinam ',
      "Narxi : 400#",
    ],
  },
];


class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: imagesData.length,
          itemBuilder: (context, index) {
            final _pageController = PageController();
            return GestureDetector(
              onTap: () {
                
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 250.0,
                        child: PageView.builder(
                          controller: _pageController,
                          itemCount: imagesData[index]['images'].length,
                          itemBuilder: (context, imageIndex) {
                            return ClipRRect(
                              borderRadius: BorderRadius.circular(12.0),
                              child: Image.asset(
                                imagesData[index]['images'][imageIndex],
                                fit: BoxFit.cover,
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      imagesData[index]['texts'].join('\n'),
                      style: const TextStyle(fontSize: 16.0),
                    ),
                  ),
                  const Divider(thickness: 1.0),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
