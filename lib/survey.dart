import 'package:blood_donation_app/login.dart';
import 'package:flutter/material.dart';

class Survey extends StatefulWidget {
  const Survey({super.key});

  @override
  State<Survey> createState() => _SurveyState();
}

class _SurveyState extends State<Survey> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content()
    );
  }

  Widget content(){
    return Column(
      children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Center(
              child: Container(
                child: Icon(
                    Icons.bloodtype,
                    size: 200,
                    color: Colors.redAccent
                ),
              ),
            ),
          ),
        Text(
          'Please pick your\n      blood type',
          style: TextStyle(fontSize: 40)
        ),
        SizedBox(height: 30),
        bloodTypeRow('A', 'B'),
        SizedBox(
          height: 20
        ),
        bloodTypeRow('O', 'AB'),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.grey[350],
                borderRadius: BorderRadius.circular(20)
              ),
              child: Center(
                child: Text(
                  '+',
                  style: TextStyle(
                    fontSize: 25
                  ),
                )
              ),
            ),
            SizedBox(width: 20),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: Colors.grey[350],
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Center(
                  child: Text(
                    '-',
                    style: TextStyle(
                        fontSize: 25
                    ),
                  )
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        LoginButton('Finish'),
        SizedBox(height: 10),
        GestureDetector(
          onTap: (){
            Navigator.of(context).pushNamed('/booking');
          },
          child: Text(
            'Book Now !',
            style: TextStyle(color: Colors.redAccent, fontSize: 15),
          ),
        )
      ],
    );
  }
}

Widget bloodTypeRow(String type1, String type2){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        decoration: BoxDecoration(
            color: Colors.grey[350],
            borderRadius: BorderRadius.circular(20)
        ),
        width: 160,
        height: 90,
        child: Center(
            child: Text(
                type1,
                style: TextStyle(fontSize: 20)
          ),
        ),
      ),
      SizedBox(width: 20),
      Container(
        decoration: BoxDecoration(
            color: Colors.grey[350],
            borderRadius: BorderRadius.circular(20)
        ),
        width: 160,
        height: 90,
        child: Center(
          child: Text(
              type2,
              style: TextStyle(fontSize: 20)
          ),
        ),
      ),
    ],
  );
}
