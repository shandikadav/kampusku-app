import 'package:flutter/material.dart';

class KelasPage extends StatelessWidget {
  const KelasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.transparent,
          titleTextStyle: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          elevation: 0,
          title: const Text("Kelas Saya"),
        ),
        body: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 20, left: 20, top: 10),
                child: ClipRRect(
                  borderRadius: BorderRadiusDirectional.circular(8),
                  child: Container(
                    height: 120,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(color: Colors.black, blurRadius: 100.0),
                        ],
                        color: Colors.white,
                        border: Border.all(
                            color: const Color.fromARGB(15, 0, 0, 0))),
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              child: Image.asset(
                                "assets/foto_matkul1.png",
                                height: 120,
                                width: 120,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 25, top: 20),
                              child: Column(
                                children: [
                                  Text(
                                    "Komunikasi Data",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 15),
                                    child: Text(
                                      "Majid Rahardi, S.Kom., M.Eng",
                                      style: TextStyle(fontSize: 8),
                                    ),
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        right: 60, bottom: 20),
                                    child: Text(
                                      "22S1I01",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
