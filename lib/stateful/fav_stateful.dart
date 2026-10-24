import 'package:flutter/material.dart';

class FavWidget extends StatefulWidget {
  const FavWidget({super.key});

  @override
  State<FavWidget> createState() => _FavWidgetState();
}

class _FavWidgetState extends State<FavWidget> {

  bool _isFav = false;
  int _favCount = 41;


  void _toggleFavorite() {
    setState(() {
      if (_isFav) {
        _favCount--;
        _isFav = false;
      } else {
        _favCount++;
        _isFav = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    print("Rebuild du StatefulWidget !");
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: Icon(
            _isFav ? Icons.star : Icons.star_border,
            color: Colors.yellow,
          ),
          onPressed: _toggleFavorite,
        ),
        SizedBox(
          width: 24,
          child: Text('$_favCount'),
        ),
      ],
    );
  }
}