import 'package:flutter/material.dart';
import 'package:uas_papb_kel3/kategori.dart';
// IMAGES
var pecel1 = 'https://i.ibb.co/s1RpfXD/pecel.jpg';
var pecel2 = 'https://i.ibb.co/Smfw2R0/pecel2.jpg';

// COLORS
var textYellow = Color.fromARGB(255, 247, 235, 75);
var iconYellow = Color.fromARGB(255, 247, 235, 75);

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          SizedBox(height: 16.0),
          pecelList(),
          SizedBox(height: 16.0),
          kategori(),
          SizedBox(height: 16.0),
          listmenu(),
        ],
      ),
    );
  }
}


class pecelList extends StatelessWidget {
  const pecelList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        height: 160.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            ItemCard(),
            ItemCard(),
            ItemCard(),
          ],
        ),
      ),
    );
  }
}


class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        height: 200.0,
        width: 320.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(pecel1),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: <Widget>[
            Container(
              height: 200.0,
              width: 320.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0.1),
                    Colors.black,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Spacer(),
                  Text(
                    'Promo 20%',
                    style: TextStyle(
                      color: textYellow,
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0,
                      letterSpacing: 1.1,
                    ),
                  ),
                  Text(
                    'Untuk 10 Pembeli Pertama',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      letterSpacing: 1.1,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class MenuItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final String rating;

  const MenuItem({
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.rating,
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 100.0,
            width: 100.0,
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 16.0,
          ),
          Container(
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 187, 0),
                        borderRadius: BorderRadius.circular(4.0)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 4.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            size: 15.0,
                          ),
                          Text(rating),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    title,
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  Container(
                    width: 200.0,
                    child: Text(
                      description,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class listmenu extends StatelessWidget {
  const listmenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Menu Pilihan',
            style: TextStyle(fontSize: 22.0, color: Colors.black54),
          ),
          SizedBox(height: 16.0),
          MenuItem(
            imageUrl: pecel2,
            title: 'Pecel Sambel Tumpang',
            description: 'Pecel, Sambel Tumpang, Telur Bali, Sate Usus, ...',
            rating: '4.5',
          ),
          MenuItem(
            imageUrl: pecel2,
            title: 'Pecel Sambel Tumpang',
            description: 'Pecel, Sambel Tumpang, Telur Bali, Sate Usus, ...',
            rating: '4.5',
          ),
        ],
      ),
    );
  }
}
