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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        // color: Colors.amber,
      ),
      child: Image.asset(
        'assets/banner_homepage.png',
        height: 100,
        fit: BoxFit.fill,
      ),
    ),
    Container(
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        // color: Colors.amber,
      ),
      child: Image.asset(
        'assets/banner_homepage.png',
        height: 100,
        fit: BoxFit.fill,
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

  final List<MenuHomepage> _menuList = [];
  
  @override
  
  void initState() {
    super.initState();

    _menuList.add(MenuHomepage(
      image: Image.asset(
        'assets/kelas.png',
        fit: BoxFit.fill,
      ),
      color: Color.fromARGB(255, 10, 40, 43),
      title: "Kelas",
      navigator: "/kelaspage",
    ));
    _menuList.add(MenuHomepage(
      image: Image.asset(
        'assets/perpustakaan.png',
        fit: BoxFit.fill,
      ),
      color: const Color.fromARGB(255, 32, 32, 49),
      title: "Perpustakaan",
      navigator: "/login",
    ));
    _menuList.add(MenuHomepage(
      image: Image.asset(
        'assets/logo_hasilstudi.png',
        fit: BoxFit.fill,
      ),
      color: const Color.fromARGB(255, 34, 23, 80),
      title: "Hasil Studi",
      navigator: "/kelaspage",
    ));
    _menuList.add(MenuHomepage(
      image: Image.asset(
        'assets/transkrip.png',
        fit: BoxFit.fill,
      ),
      color: const Color.fromARGB(255, 21, 80, 60),
      title: "Transkrip",
      navigator: "/kelaspage",
    ));
    _menuList.add(MenuHomepage(
      image: Image.asset(
        'assets/ktm.png',
        fit: BoxFit.fill,
      ),
      color: const Color.fromARGB(255, 32, 32, 49),
      title: "KTM",
      navigator: "/kelaspage",
    ));
    _menuList.add(MenuHomepage(
      image: Image.asset(
        'assets/pembayaran.png',
        fit: BoxFit.fill,
      ),
      color: const Color.fromARGB(255, 10, 40, 43),
      title: "Pembayaran",
      navigator: "/kelaspage",
    ));
    _menuList.add(MenuHomepage(
      image: Image.asset(
        'assets/jadwal_ujian.png',
        fit: BoxFit.fill,
      ),
      color: const Color.fromARGB(255, 34, 23, 80),
      title: "Jadwal Ujian",
      navigator: "/kelaspage",
    ));
  }

  @override
  Widget build(BuildContext context) {
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Stack(
          children: [
            Container(
              height: 180,
              width: mediaQueryWidth,
              color: Color.fromARGB(255, 97, 75, 195),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Image.asset(
                      'assets/Vector 1.png',
                    ),
                  ),
                  Positioned(
                    bottom: 40,
                    right: 10,
                    child: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 200, 255, 224),
                      radius: 25,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
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
                    const Column(
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
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: IconButton(
                        onPressed: () {
                          print('tap');
                        },
                        icon: IconButton(
                          padding: const EdgeInsets.only(right: 21),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.notifications,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
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
                            const EdgeInsets.symmetric(vertical: 17, horizontal: 4.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: (Theme.of(context).brightness ==
                                      Brightness.dark
                                  ? Colors.white
                                  : const Color.fromARGB(255, 97, 75, 195))
                              .withOpacity(_current == entry.key ? 0.9 : 0.2),
                        ),
                      ),
                    );
                  }).toList(),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'Menu',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                _buildMenuHomepage(),
                const Padding(
                  padding:  EdgeInsets.only(left: 20),
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
      ),
    );
  }

  Widget _buildMenuHomepage() {
    return SizedBox(
        width: double.infinity,
        height: 230,
        child: Container(
            // color: Colors.amber,
            margin: const EdgeInsets.only(top: 12, bottom: 0),
            child: GridView.builder(
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 7,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemBuilder: (context, position) {
                  return _rowMenuHomepage(_menuList[position]);
                })));
  }

  Widget _rowMenuHomepage(MenuHomepage) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: () {
        Navigator.of(context).pushNamed(MenuHomepage.navigator);
      },
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
              SizedBox(
                width: 25,
                height: 25,
                child: MenuHomepage.image,
              )
            ],
          ),
          const Padding(padding: EdgeInsets.only(top: 7)),
          Text(
            MenuHomepage.title,
            style: const TextStyle(fontSize: 12),
          )
        ],
      ),
    );
  }
}
