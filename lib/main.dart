import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
//import 'package:sounds/sounds.dart';

import 'package:assets_audio_player/assets_audio_player.dart';
void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Alphabet"),
        ),
        body: Home(),
      ),
    );
  }
}
class Home extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return _Homepage(context);
  }

}

Widget _Homepage(BuildContext context){
 final assetsAudioPlayer = AssetsAudioPlayer();
  final alpha=['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U',
  'V','W','X','Y','Z'];
  final pic=["assets/a.png","assets/b.png","assets/c.png","assets/d.png","assets/e.png","assets/f.png",
  "assets/a.png","assets/b.png","assets/c.png","assets/d.png","assets/e.png","assets/f.png",
  "assets/a.png","assets/b.png","assets/c.png","assets/d.png","assets/e.png","assets/f.png",
    "assets/a.png","assets/b.png","assets/c.png","assets/d.png","assets/e.png","assets/f.png",
  "assets/a.png","assets/b.png",
  ];
 final sound=['assets/sounds/a.mp3','assets/sounds/b.mp3','assets/sounds/c.mp3',
   'assets/sounds/d.mp3','assets/sounds/e.mp3','assets/sounds/f.mp3','assets/sounds/g.mp3',
   'assets/sounds/h.mp3','assets/sounds/i.mp3','assets/sounds/j.mp3','assets/sounds/k.mp3',
   'assets/sounds/l.mp3','assets/sounds/m.mp3','assets/sounds/n.mp3','assets/sounds/o.mp3'
  ,'assets/sounds/p.mp3','assets/sounds/q.mp3','assets/sounds/r.mp3','assets/sounds/s.mp3'
  ,'assets/sounds/t.mp3','assets/sounds/u.mp3','assets/sounds/v.mp3','assets/sounds/w.mp3'
  ,'assets/sounds/x.mp3','assets/sounds/y.mp3','assets/sounds/z.mp3'
 ];
  return ListView.builder(
    itemCount: alpha.length,
      itemBuilder: (context,index){
      return ListTile(
        title: Text(alpha[index]),
        leading: Image.asset(pic[index],height: 30,),
        trailing: Icon(Icons.star_border),
        onTap: ()
        {
          assetsAudioPlayer.open(Audio(sound[index]),);
          assetsAudioPlayer.play();
          Fluttertoast.showToast(
              msg: alpha[index],
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0
          );


          //assetsAudioPlayer.play();

        },
      );
      }
      );
}

