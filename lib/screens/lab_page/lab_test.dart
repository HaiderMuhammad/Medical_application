import 'package:flutter/material.dart';

class LabTest extends StatelessWidget {
  const LabTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('Note Page'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Center(child: Text('LabTest'),
            )
          ],
        ),
      ),
    );
  }
}
