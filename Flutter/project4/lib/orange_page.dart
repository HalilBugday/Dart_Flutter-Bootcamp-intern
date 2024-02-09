import 'package:flutter/material.dart';

class OrangePage extends StatelessWidget {
  const OrangePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Orange page'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'Orange Page',
              style: TextStyle(fontSize: 24),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.purple.shade600),
              child: Text(
                'En başa geri dön',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .popUntil((route) => route.settings.name == '/purplePage');
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange.shade600),
              child: Text(
                'Mora Geri Dön',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .popUntil((route) => route.settings.name == '/');
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.teal.shade600),
              child: Text(
                'En başa dön',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil('/yellowPage', (route) => route.isFirst);
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red.shade600),
              child: Text(
                'Sarıyı ana sayfadan sonra ekle',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
