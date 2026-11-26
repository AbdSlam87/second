import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(Music());
}

class Music extends StatelessWidget {
  const new({super.key});

  Expanded buttonMP3(int number, String name,) {
    return Expanded(
      child: TextButton(
        
        onPressed: () {
          final player = AudioPlayer();
          player.play(AssetSource('musics/$number.mp3'));
        },

        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              trailing: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 20,
                child: Text(
                  '$number',
                  style: TextStyle(fontSize: 25, color: Colors.blueAccent),
                ),
              ),
              title: Text(
                name,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Expanded buttonM4A(int number, String name,) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          AudioCache.instance = AudioCache(prefix: '');
          final player = AudioPlayer();
          player.play(AssetSource('musics/$number.m4a'));
        },

        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              trailing: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 20,
                child: Text(
                  '$number',
                  style: TextStyle(fontSize: 25, color: Colors.blueAccent),
                ),
              ),
              title: Text(
                name,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.amber[100],
        appBar: AppBar(
          title: Text('PALASTINE'),
          leading: Icon(Icons.music_note),
          backgroundColor: Colors.amberAccent,
        ),

        body: Column(
          
          children: [
            buttonMP3(1,  '                  فلسطين بلادي'),
            buttonM4A(2,   '            أبطالك يا فلسطين'),
            buttonMP3(3,  '              أنا دمي فلسطيني'),
            buttonMP3(4,'                       لو مرة بس'),
            buttonM4A(5,   '        الارض لنا و القدس لنا'),
            buttonMP3(6,'                  أقصانا أقصانا'),
            buttonMP3(7,         '  فلسطين أسلوب سبيستون'),
            buttonM4A(8,   '             هو أنت قد الأحرار'),
          ],
        ),
      ),
    );
  }
}
