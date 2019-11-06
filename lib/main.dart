
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(phanann());
class phanann extends StatefulWidget {
  @override
  _phanannState createState() => _phanannState();
}

class _phanannState extends State<phanann> {
  Container article(String img, String bigText, String subText){
    return  Container(
                width: 160.0,
                child: Card(
                  child: Wrap(
                    children: <Widget>[
                      Image.network(img, width: 200.0, height: 250.0,),
                    ListTile(
                      title: Text(bigText),
                      subtitle: Text(subText),
                    ),
                    RaisedButton(
                      child: Text("Buy Now", style: TextStyle(color: Colors.white),),
                      onPressed: (){},
                      color: Colors.red,
                    ),
                    ],
                  ),
                ),
              );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Apps Scroll"),),
          body: Container(
            margin: EdgeInsets.all(10.0),
            height: 250.0,
            child: ListView(
              scrollDirection: Axis.horizontal,//for scroll to left or right
            children: <Widget>[
              article("https://i.imgur.com/xwtHD9C.jpg", "Demo", "Animal"),
              article("https://blog.en.uptodown.com/files/2019/03/imga-featured.jpg", "Demo", "Animal"),
              article("https://media.mehrnews.com/d/2017/10/04/4/2595502.jpg", "Demo", "Animal"),
              article("https://i.imgur.com/hkIYTG9.jpg", "Demo", "Animal"),
              article("https://steemitimages.com/640x0/https://img.esteem.ws/z7ucppphe9.jpg", "Demo", "Animal"),
            ],
            ),
          ),
      ),
    );
  }
}