import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/textfield.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;
  @override
  void initState() {
    super.initState();
    _loadSelectedIndex();
  }

  Future<void> _loadSelectedIndex() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _selectedIndex = prefs.getInt('selectedIndex') ?? 0;
    });
  }

  Future<void> _saveSelectedIndex(int index) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('selectedIndex', index);
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _saveSelectedIndex(index); // Save selected index
    Navigator.pop(context); // Close the drawer
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notes",
          style: TextStyle(
            color: Color.fromARGB(255, 16, 32, 72),
            fontWeight: FontWeight.bold,
            fontFamily: GoogleFonts.afacad().fontFamily,
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.dark_mode)),
          IconButton(onPressed: () {}, icon: Icon(Icons.person_2_sharp)),
        ],
      ),
      drawer: SizedBox(
        width: 250.0,
        child: Drawer(
          child: ListView(
            children: [
              Container(
                  height: 50.0,
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Notes",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontFamily: GoogleFonts.afacad().fontFamily,
                          ),
                        ),
                      )
                    ],
                  ))),
              ListTile(
                leading: const Icon(Icons.lightbulb_outline),
                title: Text(
                  'Catatan',
                  style: TextStyle(
                    fontFamily: GoogleFonts.afacad().fontFamily,
                  ),
                ),
                selected: _selectedIndex == 0,
                onTap: () => _onItemTapped(0),
              ),
              ListTile(
                leading: const Icon(Icons.archive_sharp),
                title: Text("Arsip",
                    style: TextStyle(
                      fontFamily: GoogleFonts.afacad().fontFamily,
                    )),
                selected: _selectedIndex == 1,
                onTap: () => _onItemTapped(1),
              ),
              ListTile(
                leading: const Icon(Icons.delete_sharp),
                title: Text("Sampah",
                    style: TextStyle(
                      fontFamily: GoogleFonts.afacad().fontFamily,
                    )),
                selected: _selectedIndex == 2,
                onTap: () => _onItemTapped(2),
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: Text("Pengaturan",
                    style: TextStyle(
                      fontFamily: GoogleFonts.afacad().fontFamily,
                    )),
                selected: _selectedIndex == 3,
                onTap: () => _onItemTapped(3),
              ),
              ListTile(
                leading: const Icon(Icons.question_answer),
                title: Text("Bantuan & masukan",
                    style: TextStyle(
                      fontFamily: GoogleFonts.afacad().fontFamily,
                    )),
                selected: _selectedIndex == 4,
                onTap: () => _onItemTapped(4),
              ),
            ],
          ),
        ),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: [Home(), Arsip(), Sampah(), Setting(), Masukan()],
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Home Page homer"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Textfield()));
        },
        backgroundColor: Color.fromARGB(255, 237, 241, 243),
        child: const Icon(Icons.add),
      ),
    );
  }
}

class Arsip extends StatefulWidget {
  const Arsip({super.key});

  @override
  State<Arsip> createState() => _ArsipState();
}

class _ArsipState extends State<Arsip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Arsip page"),
      ),
    );
  }
}

class Sampah extends StatefulWidget {
  const Sampah({super.key});

  @override
  State<Sampah> createState() => _SampahState();
}

class _SampahState extends State<Sampah> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Sampah page"),
      ),
    );
  }
}

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Pengaturan pge"),
      ),
    );
  }
}

class Masukan extends StatefulWidget {
  const Masukan({super.key});

  @override
  State<Masukan> createState() => _MasukanState();
}

class _MasukanState extends State<Masukan> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Masukan page"),
      ),
    );
  }
}
