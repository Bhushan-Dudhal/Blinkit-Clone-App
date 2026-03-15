import 'package:flutter/material.dart';
import 'package:package_delivery_app/Widgets/UiHelper.dart';

class Homescreen extends StatefulWidget {
  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  TextEditingController searchController = TextEditingController();

  var homecart = [
    {"img": "image_50.png", "title": "Lights, Diyas & Candles"},
    {"img": "image51.png", "title": "Diwali Gifts"},
    {"img": "image53.png", "title": "Appliances & Gadgets"},
    {"img": "image_50.png", "title": "Home & Living"},
    {"img": "image_50.png", "title": "Lights, Diyas & Candles"},
    {"img": "image_50.png", "title": "Lights, Diyas & Candles"},
  ];

  var category = [
    {
      "img": "image54.png",
      "title": "Lights, Diyas & \nCandles ",
      "price": "₹ 70",
    },
    {
      "img": "image57.png",
      "title": "Royal Gulab Jamun \nBy Bikano",
      "price": "₹ 100",
    },
    {"img": "image63.png", "title": "Bikaji Bhujia \nMasala", "price": "₹ 80"},
    {
      "img": "image54.png",
      "title": "Lights, Diyas & \nCandles ",
      "price": "₹ 70",
    },
    {
      "img": "image57.png",
      "title": "Royal Gulab Jamun \nBy Bikano",
      "price": "₹ 100",
    },
    {"img": "image63.png", "title": "Bikaji Bhujia \nMasala", "price": "₹ 80"},
  ];

  var grocerykitchen = [
    {"img": "image41.png", "text": "Vegetables & \nFruits"},
    {"img": "image42.png", "text": "Atta, Dal & \nRice"},
    {"img": "image43.png", "text": "Oil, Ghee & \nMasala"},
    {"img": "image44.png", "text": "Dairy, Bread & \nMilk"},
    {"img": "image45.png", "text": "Biscuits & \nBakery"},
    {"img": "image42.png", "text": "Atta, Dal & \nRice"},
    {"img": "image43.png", "text": "Oil, Ghee & \nMasala"},
    {"img": "image44.png", "text": "Dairy, Bread & \nMilk"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// HEADER
            Stack(
              children: [
                Container(
                  height: 190,
                  width: double.infinity,
                  color: Color(0XFFEC0505),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 40),

                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: UiHelper.customeText(
                          text: "Blinkit in",
                          color: Colors.white,
                          fontweght: FontWeight.bold,
                          fontSize: 15,
                          fontfamily: "bold",
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: UiHelper.customeText(
                          text: "16 minutes",
                          color: Colors.white,
                          fontweght: FontWeight.bold,
                          fontSize: 20,
                          fontfamily: "bold",
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            UiHelper.customeText(
                              text: "HOME ",
                              color: Colors.white,
                              fontweght: FontWeight.bold,
                              fontSize: 14,
                            ),
                            UiHelper.customeText(
                              text: "- Bhushan Dudhal, Pathardi (Nagar)",
                              color: Colors.white,
                              fontweght: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Positioned(
                  right: 20,
                  top: 60,
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.black,
                    child: Icon(Icons.person, color: Colors.white, size: 20),
                  ),
                ),

                Positioned(
                  bottom: 20,
                  left: 20,
                  right: 20,
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      controller: searchController,
                      decoration: InputDecoration(
                        hintText: "Search 'ice-cream'",
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: Icon(Icons.mic),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(height: 1, color: Colors.white),

            /// SALE SECTION
            Container(
              height: 220,
              width: double.infinity,
              color: Color(0XFFEC0505),
              child: Column(
                children: [
                  SizedBox(height: 10),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      UiHelper.customeImage(img: "image60.png"),
                      UiHelper.customeImage(img: "image55.png"),

                      UiHelper.customeText(
                        text: "Mega Diwali Sale",
                        color: Colors.white,
                        fontweght: FontWeight.w700,
                        fontSize: 20,
                        fontfamily: 'regular',
                      ),

                      UiHelper.customeImage(img: "image55.png"),
                      UiHelper.customeImage(img: "image60.png"),
                    ],
                  ),

                  SizedBox(height: 15),

                  /// HORIZONTAL LIST
                  SizedBox(
                    height: 120,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: homecart.length,
                      itemBuilder: (context, index) {
                        
                        return Container(
                          width: 90,
                          margin: EdgeInsets.symmetric(horizontal: 6),
                          decoration: BoxDecoration(
                            color: Color(0XFFEAD3D3),
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                homecart[index]['title'].toString(),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),

                              SizedBox(height: 5),

                              UiHelper.customeImage(
                                img: homecart[index]['img'].toString(),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 13),

            /// CATEGORY LIST
            SizedBox(
              height: 200,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: category.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                      width: 110,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          UiHelper.customeImage(
                            img: category[index]['img'].toString(),
                          ),

                          SizedBox(height: 5),

                          UiHelper.customeText(
                            text: category[index]['title'].toString(),
                            color: Colors.black,
                            fontweght: FontWeight.normal,
                            fontSize: 10,
                            fontfamily: 'regular',
                          ),

                          SizedBox(height: 5),

                          Row(
                            children: [
                              UiHelper.customeImage(img: "timer 4.png"),
                              SizedBox(width: 5),
                              Text(
                                "16 MINS",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 5),

                          UiHelper.customeText(
                            text: category[index]['price'].toString(),
                            color: Colors.black,
                            fontweght: FontWeight.bold,
                            fontSize: 14,
                            fontfamily: 'bold',
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

            // SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  UiHelper.customeText(
                    text: "Grocery & Kitchen",
                    color: Colors.black,
                    fontweght: FontWeight.w500,
                    fontSize: 14,
                    fontfamily: 'bold',
                  ),
                ],
              ),
            ),

            SizedBox(height: 10),
            Container(
              width: double.infinity,
              height: 140,
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: grocerykitchen.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 81,
                                width: 71,
                                decoration: BoxDecoration(
                                color: Color(0XFFD9EBEB),
                                borderRadius: BorderRadius.circular(11)
                            
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: UiHelper.customeImage(img: grocerykitchen[index]['img'].toString()),
                                )
                              ),
                            ),
                            UiHelper.customeText(text:grocerykitchen[index]['text'].toString(), color: Colors.black, fontweght: FontWeight.w600, fontSize: 10,fontfamily: 'regular'),
                          ],
                        );
                      },
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
