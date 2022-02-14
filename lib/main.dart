import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:loja_vendas/models/user_manager.dart';
import 'package:loja_vendas/screens/base/base_screen.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => UserManager(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Sua Loja',
        theme: ThemeData(
          primaryColor:  Colors.lightGreen,
          scaffoldBackgroundColor: Colors.lightGreen,
          appBarTheme: const AppBarTheme(
              //backgroundColor: Colors.lightGreen,
              elevation: 0
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: BaseScreen(),
      ),
    );
  }
}
