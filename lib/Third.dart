import 'package:flutter/material.dart';
import 'package:form_two/Next_page.dart';



class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Terima Kasih sebab mendaftar sebagai Ahli',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20), // Add some space between the text and the image
            Image.network(
              'https://static.vecteezy.com/system/resources/previews/015/304/837/original/blue-verified-tick-valid-seal-icon-in-flat-style-design-isolated-on-white-background-validation-concept-vector.jpg',
              width: 200,
              height: 200,
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to the next page when the button is pressed.
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NextPage()), // Replace 'NextPage' with the actual class name of your next page.
                );
              },
              child: Text('Pergi ke halaman utama'),
            ),
          ],
        ),
      ),
    );
  }
}
