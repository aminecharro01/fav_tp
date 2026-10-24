import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'fav_model.dart';

class FavWidgetProvider extends StatelessWidget {
  const FavWidgetProvider({super.key});

  @override
  Widget build(BuildContext context) {
    print("Rebuild du Widget Provider !");
    // Récupération de l'instance du modèle depuis le BuildContext
    final fav = Provider.of<FavModel>(context);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: Icon(
            fav.isFav ? Icons.star : Icons.star_border,
            color: Colors.yellow,
          ),
          onPressed: fav.toggleFav,
        ),
        SizedBox(
          width: 24,
          child: Text('${fav.favCount}'),
        ),
      ],
    );
  }
}