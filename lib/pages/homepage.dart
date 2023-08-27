import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../models/homepage_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  final List<Widget> imageSliders = [
    Container(
      width: 350,
      child: Image.asset(
        'assets/banner_homepage.png',
        height: 100,
        fit: BoxFit.fill,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        // color: Colors.amber,
      ),
    ),
    Container(
      width: 350,
      child: Image.asset(
        'assets/banner_homepage.png',
        height: 100,
        fit: BoxFit.fill,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        // color: Colors.amber,
      ),
    ),
    Container(
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.red,
      ),
    ),
  ];

  List<GojekService> _gojekServiceList = [];

  @override
  void initState() {
    super.initState();

    _gojekServiceList.add(GojekService(
        image: Image.asset('assets/kelas.png'),
        color: Colors.yellow,
        title: "Kelas"));
    _gojekServiceList.add(GojekService(
        image: Image.asset('assets/perpustakaan.png'),
        color: Colors.yellow,
        title: "Perpustakaan"));
    _gojekServiceList.add(GojekService(
        image: Image.asset('assets/logo_hasilstudi.png'),
        color: Colors.yellow,
        title: "Hasil Studi"));
    _gojekServiceList.add(GojekService(
        image: Image.asset('assets/transkrip.png'),
        color: Colors.yellow,
        title: "Transkrip"));
    _gojekServiceList.add(GojekService(
        image: Image.asset('assets/ktm.png'),
        color: Colors.yellow,
        title: "KTM"));
    _gojekServiceList.add(GojekService(
        image: Image.asset('assets/pembayaran.png'),
        color: Colors.yellow,
        title: "Pembayaran"));
    _gojekServiceList.add(GojekService(
        image: Image.asset('assets/jadwal_ujian.png'),
        color: Colors.yellow,
        title: "Jadwal Ujian"));
  }

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
            crossAxisAlignment: CrossAxisAlignment.start,
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
              ),
              SizedBox(
                height: 21,
              ),
              CarouselSlider(
                items: imageSliders,
                carouselController: _controller,
                options: CarouselOptions(
                  autoPlay: true,
                  viewportFraction: 1,
                  enlargeCenterPage: true,
                  aspectRatio: 16 / 5,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imageSliders.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => _controller.animateToPage(entry.key),
                    child: Container(
                      width: 12.0,
                      height: 12.0,
                      margin:
                          EdgeInsets.symmetric(vertical: 17, horizontal: 4.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (Theme.of(context).brightness == Brightness.dark
                                ? Colors.white
                                : Color.fromARGB(255, 97, 75, 195))
                            .withOpacity(_current == entry.key ? 0.9 : 0.2),
                      ),
                    ),
                  );
                }).toList(),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Menu',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              _buildGojekServicesMenu(),
              Text('Jadwal')
            ],
          )
        ],
      ),
    );
  }

  Widget _buildGojekServicesMenu() {
    return SizedBox(
        width: double.infinity,
        height: 220,
        child: Container(
            margin: EdgeInsets.only(bottom: 8),
            child: GridView.builder(
                padding: EdgeInsets.zero,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 7,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemBuilder: (context, position) {
                  return _rowGojekService(_gojekServiceList[position]);
                })));
  }

  Widget _rowGojekService(GojekService) {
    return InkWell(
      onTap: () {},
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.green,
                ),
                GojekService.image
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 7)),
            Text(
              GojekService.title,
              style: TextStyle(fontSize: 10),
            )
          ],
        ),
      ),
    );
  }
}
