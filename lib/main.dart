import 'package:flutter/material.dart';
import 'shop_now.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Builder(
          builder:
              (context) => Stack(
                children: [
                  // Background image
                  Image.asset(
                    "assets/Background.png",
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),

                  // Positioned logo
                  Positioned(
                    top: 42,
                    left: 149,
                    child: Image.asset(
                      "assets/Logo.png",
                      width: 78,
                      height: 29,
                    ),
                  ),
                  Positioned(
                    top: 550,
                    left: 20,
                    child: Container(
                      width: 380,
                      height: 340,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(66, 255, 255, 255),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 20,
                            left: 55,
                            child: Image.asset("assets/Everything 3.png"),
                          ),
                          Positioned(
                            top: 10,
                            left: 55,
                            child: Image.asset("assets/Group 20.png"),
                          ),
                          Positioned(
                            top: 163,
                            left: 25,
                            child: Text(
                              "Shop your favourite toys and outfits\n    of the Squid Game on the go!",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 250,
                            left: 30,
                            width: 320,
                            height: 65,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromARGB(
                                  232,
                                  243,
                                  58,
                                  141,
                                ),

                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(13),
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                    builder: (context) => const ShopNow(),
                                  ),
                                );
                              },
                              child: Text(
                                "Shop Now",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
        ),
      ),
    );
  }
}
