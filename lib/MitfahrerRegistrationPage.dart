import 'package:flutter/material.dart';
import 'package:mondoapp/BlueBoxMitfahrer.dart';

class MitfahrerRegistrationPage extends StatefulWidget {
  @override
  _MitfahrerRegistrationPageState createState() => _MitfahrerRegistrationPageState();
}

class _MitfahrerRegistrationPageState extends State<MitfahrerRegistrationPage> {
  String gender = '';
  String smoker = ''; // Dodao sam promenljivu za praćenje izabrane vrednosti za Raucher

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 4,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/headerblur.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.white.withOpacity(0.6),
                    BlendMode.srcOver,
                  ),
                ),
              ),
            ),
            BlueBoxMitfahrer(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Bitte geben Sie Ihre Daten ein',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.camera_alt),
                        onPressed: () {
                          // Dodajte akciju za odabir slike
                        },
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          height: 48,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Vorname *',
                              hintText: 'Enter your first name',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        Container(
                          height: 48,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Nachname *',
                              hintText: 'Enter your last name',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0.0),
              child: Row(
                children: [
                  Text(
                    'Geschlecht *',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(width: 16),
                  Radio(
                    value: 'Mannlich',
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value.toString();
                      });
                    },
                  ),
                  Text('Mannlich'),
                  Radio(
                    value: 'Weiblich',
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value.toString();
                      });
                    },
                  ),
                  Text('Weiblich'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5.0),
              child: Row(
                children: [
                  Text(
                    'Raucher *',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(width: 16),
                  Radio(
                    value: 'Ja',
                    groupValue: smoker,
                    onChanged: (value) {
                      setState(() {
                        smoker = value.toString();
                      });
                    },
                  ),
                  Text('Ja'),
                  Radio(
                    value: 'Nein',
                    groupValue: smoker,
                    onChanged: (value) {
                      setState(() {
                        smoker = value.toString();
                      });
                    },
                  ),
                  Text('Nein'),
                ],
              ),
            ),
            SizedBox(height: 16),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: 48,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'E-Mail Adresse *',
                        hintText: 'E-Mail Adresse *',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    height: 48,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Passwort *',
                        hintText: 'Passwort *',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 48,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Land *',
                          hintText: 'Land *',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Container(
                      height: 48,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Stadt *',
                          hintText: 'Stadt *',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 48,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Adresse *',
                          hintText: 'Adresse *',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Container(
                      height: 48,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Postzahl *',
                          hintText: 'Postzahl *',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 48,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Telefonnummer *',
                  hintText: 'Telefonnummer *',
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 50, vertical: 10.0),
              decoration: BoxDecoration(
                color: Colors.lightBlue.shade900,
                borderRadius: BorderRadius.circular(10),
              ),

              child: Center(
                child: Text(
                  "Jetz Registrierung",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            SizedBox(height: 10),
          ],
        ),
      ),

    );
  }
}
