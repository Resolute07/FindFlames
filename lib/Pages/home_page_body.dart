import 'package:find_flames/chatList.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'bottom.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({super.key});

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  Lists list = Lists();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f5f5),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Container(
            height: 80,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(list.Images[1]),
                      backgroundColor: Colors.red,
                      radius: 30,
                    ),
                    Text(
                      "Find Flames",
                      style: TextStyle(color: Colors.pink, fontSize: 20),
                    ),
                    Icon(Icons.menu)
                  ]),
            ),
          ),
          Container(
              padding: EdgeInsets.only(left: 30),
              height: 180,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: list.Names.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 100,
                      width: 90,
                      margin: EdgeInsets.only(bottom: 25, top: 25, right: 10),
                      color: Colors.transparent,
                      child: Stack(children: [
                        Container(
                          height: 110,
                          width: 90,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(list.Images[index])),
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(15)),
                        ),
                        Positioned(
                            left: 15,
                            bottom: 10,
                            child: Container(
                              padding: EdgeInsets.all(0),
                              height: 20,
                              width: 60,
                              child: Center(
                                child: Row(
                                  children: [
                                    Text(
                                      list.Names[index],
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    Icon(
                                      Icons.verified,
                                      color: Colors.blue,
                                      size: 15,
                                    )
                                  ],
                                ),
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white),
                            ))
                      ]),
                    );
                  })),
          Container(
            height: 465,
            width: 390,
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 435,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    child: Container(
                      padding: EdgeInsets.only(top: 20),
                      child: ListView.builder(
                          itemCount: list.ChatList.length,
                          itemBuilder: (context, index) {
                            return Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 25,
                              ),
                              height: 100,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  CircleAvatar(
                                      radius: 30,
                                      backgroundImage: NetworkImage(
                                          list.ChatImgLink[index])),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 22,
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(list.ChatList[index]),
                                          Icon(
                                            Icons.verified,
                                            color: Colors.blue,
                                          )
                                        ],
                                      ),
                                      Text("Hii!!")
                                    ],
                                  ),
                                  SizedBox(
                                    width: 140,
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 22,
                                      ),
                                      Text("13:10"),
                                      CircleAvatar(
                                        child: Text('1'),
                                        radius: 10,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            );
                          }),
                    ),
                  ),
                ),
                Positioned(
                  left: 30,
                  child: Container(
                    height: 50,
                    width: 330,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 40, right: 40),
                      child: TextFormField(
                        decoration: InputDecoration(
                          alignLabelWithHint: true,
                          hintText: "search",
                        ),
                      ),
                    ),

                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                    ),
                    //child: ListView.builder(itemBuilder: itemBuilder),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
