import 'package:flutter/material.dart';
import 'package:online_doctor/add_doctor.dart';
import 'package:online_doctor/add_item.dart';
import 'package:online_doctor/doctor_profile_page.dart';
import 'package:online_doctor/view_doctor.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        elevation: 0,
        //Hey Kawsar!
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            children: [
              const Text(
                "Hey, Kawsar!",
                style: TextStyle(
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const DoctorPage()));
                    });
                  },
                  child: const Text("Page 2"),
                ),
              )
            ],
          ),
        ),
        //Icons
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Container(
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                      border: Border.all(color: Colors.blue, width: 1),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.blue,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: Colors.blue[50],
                    border: Border.all(color: Colors.blue, width: 1),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.notifications_outlined,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //discover - find
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Discover',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                              letterSpacing: 2,
                            ),
                          ),
                          Text(
                            'Find your suitable doctor!',
                            style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 2,
                            ),
                          ),
                        ],
                      ),
                    ),
                    //Search
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10)),
                        color: Colors.white,
                      ),
                      child: const TextField(
                        textAlignVertical: TextAlignVertical.center,
                        style: TextStyle(color: Colors.grey),
                        decoration: InputDecoration(
                            focusColor: Colors.grey,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            hintText: 'Search',
                            prefixIcon: Icon(Icons.search_outlined),
                            suffixIcon: Icon(Icons.filter_list)),
                      ),
                    ),
                  ],
                ),
              ),
              //4'lü kategori
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: const [
                    AddItem(
                      imgPath: "doctor_icon",
                      title: "Doctor",
                    ),
                    AddItem(
                      imgPath: "calendar_icon",
                      title: "Appointment",
                    ),
                    AddItem(
                      imgPath: "presc_icon",
                      title: "Prescription",
                    ),
                    AddItem(
                      imgPath: "medicine_icon",
                      title: "Medicine",
                    ),
                  ],
                ),
              ),
              //top doctors
              const Text(
                'Top Doctors',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              //listview doctors
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    children: const [
                      AddDoctor(
                        imgPath: "ahmet_doctor",
                        name: "Dr. Ahmet Selim Över",
                        job: "Computer Doctor",
                      ),
                      AddDoctor(
                        imgPath: "keyvan_doctor",
                        name: "Dr. Keyvan Arasteh",
                        job: "Computer Doctor",
                      ),
                      AddDoctor(
                        imgPath: "ahmad_doctor",
                        name: "Dr. Ahmad Khas",
                        job: "Computer Doctor",
                      ),
                      AddDoctor(
                        imgPath: "ahmet_doctor",
                        name: "Dr. Ahmet Selim Över",
                        job: "Computer Doctor",
                      ),
                      AddDoctor(
                        imgPath: "keyvan_doctor",
                        name: "Dr. Keyvan Arasteh",
                        job: "Computer Doctor",
                      ),
                      AddDoctor(
                        imgPath: "ahmad_doctor",
                        name: "Dr. Ahmad Khas",
                        job: "Computer Doctor",
                      ),
                    ],
                  ),
                ),
              ),
              //Avaible Doctor
              const Text(
                'Avaible Doctor',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              //doctors
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: const [
                      ViewDoctor(
                        doctorBrans: "Profesor",
                        imgPath: "doctor_transparent",
                        doctorName: "Dr. Name Surname",
                      ),
                      ViewDoctor(
                        doctorBrans: "Dentist",
                        imgPath: "doctor2_transparent",
                        doctorName: "Dr. İsim Soyisim",
                      ),
                      ViewDoctor(
                        doctorBrans: "Doctor",
                        imgPath: "doctor_transparent",
                        doctorName: "Dr. İsim Surname",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      //bottomnavigation
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search_rounded), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month_rounded), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.verified_user_outlined), label: ''),
        ],
      ),
    );
  }
}
