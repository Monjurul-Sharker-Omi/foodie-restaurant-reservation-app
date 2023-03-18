import 'package:flutter/material.dart';
import 'package:flutter_ui_design_task/models/hotelInfo.dart';
import 'package:flutter_ui_design_task/widgets/listofhotels.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Container(
            height: height * 0.1,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              color: Colors.green,
            ),
            child: const Center(
                child: Text(
              "Booking History",
              style: TextStyle(fontSize: 15, color: Colors.white),
            )),
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
                        "Check");
                  })),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 5,
                    blurRadius: 30,
                    offset: Offset(28, 28), // changes position of shadow
                  ),
                ]),
            height: height * 0.08,
            width: width * 0.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.add_rounded,
                  color: Colors.grey[600],
                ),
                Text(
                  "Booking More",
                  style: TextStyle(fontSize: 20, color: Colors.grey[600]),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
