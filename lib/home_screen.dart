import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        color: Colors.grey,
                        width: 1.0
                      ),
                      bottom: BorderSide(
                        color: Colors.grey,
                        width: 1.0
                      )
                    )
                  ),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Icon(
                          Icons.search,
                          weight: 0.1,
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search Product',
                            border: InputBorder.none
                          ),
                        ),
                      ),
                    ],
                  ),
                ), // Searchbar
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: Row(
                    children: [
                      Container(
                        child: Text(
                          'Men'
                        ),
                      ),
                      Container(
                        child: Text(
                          'Kids'
                        ),
                      )
                    ],
                  ),
                ), // Category

                SizedBox(
                  width: double.infinity,
                  height: 200,
                  child: Image.asset(
                    'assets/images/promotions.jpg',
                    fit: BoxFit.fitWidth,
                  ),
                ),

                ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 16.0),
                      child: ListTile(
                        leading: Image.asset(
                          'assets/icons/shoes.png',
                          width: 40,
                          height: 40,
                        ),
                        title: const Text('Shoes'),
                      ),
                    ),
                    const Divider(
                      color: Color.fromARGB(255, 240, 240, 240),
                      thickness: 1.0,
                    ),
                                        Container(
                      margin: const EdgeInsets.only(left: 16.0),
                      child: ListTile(
                        leading: Image.asset(
                          "assets/icons/polo-shirt.png",
                          width: 30,
                          height: 30,
                        ),
                        title: const Text('Clothing'),
                      ),
                    ),
                    const Divider(
                      color: Color.fromARGB(255, 240, 240, 240),
                      thickness: 1.0,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 16.0),
                      child: ListTile(
                        leading: Image.asset(
                          "assets/icons/hat.png",
                          width: 30,
                          height: 30,
                        ),
                        title: const Text(
                          'Accessories',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    const Divider(
                      color: Color.fromARGB(255, 240, 240, 240),
                      thickness: 1.0,
                    ),
                  ],
                ),

                GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  childAspectRatio: 2,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: const Color.fromARGB(255, 240, 240, 240),
                        ),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.local_offer, color: Colors.black),
                            const SizedBox(height: 8.0),
                            Text(
                              'SALE',
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: const Color.fromARGB(255, 240, 240, 240),
                        ),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.sports, color: Colors.black),
                            const SizedBox(height: 8.0),
                            Text(
                              'SPORT',
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: const Color.fromARGB(255, 240, 240, 240),
                        ),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.trending_up, color: Colors.black),
                            const SizedBox(height: 8.0),
                            Text(
                              'NEW AND TRENDING',
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: const Color.fromARGB(255, 240, 240, 240),
                        ),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.card_giftcard,
                                color: Colors.black),
                            const SizedBox(height: 8.0),
                            Text(
                              'GIFT CARDS',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}