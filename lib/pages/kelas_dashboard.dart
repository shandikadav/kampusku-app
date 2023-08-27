import 'package:flutter/material.dart';

class KelasDashboard extends StatelessWidget {
  const KelasDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
          title: const Text("Dashboard Kelas"),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Stack(children: [
                  Container(
                    height: 120,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 97, 75, 195),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 215, top: 2),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: Color.fromARGB(180, 133, 230, 197),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 190, top: 55),
                    child: CircleAvatar(
                      backgroundColor: Color.fromRGBO(200, 255, 224, 0.7),
                      radius: 30,
                    ),
                  ),
                  const Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 25, top: 40),
                        child: Text(
                          "Komunikasi Data",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 40, top: 2),
                        child: Text(
                          "22S1IF01",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ]
                ),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: InkWell(
                      onTap: (){},
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromARGB(20, 0, 0, 0),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Color.fromRGBO(21, 80, 60, 1.0),
                                  child: Image.asset("assets/logo_subject.png"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Subject 1",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14
                                      ),
                                      ),
                                      SizedBox(height: 1,),
                                      Text("Description",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 12
                                      ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }
                ),
            )
          ],
        ),
      ),
    );
  }
}
