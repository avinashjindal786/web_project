

import 'dart:developer';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    final hight = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    print(hight.toString());
    print(width.toString());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Desktop"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded( 
                  flex: 5,                 
                  child: Column(children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 12),
                      height: hight * 0.6,
                      
                      color: Colors.red,
                    ),Container(
                      margin: EdgeInsets.only(bottom: 12),
                      height: hight * 0.2,
                      
                      color: Colors.red,
                    ),Container(
                      margin: EdgeInsets.only(bottom: 12),
                      height: hight * 0.2,
                      
                      color: Colors.red,
                    ),Container(
                      margin: EdgeInsets.only(bottom: 12),
                      height: hight * 0.2,
                      
                      color: Colors.red,
                    ),
                  ]),
                ),
                
                width >= 800
                    ? Expanded(
                      flex: 1,
                      child: Container(
                          margin: EdgeInsets.only(left: 8),
                          height: double.minPositive,
                          color: Colors.red,
                          // width: 160,
                        ),
                    )
                    : const SizedBox()
                
              ],
            )
            
          ]),
        ),
      ),
    );
  }
}