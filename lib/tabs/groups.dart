import 'package:flutter/material.dart';

class GroupScreen extends StatefulWidget {
  const GroupScreen({super.key});

  @override
  State<GroupScreen> createState() => _GroupScreenState();
}

class _GroupScreenState extends State<GroupScreen> {
  @override
  Widget build(BuildContext context) {
    var ArrName = ['balli', 'jagu', 'bnajd', 'bgaijsd', 'bnajd', 'bgaijsd',
      'bnajd',
      'bgaijsd'
    ,
      'bnajd',
      'bgaijsd'
    ];
    return Scaffold(
      // appBar: AppBar(),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Text(
            ArrName[index],
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
          );
        },
        itemCount: ArrName.length,
        separatorBuilder: (context, index) {
          return Divider(
            height: 100,
            thickness: 4,
          );
        },
      ),
    );
  }
}
