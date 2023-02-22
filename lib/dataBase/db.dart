import 'package:path_provider/path_provider.dart';
import 'package:app_shopping/model/user.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  // declarando o banco de dados
  static const _databaseName = 'user.db';
  static const _dbVersion = 1;

  //singleton
  DatabaseHelper._();

  static final DatabaseHelper instance = DatabaseHelper._();

  static Database? _database;

  Future<Database> get database async {
    _database ?? await _initDatabase();
    return _database!;
  }

  _initDatabase() async {
    String dbPath = await join(await getDatabasesPath()), _databaseName;

    return await openDatabase(dbPath,
        version: _dbVersion, onCreate: _onCreateDB);
  }

  Future _onCreateDB(Database db, int version) async {
    await db.execute('''
      CREATE TABLE ${User.tableUser}(
        ${User.columnId} INTEGER PRIMARY KEY AUTOINCREMENT,
        ${User.columnName} TEXT NOT NULL,
        ${User.columnNickName} TEXT NOT NULL,
        ${User.columnEmail} TEXT NOT NULL,
        ${User.columnPhone} TEXT NOT NULL,
        ${User.columnPassword} TEXT NOT NULL,
        ${User.columnConfPassword} TEXT NOT NULL,
      )
      ''');
  }

  // insert
  Future<int> insertUser(User user) async {
    Database db = await instance.database;
    return await db.insert(User.tableUser, user.toMap());
  }

  // update
  Future<int> updateUser(User user) async {
    Database db = await instance.database;
    return await db.update(User.tableUser, user.toMap(),
        where: '${User.columnId} = ?', whereArgs: [user.id]);
  }

  // delete
  Future<int> deleteUser(int id) async {
    Database db = await instance.database;
    return await db.delete(User.tableUser,
        where: '${User.columnId} = ?', whereArgs: [id]);
  }

  // select
  // TODO: selectUser

  //list
  Future<List<User>> listUsers() async {
    Database db = await instance.database;
    final List<Map<String, dynamic>> maps = await db.query(User.tableUser);
    return List.generate(maps.length, (i) {
      return User(
        id: maps[i][User.columnId],
        name: maps[i][User.columnName],
        nickName: maps[i][User.columnNickName],
        email: maps[i][User.columnEmail],
        phone: maps[i][User.columnPhone],
        password: maps[i][User.columnPassword],
        confPassword: maps[i][User.columnConfPassword],
      );
    });
  }
}
