// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../utilities/category_card.dart';
import '../utilities/doctor_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            //Name and Profile Picture
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hello Bazgha',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage(
                    'images/profile.png',
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          //Hospital Link-up Form
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.brown[100],
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                children: [
                  //animation of picture
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/ws4.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),

                  SizedBox(
                    width: 20,
                  ),
                  // how do you feel button
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Do you want to link-up your Hospital?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          'Fill out the link-up form for medical link-up to our mboalab care.',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: Colors.brown[300],
                              borderRadius: BorderRadius.circular(12)),
                          child: Center(
                            child: Text(
                              'Click Here',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),

          //Search Hospital Section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.brown[100],
                  borderRadius: BorderRadius.circular(12)),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                  hintText: 'Find hospitals',
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          //Hospital and Home Visit Section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.brown[500],
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                        spreadRadius: 4,
                      )
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.add,
                          color: Colors.brown,
                          size: 35,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Hospital Visit',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Make an appointment',
                        style: TextStyle(
                          color: Colors.white54,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                        spreadRadius: 4,
                      )
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Color(0xFFF0EEFA),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.home_outlined,
                          color: Colors.brown,
                          size: 35,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Home Visit',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Call the doctor home',
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          //Categories section
          SizedBox(
            height: 80,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CategoryCard(
                  iconImagePath: 'icons/stethoscope.png',
                  categoryName: 'Catergories',
                ),
                CategoryCard(
                  categoryName: 'Cardialogist',
                  iconImagePath: 'icons/healthcare.png',
                ),
                CategoryCard(
                  categoryName: 'Dentist',
                  iconImagePath: 'icons/tooth.png',
                ),
                CategoryCard(
                  categoryName: 'Surgeon',
                  iconImagePath: 'icons/surgeon.png',
                ),
                CategoryCard(
                  iconImagePath: 'icons/ortho.png',
                  categoryName: 'Orthopaedist',
                ),
                CategoryCard(
                  categoryName: 'Ophthalmologist',
                  iconImagePath: 'icons/eye.png',
                ),
                CategoryCard(
                  iconImagePath: 'icons/radio.png',
                  categoryName: 'Radiologist',
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),

          //Doctors Section
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular Doctors',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Spacer(), // It align next widget to the end of the row
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'See all',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.brown,
                    ),
                  ),
                ),
              ],
            ),
          ),
          //Doctor Cards
          SizedBox(
            height: 535,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Row(
                  children: [
                    DoctorCard(
                      doctorImagePath: AssetImage('images/doctor2.jpg'),
                      rating: '4.9',
                      doctorName: 'Dr. Alicia',
                      doctorProfession: 'Surgeon',
                    ),
                    DoctorCard(
                      doctorImagePath: AssetImage('images/doctor1.jpg'),
                      rating: '4.7',
                      doctorName: 'Dr. Kathy',
                      doctorProfession: 'Therapist',
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    DoctorCard(
                      doctorImagePath: AssetImage('images/doctor3.jpg'),
                      rating: '4.7',
                      doctorName: 'Dr. Alex',
                      doctorProfession: 'Cardiologist',
                    ),
                    DoctorCard(
                      doctorImagePath: AssetImage('images/doctor4.jpg'),
                      rating: '4.8',
                      doctorName: 'Dr. Ash',
                      doctorProfession: 'Psychatrist',
                    ),
                  ],
                )
              ],
            ),
          ),

          //Review Section
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Text(
                  "Reviews",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                Text(
                  '4.9',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '(224)',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.brown),
                ),
                Spacer(), // It align next widget to the end of the row
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'See all',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.brown,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          spreadRadius: 2,
                        )
                      ]),
                  //Reviews of patients
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 1.4,
                    child: Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage("images/profile.png"),
                          ),
                          title: Text(
                            'Patient Name',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text('1 day ago'),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Text(
                                '4.9',
                                style: TextStyle(
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            'Thanks to Dr. Alicia, she is a great surgeon.The doctor solved my problem without any pain. I highly recommend this doctor.',
                            style: TextStyle(),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
