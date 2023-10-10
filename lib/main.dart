import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'Pertemuan1Page.dart';
import 'Pertemuan2Page.dart';
import 'Pertemuan3Page.dart';
import 'Pertemuan4Page.dart';

void main() {
  runApp(MenuApp());
}

class MenuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menu Pemrograman IV',
      home: MenuPage(),
    );
  }
}

class MenuPage extends StatelessWidget {
  final List<String> menuItems =
      List.generate(15, (index) => 'Pertemuan ${index + 1}');

  final List<String> carouselImages = [
    'images/c1.jpg',
    'images/c2.jpg',
    'images/c3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Pemrograman IV'),
      ),
      body: Column(
        children: [
          Container(
            margin:
                EdgeInsets.symmetric(vertical: 10.0), // Margin atas dan bawah
            child: CarouselSlider(
              options: CarouselOptions(
                height: 100.0,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
              ),
              items: carouselImages.map((imagePath) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          imagePath,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: menuItems.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Tambahkan logika navigasi ke halaman masing-masing pertemuan di sini
                      // Misalnya, Anda dapat menggunakan Navigator.push untuk melakukan navigasi.
                      if (index == 0) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Pertemuan1Page(),
                          ),
                        );
                      } else if (index == 1) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Pertemuan2Page(),
                          ),
                        );
                      } else if (index == 2) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Pertemuan3Page(),
                          ),
                        );
                      } else if (index == 3) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Pertemuan4Page(),
                          ),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      onPrimary: Colors.white,
                      padding: EdgeInsets.all(16.0),
                      textStyle: TextStyle(fontSize: 18.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Text(menuItems[index]),
                  ),
                );
              
              },
            ),
          ),
        ],
      ),
    );
  }
}
