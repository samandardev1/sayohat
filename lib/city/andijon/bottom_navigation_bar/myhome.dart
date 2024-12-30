import 'package:flutter/material.dart';
import 'package:sayohat/city/andijon/drawer/mexmonxona.dart';
import 'package:sayohat/city/andijon/drawer/restaran.dart';

final List<Map<String, dynamic>> imagesData = [
  {
    'type': 'Mehmonxonalar',
    'images': [
      'rasimlar/02.jpg',
      'rasimlar/03.jpg',
      'rasimlar/04.jpg',
      'rasimlar/02.jpg',
    ],
    'texts': [
      'Turi : Hotel, Hostel, ',
      'Manzil: Andijon shaxri 23-uy'
      "Mo'jal : Markaziy bank yonida ",
      'Tavsif : Barcha sharoyitlar bor honalar shinam ',
      "Batafsil malumot olish uchun bosing",
    ],
  },
  {
    'type': 'Restaranlar',
    'images': [
      'rasimlar/res1.jpeg',
      'rasimlar/res4.jpeg',
      'rasimlar/res5.jpeg',
      'rasimlar/res3.jpeg',
      'rasimlar/res2.jpeg',
    ],
    'texts': [
      'Turi : Restaran, choyxona, kafe',
      'Manzil : Andijon shaxar',
      "Mo'jal : Navro'z mall",
      'Tavsif : Barcha turdagi taomlar mavjud ',
      "Batafsil malumot olish uchun bosing",
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
      'rasimlar/02.jpg',
      'rasimlar/03.jpg',
      'rasimlar/04.jpg',
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
      'rasimlar/02.jpg',
      'rasimlar/03.jpg',
      'rasimlar/04.jpg',
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
                 if (index == 0) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MehmonxonaScreen()),
                  );
                } else if (index == 1) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const RestarnScreen()),
                  );
                }
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







