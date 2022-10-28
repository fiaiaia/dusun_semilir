import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pantai Ngebum',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const DetailScreen(),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 228, 218, 214),
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'images/pantai_ngebum.jpg', 
              height: 180,
            ),

            Container(
              margin: const EdgeInsets.only(top: 15),
              child: const Text(
                'Pantai Ngebum',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w800,
                  color: Colors.brown
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.symmetric(vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(Icons.calendar_today),
                      SizedBox(height: 5),
                      Text('Buka Setiap Hari'),
                    ],
                  ),

                  Column(
                    children: [
                      Icon(Icons.access_time),
                      SizedBox(height: 5),
                      Text('24 Jam'),
                    ],
                  ),

                  Column(
                    children: [
                      Icon(Icons.monetization_on),
                      SizedBox(height: 5),
                      Text('Rp 5.000'),
                    ],
                  ),    
                ],
              ),
            ),

            Container(
              color: Color.fromARGB(255, 157, 138, 131),
              padding: const EdgeInsets.all(15),
              margin: EdgeInsets.all(10),
              child: const Text(
                ''' Pantai Ngebum bisa dibilang memiliki area yang cukup luas. Bukan hanya itu para pedagangnya juga banyak banget, mulai dari makanan, minuman, hingga pakaian.

Ragam wisata yang dapat kamu lakukan juga banyak, mau mancing juga bisa, dan yang nggak boleh dilewatkan ialah santuy sambil menikmati sajian sunset yang menawan. ''',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Poppins', 
                  fontSize: 12
                ),
              ),
            ),

            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        'https://cdn.nativeindonesia.com/foto/2022/09/menara-pengawas-pantai-ngebum.jpg'
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        'https://cdn.nativeindonesia.com/foto/2022/09/aktivitas-favorit-pengunjung.jpg'
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        'https://cdn.nativeindonesia.com/foto/2022/09/berburu-sunset-di-pantai-ngebum-kaliwungu.jpg'
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ),
    );
  }
}
