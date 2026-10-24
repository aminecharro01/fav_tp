import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'stateful/fav_stateful.dart';
import 'provider/fav_model.dart';
import 'provider/fav_provider_view.dart';
import 'provider/second_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FavModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Widget à état - Exemple"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "1. État local (StatefulWidget) :",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const FavWidget(),
                const SizedBox(height: 30),
                const Text(
                  "2. Widgets partagés avec Provider :",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const FavWidgetProvider(), // Premier consommateur
                const SizedBox(height: 10),
                const SecondWidget(),     //  Deuxième consommateur
              ],
            ),
          ),
        ),
      ),
    );
  }
}