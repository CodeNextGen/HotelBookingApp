import 'package:flutter/material.dart';
import 'package:roome/ExplorePage/HotelSearchPage/hotelSearchPage.dart';

import '../../main.dart';

class PopularPlacePage extends StatefulWidget {
  @override
  PopularPlacePageState createState() => PopularPlacePageState();
}

class PopularPlacePageState extends State<PopularPlacePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 20, left: 10, right: 20),
                  child: Row(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(top: 15),
                        child: BackButton(),
                      ),
                      Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(top: 15, left: 5),
                          child: Text(
                            "Popular Destinations",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontFamily: 'Oswald'),
                          )),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10, top: 10),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.only(left: 20, right: 0, top: 0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 2.0,
                                  color: Colors.black.withOpacity(.2),
                                  //offset: Offset(6.0, 7.0),
                                ),
                              ],
                              //border: Border.all(color: Colors.grey, width: 0.3),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100)),
                            ),
                            child: Row(
                              children: <Widget>[
                                Container(
                                    margin: EdgeInsets.only(left: 5),
                                    child: Icon(
                                      Icons.search,
                                      size: 19,
                                      color: header,
                                    )),
                                Flexible(
                                  child: TextField(
                                    //controller: phoneController,
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontFamily: 'Oswald',
                                    ),
                                    decoration: InputDecoration(
                                      hintText: "Where are you going next?",
                                      hintStyle: TextStyle(
                                          color: Colors.black38,
                                          fontSize: 15,
                                          fontFamily: 'Oswald',
                                          fontWeight: FontWeight.w300),
                                      //labelStyle: TextStyle(color: Colors.white70),
                                      contentPadding: EdgeInsets.fromLTRB(
                                          10.0, 0.0, 10.0, 0.0),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      ),
                      Container(
                          padding: EdgeInsets.all(13),
                          margin: EdgeInsets.only(
                              left: 10, right: 20, top: 10, bottom: 10),
                          decoration: BoxDecoration(
                              color: header,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 3.0,
                                  color: Colors.black.withOpacity(.2),
                                  //offset: Offset(6.0, 7.0),
                                ),
                              ],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100))),
                          child: Icon(Icons.search,
                              color: Colors.white, size: 20)),
                    ],
                  ),
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(
                        top: 10, left: 20, right: 20, bottom: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "List of Destinations",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Oswald'),
                        ),
                        // Container(
                        //   child: Text(
                        //     "Clear All",
                        //     textAlign: TextAlign.start,
                        //     style: TextStyle(
                        //         color: header,
                        //         fontSize: 13,
                        //         fontFamily: 'Oswald',
                        //         fontWeight: FontWeight.w400),
                        //   ),
                        //),
                      ],
                    )),
              ],
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(left: 15.0, right: 15, bottom: 10),
            sliver: SliverList(
              delegate:
                  SliverChildBuilderDelegate((BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HotelSearchPage()),
                    );
                  },
                  child: Container(
                    //height: 200,
                    margin:
                        EdgeInsets.only(left: 5, right: 5, bottom: 5, top: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 3.0,
                          color: Colors.black.withOpacity(.2),
                          //offset: Offset(6.0, 7.0),
                        ),
                      ],
                      // border: Border.all(width: 0.2, color: Colors.grey)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Container(
                          padding: EdgeInsets.only(left: 0),
                          height: 200,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: index == 0
                                    ? AssetImage("assets/images/bd.jpg")
                                    : index == 1
                                        ? AssetImage("assets/images/l2.jpg")
                                        : index == 2
                                            ? AssetImage(
                                                "assets/images/thailand.jpg")
                                            : index == 3
                                                ? AssetImage(
                                                    "assets/images/japan.jpg")
                                                : index == 4
                                                    ? AssetImage(
                                                        "assets/images/capetown.jpg")
                                                    : AssetImage(
                                                        "assets/images/russia.jpg"),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15.0),
                                  topRight: Radius.circular(15.0),
                                  bottomLeft: Radius.circular(15.0),
                                  bottomRight: Radius.circular(15.0)),
                              color: Colors.white,
                              border:
                                  Border.all(width: 0.2, color: Colors.grey)),
                          child: Stack(
                            children: <Widget>[
                              Container(
                                  margin: EdgeInsets.only(left: 0),
                                  padding: EdgeInsets.only(left: 0),
                                  height: 200,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.15),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15.0)),
                                  )),
                              Container(
                                  alignment: Alignment.bottomLeft,
                                  margin: EdgeInsets.only(
                                      top: 10, left: 10, bottom: 10),
                                  child: Text(
                                    index == 0
                                        ? "Bangladesh"
                                        : index == 1
                                            ? "London"
                                            : index == 2
                                                ? "Bangkok"
                                                : index == 3
                                                    ? "Japan"
                                                    : index == 4
                                                        ? "Cape Town"
                                                        : "Russia",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontFamily: 'BebasNeue',
                                        fontWeight: FontWeight.bold),
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }, childCount: 6),
              // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //   crossAxisCount: 1,
              //   childAspectRatio: (MediaQuery.of(context).size.width / 2) /
              //       (MediaQuery.of(context).size.height / 5.58),
              // ),
            ),
          )
        ],
      ),
    );
  }
}
