// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mboalab_care_ui/schedule_pages/appointment_page.dart';

class DoctorCard extends StatelessWidget {
  ImageProvider doctorImagePath;
  final String rating;
  final String doctorName;
  final String doctorProfession;

  DoctorCard({
    required this.doctorImagePath,
    required this.rating,
    required this.doctorName,
    required this.doctorProfession,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Appointments(),
              ),
            );
          },
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.brown[100],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                //Doctor's Picture
                CircleAvatar(
                  radius: 50,
                  backgroundImage: doctorImagePath,
                ),
                SizedBox(
                  height: 5,
                ),

                //Ratings
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow[600],
                    ),
                    Text(
                      rating,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),

                //Doctor Name
                Text(
                  doctorName,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),

                //Doctor title
                Text(
                  doctorProfession,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
