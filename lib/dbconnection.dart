// import 'package:mysql1/mysql1.dart';



//   // Pokušajte uspostaviti vezu s bazom podataka
//   try {
//     final MySqlConnection connection = await MySqlConnection.connect(settings);

//     // Izvršite SQL upit
//      Results results = await connection.query('SELECT * FROM users');



//      // Results results = await connection.query(
//      //    'INSERT INTO freedb_project.users (name, surname, gender, smoker, email, telnumber, postalcode, land, city, picture) '
//      //        'VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, NULL )',
//      //    [
//      //      'name',
//      //      'surname',
//      //      'M',
//      //       0,
//      //      'ime.prezime@example.com',
//      //      '123456789',
//      //      10000,
//      //      'Hrvatska',
//      //      'Zagreb'
//      //    ]);



//     for (var row in results) {
//       print('Duljina niza: ${row.length}');
//       print('ID: ${row[0]}, Name: ${row[1]}');
//     }

//     // for (var row in results) {
//     //   print('ID: ${row[0]}, Name: ${row[1]}');
//     // }

//     // Zatvorite vezu s bazom
//     await connection.close();
//   }

//   catch(error){
//     print('${error}' );
//   }
// }
