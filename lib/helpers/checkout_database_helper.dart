import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._init();

  static Database? _database;

  DatabaseHelper._init();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('checkout.db');
    return _database!;
  }

  Future<Database> _initDB(String path) async {
    final dbPath = await getDatabasesPath();
    final dbLocation = join(dbPath, path);

    return await openDatabase(dbLocation, version: 1, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    await db.execute(''' 
      CREATE TABLE checkout(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        noPesanan TEXT,   -- Column for order number
        itemName TEXT,
        quantity INTEGER,
        price INTEGER,
        totalPrice INTEGER,
        discount INTEGER,
        status TEXT DEFAULT 'Pesanan diproses',  -- Add default status column
        noKantin TEXT DEFAULT 'Kantin 1'
      )
    ''');
  }

  Future<void> insertCheckoutData(Map<String, dynamic> data) async {
  final db = await instance.database;

  // Ensure discount is a valid number
  data['discount'] = data['discount'] is int ? data['discount'] : int.tryParse(data['discount'].toString()) ?? 0;

  // Default the status if not provided
  data['status'] = data['status'] ?? 'Pesanan diproses';

  await db.insert(
    'checkout',
    data,
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}


  Future<List<Map<String, dynamic>>> getCheckoutData() async {
    final db = await instance.database;
    return await db.query('checkout');
  }

  Future<void> deleteCheckoutData(int id) async {
    final db = await instance.database;
    await db.delete('checkout', where: 'id = ?', whereArgs: [id]);
  }

  Future<List<Map<String, dynamic>>> getCheckoutByNoPesanan(
    String noPesanan,
  ) async {
    final db = await instance.database;
    return await db.query(
      'checkout',
      where: 'noPesanan = ?',
      whereArgs: [noPesanan],
    );
  }
}
