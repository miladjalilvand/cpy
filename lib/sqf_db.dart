// import 'package:sqflite/sqflite.dart';
//import 'package:path/path.dart';


// class Person {
//   int id;
//   String name;
//   int age;
//
//   Person({required this.id, required this.name, required this.age});
// }
// class DatabaseHelper {
//   static final DatabaseHelper instance = DatabaseHelper._instance();
//
//   static Database _db;
//
//   DatabaseHelper._instance();
//
//   String personsTable = 'persons';
//   String colId = 'id';
//   String colName = 'name';
//   String colAge = 'age';
//
//   Future<Database> get db async {
//     if (_db == null) {
//       _db = await _initDb();
//     }
//     return _db;
//   }
  //
  // Future<Database> _initDb() async {
  //   Directory dir = await getApplicationDocumentsDirectory();
  //   String path = join(dir.path, 'my_db.db');
  //   final myDb = await openDatabase(path, version: 1, onCreate: _onCreateDb);
  //   return myDb;
  // }
  //
  // void _onCreateDb(Database db, int version) async {
  //   await db.execute(
  //     'CREATE TABLE $personsTable($colId INTEGER PRIMARY KEY AUTOINCREMENT, $colName TEXT, $colAge INTEGER)',
  //   );
  // }
  //
  // Future<int> insertPerson(Person person) async {
  //   Database db = await this.db;
  //   int result = await db.insert(personsTable, person.toMap());
  //   return result;
  // }
  //
  // Future<int> updatePerson(Person person) async {
  //   Database db = await this.db;
  //   int result = await db.update(personsTable, person.toMap(), where: '$colId = ?', whereArgs: [person.id]);
  //   return result;
  // }
  //
  // Future<int> deletePerson(int id) async {
  //   Database db = await this.db;
  //   int result = await db.delete(personsTable, where: '$colId = ?', whereArgs:
// class DBHelper {
//   static Database _database;
//
//   static final String tableName = 'users';
//   static final String columnId = 'id';
//   static final String columnName = 'name';
//   static final String columnAge = 'age';
//
//   Future<Database> get database async {
//     if (_database != null) {
//       return _database;
//     }
//
//     _database = await initializeDatabase();
//     return _database;
//   }
//
//   Future<Database> initializeDatabase() async {
//     String directory = await getDatabasesPath();
//     String path = join(directory, 'my_database.db');
//
//     return await openDatabase(path, version: 1, onCreate: (db, version) {
//       db.execute(
//           '''CREATE TABLE $tableName (
//              $columnId INTEGER PRIMARY KEY,
//              $columnName TEXT,
//              $columnAge INTEGER
//           )'''
//       );
//     });
//   }
//
//   Future<void> insertUser(User user) async {
//     final db = await database;
//     await db.insert(
//       tableName,
//       user.toMap(),
//       conflictAlgorithm: ConflictAlgorithm.replace,
//     );
//   }
//
//   Future<List<User>> getUsers() async {
//     final db = await database;
//     final List<Map<String, dynamic>> maps = await db.query(tableName);
//
//     return List.generate(maps.length, (index) {
//       return User(
//         id: maps[index][columnId],
//         name: maps[index][columnName],
//         age: maps[index][columnAge],
//       );
//     });
//   }
// }


// class User {
//   int id;
//   String name;
//   int age;
//
//   User({this.id, this.name, this.age});
//
//   Map<String, dynamic> toMap() {
//     return {
//       DBHelper.columnId: id,
//       DBHelper.columnName: name,
//       DBHelper.columnAge: age,
//     };
//   }
// }


// User user = User(name: 'John Doe', age: 30);
// DBHelper dbHelper = DBHelper();
// dbHelper.insertUser(user);


// DBHelper dbHelper = DBHelper();
// List<User> users = await dbHelper.getUsers();


// import 'dart:async';
// import 'package:path/path.dart';
// import 'package:sqflite/sqflite.dart';
//
// class DBHelper {
//   static final DBHelper _instance = DBHelper.internal();
//   factory DBHelper() => _instance;
//
//   final String tableName = "contacts";
//   final String columnId = "id";
//   final String columnName = "name";
//   final String columnPhone = "phone";
//
//   static Database _db;
//
//   Future<Database> get db async {
//     if (_db != null) {
//       return _db;
//     }
//     _db = await initDb();
//     return _db;
//   }
//
//   DBHelper.internal();
//
//   initDb() async {
//     String databasesPath = await getDatabasesPath();
//     String path = join(databasesPath, 'mydatabase.db');
//
//     var db = await openDatabase(path, version: 1, onCreate: _onCreate);
//     return db;
//   }
//
//   void _onCreate(Database db, int version) async {
//     await db.execute(
//         "CREATE TABLE $tableName($columnId INTEGER PRIMARY KEY, $columnName TEXT, $columnPhone TEXT)");
//   }
//
//   Future<int> saveContact(Contact contact) async {
//     var dbClient = await db;
//     int res = await dbClient.insert(tableName, contact.toMap());
//     return res;
//   }
//
//   Future<List<Contact>> getContacts() async {
//     var dbClient = await db;
//     List<Map> list = await dbClient.rawQuery('SELECT * FROM $tableName');
//     List<Contact> contacts = [];
//     for (int i = 0; i < list.length; i++) {
//       var contact = Contact.fromMap(list[i]);
//       contacts.add(contact);
//     }
//     return contacts;
//   }
// }
//
// class Contact {
//   int id;
//   String name;
//   String phone;
//
//   Contact({this.id, this.name, this.phone});
//
//   Map<String, dynamic> toMap() {
//     return {'name': name, 'phone': phone};
//   }
//
//   factory Contact.fromMap(Map<String, dynamic> map) {
//     return Contact(id: map['id'], name: map['name'], phone: map['phone']);
//   }
// }
//
//DBHelper dbHelper = DBHelper();
// Contact newContact = Contact(name: "John Smith", phone: "555-1234");
// int res = await dbHelper.saveContact(newContact);
//List<Contact> contacts = await dbHelper.getContacts();
