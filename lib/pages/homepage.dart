import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 180,
            width: double.infinity,
            color: Color.fromARGB(255, 97, 75, 195),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 366, top: 73),
            child: Image.asset(
              'assets/Vector 1.png',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 325, top: 110),
            child: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 200, 255, 224),
              radius: 25,
            ),
          ),
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 58, left: 21),
                    child: Image.asset('assets/profile.png'),
                  ),
                  SizedBox(
                    width: 9,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'SHANDIKA DAVID ARDIANSYAH',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        Text(
                          'Mahasiswa Aktif',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 80, top: 60),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.notification_add,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
