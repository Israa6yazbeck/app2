import 'package:app2/Order_now.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ShopNow extends StatelessWidget {
  const ShopNow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: 49,
            left: 26,
            child: Image.asset("assets/Logo (1).png", width: 84, height: 31),
          ),
          Positioned(
            top: 44,
            left: 129,
            child: Container(
              width: 178,
              height: 42,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 237, 236, 236),
                borderRadius: BorderRadius.circular(36),
              ),

              child: Stack(
                children: [
                  Positioned(
                    top: 12,
                    left: 12,
                    child: Text(
                      "Search",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),

                  Positioned(
                    top: 9,
                    left: 143,
                    child: Image.asset(
                      "assets/Search icon (1).png",
                      width: 24,
                      height: 24,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 56,
            left: 341,
            width: 28,
            height: 17,
            child: SizedBox(
              child: Image.asset("assets/Hambuger.png", width: 28, height: 17),
            ),
          ),

          Positioned(
            top: 120,
            left: 15,
            child: Text(
              "Recommended for you",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),

          Positioned(
            top: 170,
            left: 0,
            right: 0,
            child: SizedBox(
              height: 450, // Enough space for floating image
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: img.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 48,
                      horizontal: 10,
                    ),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        // Card
                        Container(
                          width: 220,
                          height: 400,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 8,
                                offset: Offset(0, 4),
                              ),
                            ],
                          ),
                        ),

                        // Floating Image
                        Positioned(
                          top: -50, // Float above the card
                          left: 42,
                          child: Image.asset(
                            img[index],
                            width: 100,
                            height: 288,
                          ),
                        ),
                        Positioned(
                          top: 210,
                          left: 16,
                          child: Text(
                            names[index],
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.w900,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 206,
                          left: 120,
                          width: 168,
                          height: 47,
                          child: Icon(
                            Icons.star,
                            color: const Color.fromARGB(255, 255, 209, 43),
                          ),
                        ),
                        Positioned(
                          top: 280,
                          left: 15,
                          height: 54,
                          width: 190,
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
                                  builder: (context) => const OrderNow(),
                                ),
                              );
                            },
                            child: Text(
                              "Veiw details",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 50,
                          left: 184,
                          width: 24,
                          height: 24,
                          child: Icon(Icons.arrow_back),
                        ),
                        Positioned(
                          top: 10,
                          left: 180,
                          child: Image.asset("assets/Heart.png"),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          Positioned(
            top: 595,
            left: 26,
            child: Text(
              "Recent orders",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            top: 610,
            left: 26,
            right: 0,
            child: SizedBox(
              height: 300, // Enough space for floating image
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: img.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 48,
                      horizontal: 10,
                    ),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        // Card
                        Container(
                          width: 196,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 8,
                                offset: Offset(0, 4),
                              ),
                            ],
                          ),
                        ),

                        // Floating Image
                        Positioned(
                          top: -118,
                          left: 0,
                          bottom: 0,
                          child: Image.asset(jo[index], width: 90, height: 200),
                        ),
                        Positioned(
                          top: 24,
                          left: 75,
                          child: Text(
                            "Collector outfit",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 44,
                          left: 85,
                          child: Text(
                            "3 items ordered",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        Positioned(
                          top: 74,
                          left: 85,
                          child: Text(
                            "View details",
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 13,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 77,
                          left: 165,
                          width: 14,
                          height: 14,
                          child: Image.asset("assets/Arrow - Right.png"),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 30,
            child: Image.asset("assets/Purple Circle.png"),
          ),
          Positioned(
            bottom: 43,
            left: 71,
            child: Image.asset("assets/Home.png"),
          ),
          Positioned(
            bottom: 45,
            left: 167,
            width: 24,
            height: 24,
            child: Image.asset("assets/Buy.png"),
          ),
          Positioned(
            bottom: 45,
            left: 251,
            width: 24,
            height: 24,
            child: Image.asset("assets/Heart.png", color: Colors.black45),
          ),
          Positioned(
            bottom: 45,
            left: 320,
            width: 24,
            height: 24,
            child: Image.asset("assets/Setting.png"),
          ),
        ],
      ),
    );
  }
}

List names = ["Supervisor toy", "Front man toy"];
List img = ["assets/Staff toy 2.png", "assets/Black master toy 2.png"];
List jo = ["assets/Staff 2.png", "assets/doll 1.png"];
