import 'package:flutter/material.dart';
import 'package:neocart/Listviewbuilders/gridViewbuilder.dart';
import 'package:neocart/controller/controller.dart';
import'package:neocart/examplefile/list.dart';

colors _colors = colors();


class drawerr extends StatefulWidget {
  const drawerr({super.key});

  @override
  State<drawerr> createState() => _drawerrState();
}

class _drawerrState extends State<drawerr> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        space,
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text("Menu",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
        ),
        space,
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Container(
            decoration: BoxDecoration(
                color: _colors.gray,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    topRight: Radius.circular(10))),
            child: Padding(
              padding: const EdgeInsets.only(
                  right: 20, left: 10, bottom: 20, top: 20),
              child: Text("Categories",
                  style:
                  TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
          ),
        ),
      ExpansionTile(
        trailing: Icon(Icons.arrow_drop_down_rounded), title: Text("premimum"),
        children: [
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: premimum.length,
            itemBuilder: (BuildContext context, int SubIndex) {
              return ListTile(
                leading: Text(premimum[SubIndex]),
              );
            },)
        ],
      ),
        ExpansionTile(
          trailing: Icon(Icons.arrow_drop_down_rounded), title: Text("Budget"),
          children: [
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (BuildContext context, int SubIndex) {
                return ListTile(
                  leading: Text(budget[SubIndex]),
                );
              },)
          ],
        ),
        ExpansionTile(
          trailing: Icon(Icons.arrow_drop_down_rounded), title: Text("Backpack"),
          children: [
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: Backpack.length,
              itemBuilder: (BuildContext context, int SubIndex) {
                return ListTile(
                  leading: Text(Backpack[SubIndex]),
                );
              },)
          ],
        ),
        ExpansionTile(
          trailing: Icon(Icons.arrow_drop_down_rounded), title: Text("Goggles"),
          children: [
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: Goggles.length,
              itemBuilder: (BuildContext context, int SubIndex) {
                return ListTile(
                  leading: Text(Goggles[SubIndex]),
                );
              },)
          ],
        ),
        ExpansionTile(
          trailing: Icon(Icons.arrow_drop_down_rounded), title: Text("Accessories"),
          children: [
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: Accessories.length,
              itemBuilder: (BuildContext context, int SubIndex) {
                return ListTile(
                  leading: Text(Accessories[SubIndex]),
                );
              },)
          ],
        ),
        ExpansionTile(
          trailing: Icon(Icons.arrow_drop_down_rounded), title: Text("SmartWatch"),
          children: [
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: SmartWatch.length,
              itemBuilder: (BuildContext context, int SubIndex) {
                return ListTile(
                  leading: Text(SmartWatch[SubIndex]),
                );
              },)
          ],
        ),
        ExpansionTile(
          trailing: Icon(Icons.arrow_drop_down_rounded), title: Text("Earbuds"),
          children: [
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: Earbuds.length,
              itemBuilder: (BuildContext context, int SubIndex) {
                return ListTile(
                  leading: Text(Earbuds[SubIndex]),
                );
              },)
          ],
        ),
        ExpansionTile(
          trailing: Icon(Icons.arrow_drop_down_rounded), title: Text("Speaker"),
          children: [
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: Speaker.length,
              itemBuilder: (BuildContext context, int SubIndex) {
                return ListTile(
                  leading: Text(Speaker[SubIndex]),
                );
              },)
          ],
        ),
        ExpansionTile(
          trailing: Icon(Icons.arrow_drop_down_rounded), title: Text("Walllet"),
          children: [
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: Walllet.length,
              itemBuilder: (BuildContext context, int SubIndex) {
                return ListTile(
                  leading: Text(Walllet[SubIndex]),
                );
              },)
          ],
        ),
        ExpansionTile(
          trailing: Icon(Icons.arrow_drop_down_rounded), title: Text("Combo"),
          children: [
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: Combo.length,
              itemBuilder: (BuildContext context, int SubIndex) {
                return ListTile(
                  leading: Text(Combo[SubIndex]),
                );
              },)
          ],
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}

