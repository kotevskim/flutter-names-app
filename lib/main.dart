import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app_state.dart';
import 'home_page.dart';

void main() {
  // debugPaintSizeEnabled = true; // draw lines around widgets
  runApp(const WordPairsApp());
}

class WordPairsApp extends StatelessWidget {
  const WordPairsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => AppState(),
        child: MaterialApp(
          title: 'Words App',
          theme: ThemeData(
            useMaterial3: true,
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
          ),
          home: HomePage(),
        ));
  }
}
