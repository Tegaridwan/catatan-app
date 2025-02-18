import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/login/awalan.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    const home(),
    const koleksi(),
    const riwayat(),
    const settings(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.robotoTextTheme(),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 231, 228, 228),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 231, 228, 228),
          title: Text(
            "Books",
            style: TextStyle(
                color: Color.fromARGB(255, 16, 32, 72),
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.dark_mode)),
            IconButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Awalan()));
                },
                icon: Icon(Icons.logout)),
          ],
        ),
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          backgroundColor: Colors.indigo,
          selectedItemColor: Colors.indigo,
          unselectedItemColor: Colors.black,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'koleksi',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.timer),
              label: 'Riwayat',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Card(
            elevation: 0,
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Posisi teks ke kiri
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Recommendation For You',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 8),
                  SingleChildScrollView(
                    scrollDirection:
                        Axis.horizontal, // Supaya gambar tidak terpotong
                    child: Row(
                      children: <Widget>[
                        Column(
                          children: [
                            Image.asset(
                              'assets/images (4).jpg',
                              width: 100,
                              height: 130,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 8),
                            Text('10 Dosa Besar',
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center),
                          ],
                        ),
                        SizedBox(width: 10),
                        Column(
                          children: [
                            Image.asset(
                              'assets/createthumb.jpeg',
                              width: 100,
                              height: 130,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 8),
                            Text('Penghancuran PKI',
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center),
                          ],
                        ),
                        SizedBox(width: 10),
                        Column(
                          children: [
                            Image.asset(
                              'assets/images (5).jpg',
                              width: 100,
                              height: 130,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 8),
                            Text('Sukarno',
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Card(
            elevation: 0,
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Posisi teks ke kiri
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Trending Now',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 8),
                  SingleChildScrollView(
                    scrollDirection:
                        Axis.horizontal, // Supaya gambar tidak terpotong
                    child: Row(
                      children: <Widget>[
                        Column(
                          children: [
                            Image.asset(
                              'assets/hitler.jpg',
                              width: 100,
                              height: 130,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 8),
                            Text('Adolf Hitler',
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center),
                          ],
                        ),
                        SizedBox(width: 10),
                        Column(
                          children: [
                            Image.asset(
                              'assets/prabowo.jpg',
                              width: 100,
                              height: 130,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 8),
                            Text('Prabowo',
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center),
                          ],
                        ),
                        SizedBox(width: 10),
                        Column(
                          children: [
                            Image.asset(
                              'assets/komunis.jpg',
                              width: 100,
                              height: 130,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 8),
                            Text('Karl Max',
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Card(
            elevation: 0,
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Posisi teks ke kiri
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Self Improvement',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 8),
                  SingleChildScrollView(
                    scrollDirection:
                        Axis.horizontal, // Supaya gambar tidak terpotong
                    child: Row(
                      children: <Widget>[
                        Column(
                          children: [
                            Image.asset(
                              'assets/agama_jawa.jpg',
                              width: 100,
                              height: 130,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 8),
                            Text('Agama Jawa',
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center),
                          ],
                        ),
                        SizedBox(width: 10),
                        Column(
                          children: [
                            Image.asset(
                              'assets/rasisme.jpg',
                              width: 100,
                              height: 130,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 8),
                            Text('Rasisme',
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center),
                          ],
                        ),
                        SizedBox(width: 10),
                        Column(
                          children: [
                            Image.asset(
                              'assets/korupsi.jpg',
                              width: 100,
                              height: 130,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 8),
                            Text('Korupsi',
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class koleksi extends StatelessWidget {
  const koleksi({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Library',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

class riwayat extends StatelessWidget {
  const riwayat({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Riwayat',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

class settings extends StatelessWidget {
  const settings({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 16, left: 16, right: 16),
            child: Text('Profile', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
          ),
          const SizedBox(height: 10),
          const Card(
            elevation: 0,
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.account_circle,
                    size: 50,
                  ),
                  SizedBox(width: 14),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Ambatukam', style: TextStyle(fontSize: 20),),
                      Text('Ambatukam96@gmail.com', style: TextStyle(),)
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Terakhir Dibaca', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                TextButton(
                    onPressed: () {},
                    child: const Text('Lihat Semua', style: TextStyle(color: Colors.blue)),
                  ),
              ],
            ),   
          ),
          Card(
  elevation: 0,
  margin: const EdgeInsets.symmetric(horizontal: 10),
  child: Padding(
    padding: const EdgeInsets.all(12.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset('assets/prabowo.jpg', width: 100, height: 130, fit: BoxFit.cover),
        const SizedBox(width: 14),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Prabowo', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 5),
              const Text(
                'Biografi Prabowo Subianto, perjalanan karir dan visi politiknya.', 
                style: TextStyle(fontSize: 14, color: Colors.grey),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.amber, size: 18),
                  Icon(Icons.star, color: Colors.amber, size: 18),
                  Icon(Icons.star, color: Colors.amber, size: 18),
                  Icon(Icons.star_half, color: Colors.amber, size: 18),
                  Icon(Icons.star_border, color: Colors.amber, size: 18),
                ],
              ),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Kategori: Biografi', style: TextStyle(fontSize: 12, color: Colors.grey)),
                  TextButton(
                    onPressed: () {},
                    child: Text('Baca Lagi', style: TextStyle(color: Colors.blue)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  ),
),

        ],
      ),
    );
  }
}
