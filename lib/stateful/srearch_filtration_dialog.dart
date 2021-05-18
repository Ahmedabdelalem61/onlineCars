import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:online_khalidcars/stateful/filter_content.dart';
import 'package:online_khalidcars/stateful/filtration_screen.dart';

class SearchFiltration extends StatefulWidget {
  @override
  _SearchFiltrationState createState() => _SearchFiltrationState();
}

class _SearchFiltrationState extends State<SearchFiltration> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          child: Text('send'),
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) =>FiltrationScreen()//or FilterContent()
            );
          },
        )
      ),
    );
  }
  Widget BuildDrobDown(List<String> list,String choosed){
    return Container(
      padding: EdgeInsets.only(left: 16,right: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
              color: HexColor('#B0B0B0'),width: 1
          )
      ),
      // padding: EdgeInsets.only(left: 16,right: 16),
      child: DropdownButton(
        underline: SizedBox(),
        style: TextStyle(
            color: HexColor('#B0B0B0')
        ),

        icon: Icon(Icons.arrow_drop_down),
        iconSize: 30,
        value: choosed,
        isExpanded: true,
        onChanged: (newValue){
          setState(() {
            choosed = newValue;
          });
        },
        items: list.map((valueItem) {
          return DropdownMenuItem(child: Text(valueItem,),value: valueItem,);
        }).toList(),
      ),
    );
  }


}
