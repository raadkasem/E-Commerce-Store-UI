
import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/models/product.dart';
import 'package:store_app/widgets/home/product_cart.dart';
import 'package:store_app/screens/details_screen.dart';


class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //SafeArea for Alighment and padding
    //Column لانه كل عناصر مصفوفين بشكل عامودي من فوق لتحت
    //stack لأنه بدنا نحط عناصر فوق بعضهم البعض
    return SafeArea(
        bottom: false,
        child: Column(
      children: [
        SizedBox(
          height: kDefaultPadding,
        ),
        Expanded(
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 70.0) ,
                decoration: BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    )),
              ),
              ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index)=> ProductCard(
                  itemIndex: index,
                  product: products[index] ,
                  press: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context)=> DetailsScreen(
                          product: products[index],
                          ),
                      ),);
                  },
                            
                ),
              ),
            ],
        ))
      ],
    ));
  }
}
