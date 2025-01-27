import 'package:flutter/material.dart';

class PlaylistScreen extends StatelessWidget {
  final List<Map<String, String>> playlist = [
    {"title": "Grace", "artist": "Artist 1"},
    {"title": "Bridges", "artist": "Artist 2"},
    {"title": "Remember", "artist": "Artist 3"},
    {"title": "Rejoice", "artist": "Artist 4"},
    {"title": "Breathe", "artist": "Artist 5"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Playlist"),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple.shade200, Colors.blue.shade100],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            // CircleAvatar with the now_playing_image.jpg at the top
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/now_playing_image.jpg'), // Use the image in a circle
            ),
            SizedBox(height: 20), // Add some space between the image and the list
            Expanded(
              child: ListView.builder(
                itemCount: playlist.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(Icons.music_note, color: Colors.white),
                    title: Text(
                      playlist[index]['title']!,
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      playlist[index]['artist']!,
                      style: TextStyle(color: Colors.white70),
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.favorite_border, color: Colors.white),
                      onPressed: () {},
                    ),
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Go Back"),
            ),
          ],
        ),
      ),
    );
  }
}
