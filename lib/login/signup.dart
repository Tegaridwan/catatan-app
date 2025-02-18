import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/login/awalan.dart';
import 'package:myapp/login/login.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       theme: ThemeData(
        textTheme: GoogleFonts.robotoTextTheme(),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) => Awalan()));
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Color.fromARGB(255, 16, 32, 72),
                ),
              )
            ],
          ),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: CustomPaint(
              child: Center(
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    double maxWidth = constraints.maxWidth > 600
                        ? 350
                        : constraints.maxWidth * 0.9;
      
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 20),
                        Text(
                          "HI!",
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 16, 32, 72),
                           
                          ),
                        ),
                        SizedBox(height: 1),
                        Text(
                          "Create a new account",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 16, 32, 72),
                            
                          ),
                        ),
                        SizedBox(height: 15),
                        Container(
                          width:
                              maxWidth, // Menggunakan maxWidth yang telah didefinisikan
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Form(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  TextFormField(
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.person,
                                        color: Color.fromARGB(255, 16, 32, 72),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                      hintText: 'Name',hintStyle: TextStyle(),
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 14.0, vertical: 8.0),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color:
                                                Color.fromARGB(255, 16, 32, 72),
                                            width: 2),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color:
                                                Color.fromARGB(255, 16, 32, 72),
                                            width: 2),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),
                                    keyboardType: TextInputType.name,
                                  ),
                                  SizedBox(height: 10),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.email,
                                        color: Color.fromARGB(255, 16, 32, 72),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                      hintText: 'Email',hintStyle: TextStyle(),
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 14.0, vertical: 8.0),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color:
                                                Color.fromARGB(255, 16, 32, 72),
                                            width: 2),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color:
                                                Color.fromARGB(255, 16, 32, 72),
                                            width: 2),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),
                                    keyboardType: TextInputType.name,
                                  ),
                                  SizedBox(height: 10),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.key,
                                        color: Color.fromARGB(255, 16, 32, 72),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                      hintText: 'Password',hintStyle: TextStyle(),
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 14.0, vertical: 8.0),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color:
                                                Color.fromARGB(255, 16, 32, 72),
                                            width: 2),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color:
                                                Color.fromARGB(255, 16, 32, 72),
                                            width: 2),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),
                                    keyboardType: TextInputType.name,
                                  ),
      
                                  // Tambahkan field lain sesuai kebutuhan...
                                  SizedBox(height: 12),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(255, 16, 32, 72),
                                      elevation: 0,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 50, vertical: 10),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Text('Sign Up',
                                        style: TextStyle(color: Colors.white)),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                          child: Divider(
                                        thickness: 1,
                                        color: Colors.black,
                                      )),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Text('OR' , style: TextStyle(),),
                                      ),
                                      Expanded(
                                          child: Divider(
                                        thickness: 1,
                                        color: Colors.black,
                                      ))
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Social Media Sign Up",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 16, 32, 72),
                                      fontSize: 14
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.facebook,
                                            size: 45,
                                          )),
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.apple,
                                            size: 45,
                                          )),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'You have already account',
                                        style: TextStyle(
                                            color: Color.fromARGB(255, 16, 32, 72),
                                            fontSize: 16,
                                            
                                            
                                            ),
                                      ),
                                      SizedBox(
                                        height: 0,
                                      ),
                                      TextButton(
                                          onPressed: () {
                                            Navigator.pushReplacement(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Login()));
                                          },
                                          child: Text(
                                            'Sign In',
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 16,
                                                
                                                
                                                ),
                                          ))
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        // Tambahkan sisa widget...
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
