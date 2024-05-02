import 'package:flaty/route_location.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    text: "Fla",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 50)),
                TextSpan(
                    text: "TY",
                    style: TextStyle(
                        color: Colors.deepOrangeAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 50))
              ],
            ),
          ),
          const Text(
            "Unlock Your Dream Home Today.",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w400, fontSize: 15),
          ),
          const SizedBox(
            height: 100,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  context.go(RouteLocations.postAFlat);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(
                            0.2), // Adjust shadow color and opacity as needed
                        spreadRadius: 5, // Adjust spread radius as needed
                        blurRadius: 7, // Adjust blur radius as needed
                        offset: const Offset(0, 3), // Adjust offset as needed
                      ),
                    ],
                    borderRadius: BorderRadius.circular(
                        10), // Adjust border radius as needed for rounded corners
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(50.0),
                    child: Text(
                      "Sell",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrangeAccent,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  context.go(RouteLocations.homepage);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.deepOrangeAccent,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(
                            0.2), // Adjust shadow color and opacity as needed
                        spreadRadius: 5, // Adjust spread radius as needed
                        blurRadius: 7, // Adjust blur radius as needed
                        offset: const Offset(0, 3), // Adjust offset as needed
                      ),
                    ],
                    borderRadius: BorderRadius.circular(
                        10), // Adjust border radius as needed for rounded corners
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(50.0),
                    child: Text(
                      "Buy",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
