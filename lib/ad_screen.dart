import 'package:flutter/material.dart';
import 'now_playing_screen.dart'; // Import the NowPlayingScreen file

class AdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple.shade200, Colors.blue.shade100],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Updated to use the ad_image.jpg instead of ad_image.png
            Image.asset('assets/ad_image.jpg', height: 200),
            SizedBox(height: 20),
            Text(
              "Find over 40 million songs\nAd Free",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Download the latest songs and albums\nto listen offline anytime.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NowPlayingScreen()), // Navigate to NowPlayingScreen
                );
              },
              child: Text("Go to Now Playing"),
            ),
          ],
        ),
      ),
    );
  }
}
