import 'package:flutter/material.dart';

class FiltrationScreen extends StatefulWidget {
  @override
  _FiltrationScreenState createState() => _FiltrationScreenState();
}

class _FiltrationScreenState extends State<FiltrationScreen> {
  var radioValue = 3;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          height: MediaQuery.of(context).size.height*.63,
          width: MediaQuery.of(context).size.width*.9,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only( bottom: 10),
                    child: IconButton(
                      icon:  Icon(
                        Icons.close,
                        color: Colors.grey,
                      ),
                      onPressed: (){
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BuildRadioTile(1, 'السعر من اعلى لاسفل'),
                      BuildRadioTile(2, 'السعر من اسفل لاعلى'),
                      BuildRadioTile(3, 'التقييم من اعلى لاسفل'),
                      BuildRadioTile(4, 'التقييم من اسفل لاعلى'),
                      BuildRadioTile(5, 'اعلى المزايدات'),
                      BuildRadioTile(6, 'اقل المزايدات'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget BuildRadioTile(value, title) {
    return RadioListTile(
        activeColor: Colors.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        title: Text(
          title,
          textAlign: TextAlign.right,
          style:
          TextStyle(fontFamily: 'janna',color: radioValue == value ? Colors.red : Colors.grey),
        ),
        value: value,
        controlAffinity: ListTileControlAffinity.trailing,
        selectedTileColor: Colors.red.shade50,
        selected: radioValue == value ? true :false,
        groupValue: radioValue,
        onChanged: (value) {
          setState(() {
            radioValue = value;
          });
        });
  }
}
