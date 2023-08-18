import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          //first layer
          Row(
            children: <Widget>[
              Container(
                width: 410.0,
                height: 50.0,
                // color: Colors.blue,
                child: Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.person_pin,
                            size: 30.0,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10.0,
                            top: 2.0,
                          ),
                          child: OutlinedButton(
                            onPressed: null,
                            style: OutlinedButton.styleFrom(
                                side: BorderSide(
                                  color: Colors.black,
                                  width: 0.3,
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(60.0))),
                            child: Text(
                                "What's on your Mind                             "),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          //first layer
          Divider(
            color: Colors.black,
          ),
          //2nd layer
          Row(
            children: <Widget>[
              Container(
                width: 410.0,
                height: 40.0,
                child: Row(children: <Widget>[
                  Column(
                    children: [
                      Container(
                        width: 135.0,
                        height: 40.0,
                        // color: Colors.red,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.videocam, color: Colors.red)
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Text('Live'),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 140.0,
                        height: 40.0,
                        // color: Colors.blue,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.photo_library, color: Colors.green)
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Text('Photo'),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 135.0,
                        height: 40.0,
                        // color: Colors.red,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.location_pin, color: Colors.pink)
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Text('Check In'),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ]),
              )
            ],
          ),
          //2nd layer

          //3rd layer

          Row(
            children: <Widget>[
              Container(
                width: 410.0,
                height: 10.0,
                color: Colors.black26,
              )
            ],
          ),
          //3rd layee

          //4th layer
          Container(
            width: double.infinity,
            height: 170.0,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  MyStory(
                    MyStory: 'assets/images/story12.jpg',
                  ),
                  FrientStory(
                      FrientStory: 'assets/images/story12.jpg',
                      FName: 'friend',
                      proPic: 'assets/images/story12.jpg'),
                  FrientStory(
                      FrientStory: 'assets/images/story12.jpg',
                      FName: 'friend',
                      proPic: 'assets/images/story12.jpg'),
                  FrientStory(
                      FrientStory: 'assets/images/story12.jpg',
                      FName: 'friend',
                      proPic: 'assets/images/story12.jpg'),
                  FrientStory(
                      FrientStory: 'assets/images/story12.jpg',
                      FName: 'friend',
                      proPic: 'assets/images/story12.jpg'),
                  FrientStory(
                      FrientStory: 'assets/images/story12.jpg',
                      FName: 'friend',
                      proPic: 'assets/images/story12.jpg')
                ],
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Container(
                width: 410.0,
                height: 10.0,
                color: Colors.black26,
              )
            ],
          ),
          // post layer

          FriendsPost(
              proPic: 'assets/images/story12.jpg',
              proName: 'Abdur Rehman',
              Date: '1d, Karachi'),
          FriendsPost(
              proPic: 'assets/images/story12.jpg',
              proName: 'Abdur Rehman',
              Date: '1d')
        ],
      ),
    );
  }
}

Widget MyStory({MyStory}) {
  return Padding(
    padding: const EdgeInsets.only(left: 5.0, top: 5.0, bottom: 5.0),
    child: Container(
      width: 120.0,
      height: double.infinity,
      color: Colors.black12,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            MyStory,
            fit: BoxFit.cover,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add_circle,
                    color: Colors.white,
                    size: 40.0,
                  ))
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'add to story',
                style: TextStyle(fontSize: 20, color: Colors.white),
              )
            ],
          )
        ],
      ),
    ),
  );
}

Widget FrientStory({FrientStory, FName, proPic}) {
  return Padding(
    padding: const EdgeInsets.only(left: 5.0, top: 5.0, bottom: 5.0),
    child: Container(
      width: 120.0,
      height: double.infinity,
      color: Colors.black12,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            FrientStory,
            fit: BoxFit.cover,
          ),

          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 40,
                  height: 40,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        border: Border.all(
                          color: Colors.blue,
                          style: BorderStyle.solid,
                          width: 2.0,
                        ),
                        image: DecorationImage(
                          image: AssetImage(proPic),
                          fit: BoxFit.cover,
                        )),
                  ),
                )
              ],
            ),
          ),
          // Row(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     IconButton(
          //         onPressed: () {},
          //         icon: Icon(
          //           Icons.add_circle,
          //           color: Colors.white,
          //           size: 40.0,
          //         ))
          //   ],
          // ),

          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                FName,
                style: TextStyle(fontSize: 20, color: Colors.white),
              )
            ],
          )
        ],
      ),
    ),
  );
}

Widget FriendsPost({proPic, proName, Date}) {
  return Padding(
    padding: const EdgeInsets.only(top: 5, bottom: 5),
    child: Row(
      children: <Widget>[
        Container(
          width: 410,
          height: 530,
          // color: Colors.blue,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 410,
                height: 55,
                // color: Colors.red,
                child: Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 5,
                            right: 5,
                          ),
                          child: Container(
                            width: 50,
                            height: 50,
                            child: Container(
                              width: 40,
                              height: 40,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.0),
                                    border: Border.all(
                                      color: Colors.brown,
                                      style: BorderStyle.solid,
                                      width: 3.0,
                                    ),
                                    image: DecorationImage(
                                        image: AssetImage(proPic),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: 290,
                            height: 20,
                            // color: Colors.pink,
                            child: Text(
                              proName,
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            width: 290,
                            height: 20,
                            // color: Colors.green,
                            child: Text(
                              Date,
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ]),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: 60,
                          height: 50,
                          // color: Colors.yellow,
                          child: IconButton(
                              onPressed: () {}, icon: Icon(Icons.more_horiz)),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: 410,
                height: 400,
                color: Colors.red,
                child: Column(
                  children: <Widget> [
                        Container(
                          width: 410,
                          height: 20,
                          color: Colors.amberAccent,
                          child: Text("data"),
                        ),
                        Container(
                          width: 410,
                          height: 380,
                          // color: Colors.brown,
                          child: Image(image: AssetImage('assets/images/story12.jpg'),
                            fit: BoxFit.cover,
                          ),
                        )
                  ],
                ),
              ),
              Container(
                width: 410,
                height: 20,
                color: Colors.black,
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 135.0,
                      height: 20.0,
                      color: Colors.red,
                      
                    ),
                     Container(
                      width: 135.0,
                      height: 20.0,
                      color: Colors.blue,
                    ),
                     Container(
                      width: 140.0,
                      height: 20.0,
                      color: Colors.pink,
                    ),
                  ],
                ),
              ),
               Container(
                width: 410,
                height: 30,
                color: Colors.green,
              ),
               Padding(
                 padding: const EdgeInsets.only(top: 5,bottom: 5),
                 child: Container(
                  width: 410,
                  height: 5.0,
                  color: Colors.black26,
                             ),
               )
            ],
          ),
        ),
       
      ],
    ),
  );
}
