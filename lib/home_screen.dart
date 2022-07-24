import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Delivery Animation'),
        backgroundColor: Colors.lightBlue.shade900,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/delivery_animation.json',
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () async => await showDoneDialog(),
              label: const Text(
                'Order Pizza',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              icon: const Icon(Icons.delivery_dining),
              style: ElevatedButton.styleFrom(
                primary: Colors.lightBlue.shade900,
                padding: const EdgeInsets.all(14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> showDoneDialog() async => await showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            elevation: 4,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Lottie.asset('assets/done.json', ),
                Text(
                  'Enjoy your Order',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightBlue.shade900
                  ),
                ),
                const SizedBox(height: 20)
              ],
            ),
          );
        },
      );
}
