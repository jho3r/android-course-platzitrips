import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatingActionButtonGreen();
  }

}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen>{

  bool favorite = false;

  void onPressedFav(){
    setState(() {
      favorite = !this.favorite;
    });
    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: Text('Agregaste a tus favoritos')
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: 'Fav',
      onPressed: onPressedFav,
      child: Icon(
        this.favorite ? Icons.favorite : Icons.favorite_border
      ),
    );
  }

}