import 'package:flutter/material.dart';
import 'package:form_two/second.dart';



class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const RegisterPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _genderGroupValue = ValueNotifier<String>('male');

  //create the controllers
  TextEditingController namaController = TextEditingController();
  TextEditingController nomborController = TextEditingController();
  TextEditingController institutController = TextEditingController();

  bool _isFormValid() {
    return namaController.text.isNotEmpty &&
        nomborController.text.isNotEmpty &&
        institutController.text.isNotEmpty;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pendaftaran'),
      ),

      //for the form to be in center
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: ListView(
            shrinkWrap: true,
            children: [
              const Text('Nama:'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: namaController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Masukkan nama',
                ),
              ),
              //some space between name and email
              const SizedBox(
                height: 5,
              ),
              const Text('Nombor telefon:'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: nomborController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Masukkan Nombor',
                ),
              ),


              //some space between email and mobile
              const SizedBox(
                height: 10,
              ),

              const Text('Nama Institut'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: institutController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Masukkan Institut',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              //create button for gender
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Pendaftaran:'),
                  Radio(
                    value: 'pelajar',
                    groupValue: _genderGroupValue.value,
                    onChanged: (value) {
                      setState(() {
                        _genderGroupValue.value = value!;
                      });
                    },
                  ),
                  Text('pelajar'),
                  Radio(
                    value: 'orang awam',
                    groupValue: _genderGroupValue.value,
                    onChanged: (value) {
                      setState(() {
                        _genderGroupValue.value = value!;
                      });
                    },
                  ),
                  Text('orang awam'),
                ],
              ),

              SizedBox(
                height: 5,
              ),
              //create button for register
              ElevatedButton(
                onPressed: _isFormValid() ? () {
                  // navigate to student page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondPage()),
                  );
                } : null,
                child: Text(
                  'Seterusnya',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}