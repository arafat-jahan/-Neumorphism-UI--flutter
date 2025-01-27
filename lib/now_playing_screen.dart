import 'package:flutter/material.dart';
import 'playlist_screen.dart';

class NowPlayingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Now Playing"),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue.shade200, Colors.purple.shade100],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Updated to use now_playing_image.jpg instead of now_playing_image.png
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/now_playing_image.jpg'), // JPG update
            ),
            SizedBox(height: 20),
            Text(
              "Confidence",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              "Sanctus Real",
              style: TextStyle(fontSize: 18, color: Colors.white70),
            ),
            SizedBox(height: 20),
            Slider(
              value: 0.5,
              onChanged: (value) {},
              activeColor: Colors.white,
              inactiveColor: Colors.white24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.skip_previous, size: 32, color: Colors.white),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.play_circle, size: 50, color: Colors.white),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.skip_next, size: 32, color: Colors.white),
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PlaylistScreen()),
                );
              },
              child: Text("Go to Playlist"),
            ),
          ],
        ),
      ),
    );
  }
}
