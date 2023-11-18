import 'package:flutter/material.dart';
import 'package:gradient_text/gradient_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            GradientText(
              text: 'LinearGradient text',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            GradientText(
              text: 'RadialGradient text',
              gradient: const RadialGradient(
                colors: [
                  Color(0xff2193b0),
                  Color(0xffffc3a0),
                  Color(0xFF734b6d),
                ],
              ),
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            GradientText(
              text: 'SweepGradient text',
              gradient: const SweepGradient(
                colors: [
                  Color(0xffcc2b5e),
                  Color(0xff753a88),
                ],
              ),
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ],
        ),
      ),
    );
  }
}
