import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "images/meccis.jpg",
              height:
                  400, // Mengurangi tinggi gambar untuk memberikan lebih banyak ruang di bagian bawah
            ),
            Container(
              margin: EdgeInsets.only(top: 30), // Mengurangi margin atas
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: "LET'S BUY A ",
                      style: TextStyle(
                        foreground: Paint()
                          ..shader = LinearGradient(
                            colors: [
                              Color.fromARGB(255, 196, 93, 127),
                              Color.fromARGB(255, 196, 93, 127)
                            ],
                          ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)),
                      ),
                    ),
                    TextSpan(
                      text: "VEIL ",
                      style:
                          TextStyle(color: Color.fromARGB(255, 196, 93, 127)),
                    ),
                    TextSpan(
                      text: "AT MECCI'S ",
                      style: TextStyle(
                        foreground: Paint()
                          ..shader = LinearGradient(
                            colors: [
                              Colors.black,
                              const Color.fromARGB(255, 0, 0, 0)
                            ],
                          ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)),
                      ),
                    ),
                    TextSpan(
                      text: "SHOP",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20), // Jarak antara teks dan tombol
            ElevatedButton(
              onPressed: () {
                // Aksi ketika tombol ditekan
                Navigator.pushReplacementNamed(context, '/HomePage');
              },
              style: ElevatedButton.styleFrom(
                primary:
                    Color.fromARGB(255, 190, 120, 143), // Warna latar belakang
                onPrimary:
                    const Color.fromARGB(255, 255, 255, 255), // Warna teks
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                textStyle: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              child: Text('Get Started'),
            ),
          ],
        ),
      ),
    );
  }
}
