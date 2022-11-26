import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

var images = [
  'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/assortment-of-colorful-ripe-tropical-fruits-top-royalty-free-image-995518546-1564092355.jpg',
  'https://www.healthyeating.org/images/default-source/home-0.0/nutrition-topics-2.0/general-nutrition-wellness/2-2-2-2foodgroups_vegetables_detailfeature.jpg?sfvrsn=226f1bc7_6',
  'https://5.imimg.com/data5/FT/AK/MY-2574561/exotic-vegetables-500x500.jpg',
  'https://www.moceriproduce.com/wp-content/uploads/2016/04/Fresh-cut-1.jpg',
  'https://www.eatright.org/-/media/eatrightimages/food/nutrition/vegetarianandspecialdiets/foodsourcesof5importantnutrientsforvegetarians.jpg',
  'https://www.foodnavigator-usa.com/var/wrbm_gb_food_pharma/storage/images/publications/food-beverage-nutrition/foodnavigator-usa.com/news/markets/ethnic-flavors-and-other-trends-heat-up-in-food-and-beverage-launches-innova-says/8768622-1-eng-GB/Ethnic-flavors-and-other-trends-heat-up-in-food-and-beverage-launches-Innova-says.jpg'
];
var items = [
  'fruits',
  'vegetable',
  'exotic',
  'fresh cuts',
  'nutrition',
  'packed flavors'
];

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
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                'SHOPE BY CATEGORY',
                style: TextStyle(fontSize: 20),
              ),
            ),
            GridView.builder(
                physics: ScrollPhysics(),
                shrinkWrap: true,
                itemCount: images.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 1,
                  mainAxisSpacing: 3,
                ),
                itemBuilder: (context, int index) {
                  return Card(
                    elevation: 20,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(images[index]),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    topLeft: Radius.circular(10))),
                            height: 100,
                            width: 120,
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(items[index])
                        ],
                      ),
                    ),
                  );
                })
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
