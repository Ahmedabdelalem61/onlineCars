
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hexcolor/hexcolor.dart';

class FilterContent extends StatefulWidget {
  @override
  _FilterContentState createState() => _FilterContentState();
}

class _FilterContentState extends State<FilterContent> {
  var currenciesCar = ["بى ام", "تيةةتا ", "هوندا", "بيجوتى"];
  String currentSelectedValue ;
  RangeValues currentRangeValues = const RangeValues(20, 100);
  String carChoose ;
  List<String> carItems = ["بى ام", "تيةةتا ", "هوندا", "بيجوتى"];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 600,
        width: 300,
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(
                      Icons.close,
                      color: HexColor('#B2B2B2'),
                    ),
                  ),
                  Text(
                    "تصفيه البحث",
                    style: TextStyle(
                        fontSize: 33,
                        color: HexColor('#616161')),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20),
                child: Container(
                  height: 450,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.end,

                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "نوع السياره",
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              color: HexColor('#B0B0B0')),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 16,right: 16),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                  color: HexColor('#B0B0B0'),width: 1
                              )
                          ),
                          // padding: EdgeInsets.only(left: 16,right: 16),
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: DropdownButton(
                              hint: Text("اختر نوع السياره", style: TextStyle(
                                  color: HexColor('#B0B0B0')
                              )),
                              underline: SizedBox(),
                              style: TextStyle(
                                  color: HexColor('#B0B0B0')
                              ),

                              icon: Icon(Icons.keyboard_arrow_down,color: HexColor('#B0B0B0') ),
                              iconSize: 30,
                              value: currentSelectedValue,
                              isExpanded: true,
                              onChanged: (newValue){
                                setState(() {
                                  currentSelectedValue = newValue;
                                });
                              },
                              items: currenciesCar.map((valueItem) {
                                return DropdownMenuItem(child: Text(valueItem,),value: valueItem,);
                              }).toList(),
                            ),
                          ),
                        ),
                        Text(
                          "موديل السياره",
                          textDirection: TextDirection.rtl,

                          style: TextStyle(
                              color: HexColor('#B0B0B0')),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 16,right: 16),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                  color: HexColor('#B0B0B0'),width: 1
                              )
                          ),
                          // padding: EdgeInsets.only(left: 16,right: 16),
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: DropdownButton(
                              hint: Text('اختر موديل السياره',style: TextStyle(color:HexColor('#B0B0B0') )),
                              underline: SizedBox(),
                              style: TextStyle(
                                  color: HexColor('#B0B0B0')
                              ),

                              icon: Icon(Icons.keyboard_arrow_down,color: HexColor('#B0B0B0') ),
                              iconSize: 30,
                              value: currentSelectedValue,
                              isExpanded: true,
                              onChanged: (newValue){
                                setState(() {
                                  currentSelectedValue = newValue;
                                });
                              },
                              items: currenciesCar.map((valueItem) {
                                return DropdownMenuItem(child: Text(valueItem,),value: valueItem,);
                              }).toList(),
                            ),
                          ),
                        ),
                        Text(
                          "سنه صنع السياره",
                          textDirection: TextDirection.rtl,

                          style: TextStyle(
                              color: HexColor('#B0B0B0')),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 16,right: 16),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                  color: HexColor('#B0B0B0'),width: 1
                              )
                          ),
                          // padding: EdgeInsets.only(left: 16,right: 16),
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: DropdownButton(
                              hint: Text('اختر سنه الصنع',style: TextStyle(color:HexColor('#B0B0B0') ),),
                              underline: SizedBox(),
                              style: TextStyle(
                                  color: HexColor('#B0B0B0')
                              ),

                              icon: Icon(Icons.keyboard_arrow_down,color: HexColor('#B0B0B0') ,),
                              iconSize: 30,
                              value: carChoose,
                              isExpanded: true,
                              onChanged: (newValue){
                                setState(() {
                                  carChoose = newValue;
                                });
                              },
                              items: carItems.map((valueItem) {
                                return DropdownMenuItem(
                                  child: Text(valueItem,),value: valueItem,);

                              }).toList(),
                            ),
                          ),
                        ) ,
                        Text(
                          "حاله السياره",
                          textDirection: TextDirection.rtl,

                          style: TextStyle(
                              color: HexColor('#B0B0B0')),
                        ),
                        Wrap(
                          crossAxisAlignment:
                          WrapCrossAlignment.start,

                          alignment: WrapAlignment.end,
                          // Gap between adjacent chips.
                          spacing: -5.0,
                          // Gap between lines.
                          runSpacing: 4.0,

                          children: [
                            'تالفه',
                            'ضرر خفيف',
                            'نادره',
                            'اثريه',
                            'جديده',
                            'الكل',
                          ]
                              .map((String name) =>
                              Container(
                                child: Transform(
                                  transform: new Matrix4
                                      .identity()
                                    ..scale(0.8),
                                  child: Chip(
                                    backgroundColor:
                                    HexColor(
                                        '#E5E5E5'),
                                    label: Text(
                                      name,
                                      style: TextStyle(
                                          color: Colors
                                              .black,
                                          fontSize: 18),
                                      overflow:
                                      TextOverflow
                                          .ellipsis,
                                    ),
                                  ),
                                ),
                              ))
                              .toList(),
                        ),
                        Text(
                          "حاله المزاد",
                          textDirection: TextDirection.rtl,

                          style: TextStyle(
                              color: HexColor('#B0B0B0')),
                        ),
                        Wrap(
                          crossAxisAlignment:
                          WrapCrossAlignment.start,

                          alignment: WrapAlignment.end,
                          // Gap between adjacent chips.
                          spacing: -5.0,
                          // Gap between lines.
                          runSpacing: 4.0,

                          children: [
                            'الكل',
                            'مفتوح',
                            'مغلق',
                          ]
                              .map((String name) =>
                              Container(
                                child: Transform(
                                  transform: new Matrix4
                                      .identity()
                                    ..scale(0.8),
                                  child: Chip(
                                    backgroundColor:
                                    HexColor(
                                        '#E5E5E5'),
                                    label: Text(
                                      name,
                                      style: TextStyle(
                                          color: Colors
                                              .black,
                                          fontSize: 18),
                                      overflow:
                                      TextOverflow
                                          .ellipsis,
                                    ),
                                  ),
                                ),
                              ))
                              .toList(),
                        ),
                        Text(
                          "التقييم",
                          textDirection: TextDirection.rtl,

                          style: TextStyle(
                              color: HexColor('#B0B0B0')),
                        ),
                    RatingBar.builder(
                      glowColor: Colors.grey,
                      textDirection: TextDirection.rtl,
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      //itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),

                      Text(
                          "السعر",
                          textDirection: TextDirection.rtl,

                          style: TextStyle(
                              color: HexColor('#B0B0B0')),
                        ),
                        RangeSlider(
                          activeColor: HexColor('#EF505C'),
                          inactiveColor: Colors.grey,
                          values: currentRangeValues,
                          min: 0,
                          max: 100,
                          divisions: 100,
                          labels: RangeLabels(
                            currentRangeValues.start
                                .round()
                                .toString(),
                            currentRangeValues.end
                                .round()
                                .toString(),
                          ),
                          onChanged: (RangeValues values) {
                            setState(() {
                              currentRangeValues = values;
                            });
                          },
                        ),
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.center,
                          children: [
                            Text('${currentRangeValues.start.toInt()} usd',style: TextStyle(
                                color: HexColor('#B0B0B0')),),
                            SizedBox(
                              width: 130,
                            ),
                            Text('${currentRangeValues.end.toInt()} usd', style: TextStyle(
                                color: HexColor('#B0B0B0')),)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 18,
                      bottom: 14,
                      right: 40,
                      left: 40),
                  child: FlatButton(
                    minWidth: 200,
                    height: 45,
                    onPressed: () {},
                    child: Text(
                      'حفظ',
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius:
                        new BorderRadius.circular(
                            30.0)),
                    color: Colors.red,
                    splashColor: Colors.redAccent,
                    textColor: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
