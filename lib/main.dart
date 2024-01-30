import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lightcofee/Pages/HomeScreen/home_screen.dart';
import 'package:lightcofee/Pages/intro/intro_page.dart';
import 'package:lightcofee/models/cofee_option.dart';
import 'package:lightcofee/themes/dark_theme.dart';
import 'package:provider/provider.dart';
import 'Pages/HomeScreen/product/product_page.dart';
import 'bloc/cofee_bloc.dart';
import 'themes/light_theme.dart';
import 'bloc/cofee_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'state/cofee_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product List',
      theme: darkTheme,
      home: const ProductListScreen(),
    );
  }
}
