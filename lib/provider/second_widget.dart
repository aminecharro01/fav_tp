import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'fav_model.dart';

class SecondWidget extends StatelessWidget {
  const SecondWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // 1. Récupération de l'instance partagée de FavModel
    final fav = Provider.of<FavModel>(context);

    // 2. Vérification visuelle dans la console
    print("Rebuild de SecondWidget !");

    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.amber.shade50,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: Icon(
              fav.isFav ? Icons.star : Icons.star_border,
              color: Colors.orange,
            ),
            onPressed: fav.toggleFav, // Même action pour basculer l'état
          ),
          Text(
            'SecondWidget : ${fav.favCount}',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}