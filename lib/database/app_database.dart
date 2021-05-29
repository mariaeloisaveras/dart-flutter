import 'package:bitebank/database/dao/contact_dao.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Future<Database> getDatabase() async {
  final String path = join(await getDatabasesPath(), 'bitebank.db');
  return openDatabase(
    path,
    onCreate: (db, version) {
      db.execute(ContactDao.tableSql);
    },
    version: 1,
    // onDowngrade:
    //     onDatabaseDowngradeDelete, //apagar os dados do banco ao subir uma versão
  );

//OPÇÃO 2
  // return getDatabasesPath().then((dbPath) {
  //   final String path = join(dbPath, 'bytebank.db');
  //   return openDatabase(
  //     path,
  //     onCreate: (db, version) {
  //       db.execute('CREATE TABLE contacts('
  //           'id INTEGER PRIMARY KEY, '
  //           'name TEXT, '
  //           'account_number INTEGER)');
  //     },
  //     version: 1,
  //     // onDowngrade:
  //     //     onDatabaseDowngradeDelete, //apagar os dados do banco ao subir uma versão
  //   );
  // });
}
