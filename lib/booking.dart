import 'package:flutter/material.dart';

class Booking extends StatefulWidget {
  const Booking({super.key});

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content(),
    );
  }

  Widget content(){
    return Column(
      children: [
        Center(
          child: Container(
            width: double.infinity,
            height: 350,
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)
              )
            ),
            child: Image.asset('assets/blood.png', scale: 3),
          ),
        ),
        SizedBox(height: 20),
        Text(
          '     Blood Bank\nLocation Near You',
          style: TextStyle(fontSize: 25),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(20)
              ),
              height: 100,
              width: 150,
              child: Icon(
                Icons.gps_fixed,
                size: 40,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 30),
            Container(
              decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(20)
              ),
              height: 100,
              width: 150,
              child: Icon(
                Icons.map,
                size: 40,
                color: Colors.white,
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        Container(
          decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.circular(20)
          ),
          height: 100,
          width: 150,
          child: Icon(
            Icons.phone,
            size: 40,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 20),
        Text(
          'Can I give Blood? ',
          style: TextStyle(color: Colors.redAccent, fontSize: 15),
        ),
        SizedBox(height: 10),
        Text(
          'Share on social media!',
          style: TextStyle(color: Colors.redAccent, fontSize: 15),
        )
      ],
    );
  }
}
