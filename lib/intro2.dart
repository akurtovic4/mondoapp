import 'package:flutter/material.dart';
import 'intro1.dart';
import 'intro3.dart';

class intro2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Prva slika s niskim opacity-em kao pozadina
          Opacity(
            opacity: 0.2,  // Postavite opacity prema potrebi
            child: Image.asset(
              'images/zenasasalom.jpg',  // Zamijenite s putanjom prema prvoj slici
              fit: BoxFit.cover,
              width: double.infinity,  // Set width to infinity
              height: double.infinity, // Set height to infinity
              alignment: Alignment.centerLeft, // Adjust the alignment as needed
            ),
          ),

          // Druga slika preko prve slike na jednoj četvrtini ekrana
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: MediaQuery.of(context).size.height * 0.75,  // Postavite visinu prema potrebi
            child: Image.asset(
              'images/go2.png',  // Zamijenite s putanjom prema drugoj slici
              fit: BoxFit.cover,
            ),
          ),

          // Naslov ispod druge slike
          Positioned(
            bottom: 250,
            left: 16,
            right: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mitfahreten zu Tausenden Reisezielen zu günstigen Preisen',
                  style: TextStyle(
                    color: Colors.black, // Changed title color to black
                    fontSize: 24,  // Increased font size
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 15), // Reduced spacing between title and paragraphs

                // Prvi paragraf s ikonom strelice u baklavi
                Row(
                  children: [
                    Icon(Icons.arrow_circle_right, color: Colors.lightBlue.shade900, size: 24),  // Increased icon size
                    SizedBox(width: 8),
                    Expanded(  // Ovo omogućuje tekstu da zauzme preostali prostor u redu
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Preisgünstig unterwegs sein',
                            style: TextStyle(
                              color: Colors.black, // Changed to black
                              fontWeight: FontWeight.bold,
                              fontSize: 18,  // Increased font size
                            ),
                          ),
                          SizedBox(height: 8), // Added spacing between title and text
                          // Dodajte svoj tekst ispod naslova
                          Container(
                            width: double.infinity,  // Omogućava automatski prijelaz u novi red
                            child: Text(
                              'Egal, wo du hinwillst, mit einer Mitfahr kommst du preisgünstiger hin.',
                              style: TextStyle(color: Colors.black), // Changed to black
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),

                // Drugi paragraf s ikonom bloka s plusom
                Row(
                  children: [
                    Icon(Icons.add_card_outlined, color: Colors.lightBlue.shade900, size: 24),  // Increased icon size
                    SizedBox(width: 8),
                    Expanded(  // Ovo omogućuje tekstu da zauzme preostali prostor u redu
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Vertrauenswürdig und unkompliziert',
                            style: TextStyle(
                              color: Colors.black, // Changed to black
                              fontWeight: FontWeight.bold,
                              fontSize: 18,  // Increased font size
                            ),
                          ),
                          SizedBox(height: 8), // Added spacing between title and text
                          // Dodajte svoj tekst ispod naslova
                          Container(
                            width: double.infinity,  // Omogućava automatski prijelaz u novi red
                            child: Text(
                              'Wir überprüfen die Bewertungen, Profile und Ausweisdokumente, damit du weißt, bei wem du mitfährst.',
                              style: TextStyle(color: Colors.black), // Changed to black
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),

                // Treći paragraf s ikonom auta
                Row(
                  children: [
                    Icon(Icons.directions_car, color: Colors.lightBlue.shade900, size: 24),  // Increased icon size
                    SizedBox(width: 8),
                    Expanded(  // Ovo omogućuje tekstu da zauzme preostali prostor u redu
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Nahe macht es einfacher',
                            style: TextStyle(
                              color: Colors.black, // Changed to black
                              fontWeight: FontWeight.bold,
                              fontSize: 18,  // Increased font size
                            ),
                          ),
                          SizedBox(height: 8), // Added spacing between title and text
                          // Dodajte svoj tekst ispod naslova
                          Container(
                            width: double.infinity,  // Omogućava automatski prijelaz u novi red
                            child: Text(
                              'Bei dir in der Nähe gibt es immer eine Fahrt. Ab jetzt kannst du die Fahrt, die am nächsten von dir entfernt ist.',
                              style: TextStyle(color: Colors.black), // Changed to black
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Dodajte svoje dugme ovdje
          Positioned(
            bottom: 16,
            left: 16,
            right: 16,
           child: ElevatedButton(
             onPressed: () {
               // Logika za dugme "Losgen"
               print('Dugme Losgen je pritisnuto.');
               Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => intro3()),
               );
             },
             style: ElevatedButton.styleFrom(
               backgroundColor: Colors.blue.shade900, // Boja pozadine dugmeta
               foregroundColor: Colors.white, // Boja teksta na dugmetu
             ),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text('Losgen'),
                 SizedBox(width: 8), // Razmak između teksta i strelice
                 Icon(
                   Icons.arrow_forward,
                   color: Colors.white, // Boja strelice
                 ),
               ],
             ),
           ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: intro2(),
  ));
}
