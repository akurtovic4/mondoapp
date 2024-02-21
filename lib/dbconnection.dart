// import 'package:mysql1/mysql1.dart';



//  
//   try {
//     final MySqlConnection connection = await MySqlConnection.connect(settings);

//     
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

//     
//     await connection.close();
//   }

//   catch(error){
//     print('${error}' );
//   }
// }
