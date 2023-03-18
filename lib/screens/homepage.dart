import 'package:flutter/material.dart';
import 'package:flutter_ui_design_task/models/hotelInfo.dart';
import 'package:flutter_ui_design_task/models/productInfo.dart';
import 'package:flutter_ui_design_task/widgets/listofhotels.dart';
import 'package:flutter_ui_design_task/widgets/productCard.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    iconSize: 20,
                    icon: const Icon(Icons.menu_rounded),
                    onPressed: () {},
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Image.asset("location.png"),
                          Text(
                            " Moundulybag, Sylhet",
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      )
                    ],
                  ),
                  const CircleAvatar(
                    backgroundImage: AssetImage('mypic.jpg'),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: height * 0.05,
              width: width * 0.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey[200],
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                    hintText: "Search",
                    border: InputBorder.none,
                    fillColor: Colors.black,
                    prefixIcon: Icon(Icons.search)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: height * 0.8,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                physics: const ScrollPhysics(),
                child: Column(
                  children: [
                    SizedBox(
                      //margin: EdgeInsets.only(left: 20, right: 20),
                      width: double.infinity,
                      height: height * 0.15,
                      //color: Colors.grey[100],
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          customChips(
                            context,
                            "burger.png",
                          ),
                          customChips(context, "burger.png"),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: width * 0.9,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              child: Text(
                            "Today New Arrivals",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          )),
                          Text(
                            "See all >",
                            style: TextStyle(
                                fontSize: 13, color: Colors.grey[500]),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                        width: double.infinity,
                        height: height * 0.3,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: productInfo.length,
                            itemBuilder: (context, index) {
                              return productCard(
                                  context,
                                  productInfo[index].name,
                                  productInfo[index].image,
                                  productInfo[index].location);
                            })),
                    Container(
                      width: width * 0.9,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              child: Text(
                            "Explore Restaurants",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          )),
                          Text(
                            "See all >",
                            style: TextStyle(
                                fontSize: 13, color: Colors.grey[500]),
                          )
                        ],
                      ),
                    ),
                    Container(
                        width: double.infinity,
                        height: height * 0.4,
                        //color: Colors.amber,
                        child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: hotelInfo.length,
                            itemBuilder: (context, index) {
                              return ListofHotels(
                                  context,
                                  hotelInfo[index].name,
                                  hotelInfo[index].image,
                                  hotelInfo[index].location,
                                  hotelInfo[index].city,
                                  "Book");
                            })),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

Widget customChips(context, imagename) {
  var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;
  return Padding(
    padding: const EdgeInsets.only(left: 20),
    child: Container(
      height: height * 0.06,
      width: width * 0.6,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 92, 176, 224),
        borderRadius: BorderRadius.circular(30),
        image: DecorationImage(
          image: AssetImage(imagename),
          fit: BoxFit.fill,
        ),
      ),
    ),
  );
}
