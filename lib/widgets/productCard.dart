import 'package:flutter/material.dart';
import 'package:flutter_ui_design_task/widgets/dynamicSize.dart';

Widget productCard(context, name, String image, location) {
  return InkWell(
    onTap: () {},
    child: Container(
      margin:
          const EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
      width: AppSizes.dynamicWidth(context, 0.4),
      height: AppSizes.dynamicHeight(context, 0.30),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(245, 255, 255, 1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            height: 90,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 5,
                  blurRadius: 30,
                  offset: Offset(28, 28), // changes position of shadow
                ),
              ],
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Wrap(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  name,
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Wrap(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 5),
                    child: Image.asset("location.png"),
                  ),
                  Text(
                    location,
                    style: TextStyle(fontSize: 8, color: Colors.black),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    ),
  );
}
