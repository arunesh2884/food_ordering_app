import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ItemScreen extends StatelessWidget {
  const ItemScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black45,
          ),
        ),
        title: Text(
          "Pizza",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.favorite,
              color: Color(0xffff2f08),
              size: 28,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 10),
          Text(
            "Mixed Pizza with chilli and cheese",
            style: TextStyle(
              color: Colors.black45,
              fontSize: 17,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8),
          Row(mainAxisAlignment : MainAxisAlignment.center,children: [
            Icon(Icons.star,color: Color(0xFFFF2F88),size: 22,),
            SizedBox(width: 2),
            Text(
                "4.7",
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 16,
                )
            ),
          ]
          ),
          Padding(
            padding: EdgeInsets.all(25),
            child: Image.asset("assets/pizza.jpg"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    "Calories",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black45,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "120",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Container(height: 30,
                  width: 2,
                  color: Colors.black38
              ),
              Column(
                children: [
                  Text(
                    "Volume",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black45,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "12 inch",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Container(height: 30,
                  width: 2,
                  color: Colors.black38
              ),
              Column(
                children: [
                  Text(
                    "Distance",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black45,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "1 KM",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 40),
          Padding(padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "Oredr",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black45,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(
                          Icons.add_circle_outline_rounded,
                          color: Colors.black45,
                        ),
                        SizedBox(width: 2),
                        Text(
                          "01",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 2),
                        Icon(
                          CupertinoIcons.minus_circle,
                          color: Colors.black45,
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text("Delivery",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black45,
                        fontWeight: FontWeight.w500,
                      ),),
                    SizedBox(height: 8),
                    Text("Express",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),),
                  ],
                ),
                Column(children: [
                  Text("Price",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black45,
                      fontWeight: FontWeight.w500,
                    ),),
                  SizedBox(height: 8),
                  Text("\$8.99",
                    style:TextStyle(
                      fontSize: 17,
                      color: Color(0xFFFFF2F08),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],),
              ],
            ),
          ),
        ],
        ),

      ),
      bottomNavigationBar: InkWell(
        onTap: (){},
        child: Container(
          height: 60,
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          padding: EdgeInsets.symmetric(vertical: 20),
          decoration: BoxDecoration(
            color: Color(0xFFFF2F08),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Add to cart",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),),
              SizedBox(width: 10),
              Icon(Icons.add_circle_outline_rounded,
                color: Colors.white,
                size: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}