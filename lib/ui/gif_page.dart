import 'package:flutter/material.dart';
import 'package:share/share.dart';

class GifPage extends StatelessWidget {

  final Map _gitData;

  GifPage(this._gitData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(_gitData["title"], style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
              icon: Icon(Icons.share),
              onPressed: (){
                Share.share(_gitData["images"]["fixed_height"]["url"]);
              })
        ],
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Image.network(_gitData["images"]["fixed_height"]["url"]),
      ),
    );
  }
}
