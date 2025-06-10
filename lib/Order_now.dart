import 'package:flutter/material.dart';

class OrderNow extends StatelessWidget {
  const OrderNow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: -29,
            left: -41,
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 254, 196, 215),
                borderRadius: BorderRadius.circular(30),
              ),
              width: 237,
              height: 512,
            ),
          ),
          Positioned(
            top: 100,
            left: 130,
            child: Transform.scale(
              scale: 1.5, // Increase to make it larger (1.0 = original size)
              child: SizedBox(
                height: 398,
                width: 138,
                child: Image.asset("assets/Staff toy 2.png"),
              ),
            ),
          ),
          Positioned(
            top: 500,
            left: 19,
            child: Text(
              "Supervisor toy",
              style: TextStyle(
                color: Colors.black,
                fontSize: 45,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Positioned(
            top: 568,
            left: 19,
            child: Text(
              "79.9\$",
              style: TextStyle(
                color: const Color.fromARGB(121, 0, 0, 0),
                fontSize: 28,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Positioned(
            top: 620,
            left: 140,

            child: Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.pink,
              ),
            ),
          ),
          Positioned(
            top: 630,
            left: 160,

            child: Text(
              "+",
              style: TextStyle(color: Colors.pink[100], fontSize: 24),
            ),
          ),
          Positioned(
            top: 627,
            left: 100,

            child: Text(
              "1",
              style: TextStyle(
                color: Colors.black,
                fontSize: 26,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          Positioned(
            top: 620,
            left: 19,

            child: Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.pink[100],
              ),
            ),
          ),
          Positioned(
            top: 621,
            left: 40,

            child: Text(
              "-",
              style: TextStyle(color: Colors.pink, fontSize: 34),
            ),
          ),
          Positioned(
            top: 698,
            left: 30,
            child: Icon(Icons.star, color: Colors.amber),
          ),
          Positioned(
            top: 698,
            left: 53,
            child: Icon(Icons.star, color: Colors.amber),
          ),
          Positioned(
            top: 698,
            left: 76,
            child: Icon(Icons.star, color: Colors.amber),
          ),
          Positioned(
            top: 698,
            left: 99,
            child: Icon(Icons.star, color: Colors.amber),
          ),
          Positioned(
            top: 698,
            left: 123,
            child: Icon(Icons.star, color: Colors.amber),
          ),
          Positioned(
            top: 698,
            left: 149,
            child: Text(
              "5.5",
              style: TextStyle(color: Colors.black45, fontSize: 19),
            ),
          ),
          Positioned(
            top: 770,
            left: 35,
            child: Container(
              width: 162,
              height: 62,
              decoration: BoxDecoration(
                color: Colors.pink[100],
                borderRadius: BorderRadius.circular(13),
              ),
            ),
          ),
          Positioned(
            top: 770,
            left: 225,
            child: Container(
              width: 162,
              height: 62,
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.circular(13),
              ),
              child: Center(
                child: Text(
                  "Buy now",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 790,
            left: 162,
            width: 24,
            height: 24,
            child: Image.asset("assets/Buy.png", color: Colors.black),
          ),
          Positioned(
            top: 785,
            left: 50,

            child: Text(
              "Add to cart",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
