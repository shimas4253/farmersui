import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class mainpage extends StatelessWidget {
  const mainpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(
              'FARMERS FRESH ZONE',
              style: TextStyle(fontSize: 18),
            ),
            backgroundColor: Colors.greenAccent.shade700,
            actions: [
              Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: Colors.white,
                  ),
                  Text(
                    'Kochi',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  Icon(
                    Icons.expand_more,
                    color: Colors.white,
                  )
                ],
              )
            ],
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(40),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                        child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search for vegitable and fruits....',
                          prefixIcon: Icon(Icons.search)),
                    ))),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                width: 400,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.green),
                          color: Colors.greenAccent.withOpacity(.3)),
                      child: Center(
                          child: Text(
                        'Vegitables',
                        style: TextStyle(
                            color: Colors.green.shade800,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.green),
                          color: Colors.greenAccent.withOpacity(.3)),
                      child: Center(
                          child: Text(
                        'Fruits',
                        style: TextStyle(
                            color: Colors.green.shade800,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.green),
                          color: Colors.greenAccent.withOpacity(.3)),
                      child: Center(
                          child: Text(
                        'Extotic',
                        style: TextStyle(
                            color: Colors.green.shade800,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.green),
                          color: Colors.greenAccent.withOpacity(.3)),
                      child: Center(
                          child: Text(
                        'Freshcuts',
                        style: TextStyle(
                            color: Colors.green.shade800,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: CarouselSlider(
                  items: [
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://theboatgalley.com/wp-content/uploads/Adding_Flavor_To_MeatsFB.jpg'),
                              fit: BoxFit.fill)),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://www.fitandflexgranola.com/wp-content/uploads/2021/08/list-of-dry-fruits-swith-their-benefits.jpg'),
                              fit: BoxFit.fill)),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://blog.daraz.pk/wp-content/uploads/2020/01/Fruits__Veggies_Banner.jpg'),
                              fit: BoxFit.fill)),
                    ),
                  ],
                  options: CarouselOptions(
                    height: 200,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: true,
                    autoPlay: true,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    autoPlayAnimationDuration: Duration(seconds: 1),
                    viewportFraction: 1,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 100,
                width: 250,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0, left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.timer_rounded,
                              color: Colors.green,
                              size: 35,
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              '30 MINUTS POLICY',
                              style: TextStyle(
                                  color: Colors.black.withOpacity(.5),
                                  fontSize: 10),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0, left: 45),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.phonelink_lock_outlined,
                              color: Colors.green,
                              size: 35,
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              'TRACEBILITY',
                              style: TextStyle(
                                  color: Colors.black.withOpacity(.5),
                                  fontSize: 10),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0, left: 50),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.local_police_outlined,
                              color: Colors.green,
                              size: 35,
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              'LOCAL SCOURING',
                              style: TextStyle(
                                  color: Colors.black.withOpacity(.5),
                                  fontSize: 10),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ])),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.black,
        elevation: 40,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'HOME'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'SHOP'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: 'ACCOUNT')
        ],
      ),
    );
  }
}
