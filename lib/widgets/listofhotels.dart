import 'package:flutter/material.dart';
import 'package:flutter_ui_design_task/widgets/dynamicSize.dart';

Widget ListofHotels(context, name, String image, location, city, action) {
  var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;
  return InkWell(
    onTap: () {},
    child: Container(
      //color: Colors.black,
      margin:
          const EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
      width: width * 0.7,
      height: height * 0.12,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.grey[100]),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(image),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                name,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
              Row(
                children: [
                  Image.asset('location.png'),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: width * 0.4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          location,
                          style:
                              TextStyle(fontSize: 10, color: Colors.grey[500]),
                        ),
                        Text(
                          city,
                          style:
                              TextStyle(fontSize: 10, color: Colors.grey[500]),
                        )
                      ],
                    ),
                  ),
                  Container(
                      height: height * 0.05,
                      width: width * 0.25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.green),
                      child: Center(
                        child: Text(
                          action,
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ))
                ],
              )
            ],
          )
        ],
      ),
    ),
  );
}
