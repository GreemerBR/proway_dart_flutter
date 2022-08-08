import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  // Padrão Singleton
  //._ torna o construtor privado
  DatabaseHelper._();
  // criado um objeto estático que pega uma instância
  static DatabaseHelper instance = DatabaseHelper._();

  static Database? _database;
  Future<Database> get database async {
    _database ??= await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = await getDatabasesPath();
    String pathWithName = '$path/database.db';

    return await openDatabase(
      pathWithName,
      version: 1,
      onCreate: onCreateTable,
    );
  }

  // MÉTODO PARA CRIAR A TABELA NO OnCreate
  Future onCreateTable(Database db, int versin) async {
    await db.execute(
      '''CREATE TABLE texts (
      id INTEGER PRIMARY KEY AUTOINCREMENT, 
      title TEXT
      )''',
    );
  }

  // MÉTODOS DO CRUD
  // Future é int pq a gente colocou o mouse sobre o insert e viu isso
  Future<int> insertText(String text) async {
    Database db = await instance.database;
    return db.insert('texts', {'title': text});
  }

  Future<String> getText() async {
    Database db = await instance.database;
    List<Map<String, dynamic>> response = await db.query('texts');
    if (response.isNotEmpty) {
      return response.last['title'];
    } else {
      return 'Nenhum dado ancontrado';
    }
  }
}
