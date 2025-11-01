import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Dark Login UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto',
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color(0xFF141A2D),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: const Color(0xFF242A42),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none,
          ),
          hintStyle: const TextStyle(color: Color(0xFF5E6D8F), fontSize: 16),
          floatingLabelBehavior: FloatingLabelBehavior.never,
          contentPadding: const EdgeInsets.symmetric(
            vertical: 18.0,
            horizontal: 20.0,
          ),
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: const Color(0xFF141A2D),
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),

      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          const Positioned(
            left: 20,
            top: 50,
            child: Icon(Icons.add, color: Color(0xFF343a40), size: 10),
          ),
          const Positioned(
            right: 20,
            top: 30,
            child: Icon(Icons.add, color: Color(0xFF343a40), size: 10),
          ),
          Positioned(
            left: -50,
            bottom: -50,
            child: Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: const Color(0xFF2C3E50).withOpacity(0.5),
                shape: BoxShape.circle,
              ),
            ),
          ),

          Positioned(
            left: -150,
            top: 150,
            child: Container(
              width: 350,
              height: 70,
              decoration: BoxDecoration(
                color: const Color(0xFF2C3E50).withOpacity(0.5),
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),

          Positioned(
            right: -100,
            top: 350,
            child: Container(
              width: 350,
              height: 100,
              decoration: BoxDecoration(
                color: const Color(0xFF2C3E50).withOpacity(0.5),
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),

          Positioned(
            right: 150,
            top: 50,
            child: Container(
              width: 15,
              height: 15,
              decoration: BoxDecoration(
                color: const Color(0xFF2C3E50).withOpacity(0.5),
                shape: BoxShape.circle,
              ),
            ),
          ),

          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Azka',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                const SizedBox(height: 50),

                // Account
                SizedBox(
                  width: screenWidth * 0.55,
                  child: Card(
                    color: const Color(0xFF242A42),
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 35.0,
                        horizontal: 25.0,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          const Text(
                            'Your Account',
                            style: TextStyle(
                              color: Color(0xFF5E6D8F),
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          const TextField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              hintText: 'Masukan Royko',
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 10.0,
                                horizontal: 20.0,
                              ),
                            ),
                          ),

                          const SizedBox(height: 20),

                          // Password
                          const Text(
                            'PASSWORD',
                            style: TextStyle(
                              color: Color(0xFF5E6D8F),
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          const TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'Masukin Password Kamu',
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 10.0,
                                horizontal: 20.0,
                              ),
                            ),
                          ),

                          const SizedBox(height: 30),

                          // TOMBOL LOGIN
                          ElevatedButton(
                            onPressed: () {
                              print('Tombol Login ditekan!');
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 20,
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Text('LOG IN'),
                                const SizedBox(width: 8),
                                Container(
                                  width: 16,
                                  height: 16,
                                  decoration: const BoxDecoration(
                                    color: Color(0xFF141A2D),
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Icon(
                                    Icons.arrow_forward_ios,
                                    size: 10,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                // Lupa pasword
                const SizedBox(height: 25),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'FORGOT YOUR PASSWORD?',
                    style: TextStyle(
                      color: Color(0xFF5E6D8F),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
