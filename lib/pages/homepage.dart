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

  List<MenuHomepage> _MenuList = [];

  @override
  void initState() {
    super.initState();

    _MenuList.add(MenuHomepage(
      image: Image.asset(
        'assets/kelas.png',
        fit: BoxFit.fill,
      ),
      color: Color.fromARGB(255, 10, 40, 43),
      title: "Kelas",
      navigator: "/kelaspage",
    ));
    _MenuList.add(MenuHomepage(
      image: Image.asset(
        'assets/perpustakaan.png',
        fit: BoxFit.fill,
      ),
      color: Color.fromARGB(255, 32, 32, 49),
      title: "Perpustakaan",
      navigator: "/login",
    ));
    _MenuList.add(MenuHomepage(
      image: Image.asset(
        'assets/logo_hasilstudi.png',
        fit: BoxFit.fill,
      ),
      color: Color.fromARGB(255, 34, 23, 80),
      title: "Hasil Studi",
      navigator: "/kelaspage",
    ));
    _MenuList.add(MenuHomepage(
      image: Image.asset(
        'assets/transkrip.png',
        fit: BoxFit.fill,
      ),
      color: Color.fromARGB(255, 21, 80, 60),
      title: "Transkrip",
      navigator: "/kelaspage",
    ));
    _MenuList.add(MenuHomepage(
      image: Image.asset(
        'assets/ktm.png',
        fit: BoxFit.fill,
      ),
      color: Color.fromARGB(255, 32, 32, 49),
      title: "KTM",
      navigator: "/kelaspage",
    ));
    _MenuList.add(MenuHomepage(
      image: Image.asset(
        'assets/pembayaran.png',
        fit: BoxFit.fill,
      ),
      color: Color.fromARGB(255, 10, 40, 43),
      title: "Pembayaran",
      navigator: "/kelaspage",
    ));
    _MenuList.add(MenuHomepage(
      image: Image.asset(
        'assets/jadwal_ujian.png',
        fit: BoxFit.fill,
      ),
      color: Color.fromARGB(255, 34, 23, 80),
      title: "Jadwal Ujian",
      navigator: "/kelaspage",
    ));
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
              SizedBox(
                width: double.infinity,
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Image.asset('assets/profile.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
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
                    padding: const EdgeInsets.only(right: 20),
                    child: IconButton(
                      onPressed: () {
                        print('tap');
                      },
                      icon: IconButton(
                        padding: EdgeInsets.only(right: 21),
                        onPressed: () {},
                        icon: Icon(
                          Icons.notification_add,
                          color: Colors.white,
                          size: 35,
                        ),
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
              _buildMenuHomepage(),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Jadwal Kuliah',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildMenuHomepage() {
    return SizedBox(
        width: double.infinity,
        height: 230,
        child: Container(
            // color: Colors.amber,
            margin: EdgeInsets.only(top: 12, bottom: 0),
            child: GridView.builder(
                padding: EdgeInsets.zero,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 7,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemBuilder: (context, position) {
                  return _rowMenuHomepage(_MenuList[position]);
                })));
  }

  Widget _rowMenuHomepage(MenuHomepage) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: () {
        Navigator.of(context).pushNamed(MenuHomepage.navigator);
      },
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: MenuHomepage.color,
                ),
                Container(
                  width: 25,
                  height: 25,
                  child: MenuHomepage.image,
                )
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 7)),
            Text(
              MenuHomepage.title,
              style: TextStyle(fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
