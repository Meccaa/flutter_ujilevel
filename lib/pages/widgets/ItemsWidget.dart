import 'package:flutter/material.dart';

// Definisikan widget untuk ItemPage
class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(15),
                height: 350,
                width: double.infinity,
                alignment: Alignment.topLeft,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/2.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Tambahkan elemen lainnya sesuai kebutuhan di sini
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Detail tentang item',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ItemsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10, right: 10, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Top",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFEC407A),
                ),
              ),
              Text(
                "See All",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
        GridView.count(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          physics: NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          shrinkWrap: true,
          children: [
            for (int i = 1; i < 8; i++)
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 8,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'ItemPage');
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        child: Image.asset("images/$i.jpg"),
                        height: 110,
                        width: 110,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Item title",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF555555),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Hijab's",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF555555),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        children: [
                          Text(
                            "25",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 136, 177),
                            ),
                          ),
                          SizedBox(width: 100), // Adds space between the price and the button
                          InkWell(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 255, 136, 177),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(
                                Icons.add_shopping_cart,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ],
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text('Items Widget Example')),
      body: ItemsWidget(),
    ),
    routes: {
      'ItemPage': (context) => ItemPage(), // Definisikan rute ItemPage
    },
  ));
}
