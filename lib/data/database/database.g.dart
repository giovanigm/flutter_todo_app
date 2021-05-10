// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

class $FloorAppDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder databaseBuilder(String name) =>
      _$AppDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$AppDatabaseBuilder(null);
}

class _$AppDatabaseBuilder {
  _$AppDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  /// Adds migrations to the builder.
  _$AppDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$AppDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<AppDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$AppDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$AppDatabase extends AppDatabase {
  _$AppDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  UserDao? _userDaoInstance;

  TaskDao? _taskDaoInstance;

  CoreDao? _coreDaoInstance;

  Future<sqflite.Database> open(String path, List<Migration> migrations,
      [Callback? callback]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `Users` (`id` TEXT NOT NULL, `name` TEXT NOT NULL, `age` INTEGER NOT NULL, `email` TEXT NOT NULL, `password` TEXT, `token` TEXT, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `Tasks` (`id` TEXT NOT NULL, `description` TEXT NOT NULL, `is_completed` INTEGER NOT NULL, PRIMARY KEY (`id`))');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  UserDao get userDao {
    return _userDaoInstance ??= _$UserDao(database, changeListener);
  }

  @override
  TaskDao get taskDao {
    return _taskDaoInstance ??= _$TaskDao(database, changeListener);
  }

  @override
  CoreDao get coreDao {
    return _coreDaoInstance ??= _$CoreDao(database, changeListener);
  }
}

class _$UserDao extends UserDao {
  _$UserDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _userDataInsertionAdapter = InsertionAdapter(
            database,
            'Users',
            (UserData item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'age': item.age,
                  'email': item.email,
                  'password': item.password,
                  'token': item.token
                }),
        _userDataUpdateAdapter = UpdateAdapter(
            database,
            'Users',
            ['id'],
            (UserData item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'age': item.age,
                  'email': item.email,
                  'password': item.password,
                  'token': item.token
                }),
        _userDataDeletionAdapter = DeletionAdapter(
            database,
            'Users',
            ['id'],
            (UserData item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'age': item.age,
                  'email': item.email,
                  'password': item.password,
                  'token': item.token
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<UserData> _userDataInsertionAdapter;

  final UpdateAdapter<UserData> _userDataUpdateAdapter;

  final DeletionAdapter<UserData> _userDataDeletionAdapter;

  @override
  Future<UserData?> getUser() async {
    return _queryAdapter.query('SELECT * FROM Users LIMIT 1',
        mapper: (Map<String, Object?> row) => UserData(
            id: row['id'] as String,
            name: row['name'] as String,
            age: row['age'] as int,
            email: row['email'] as String,
            password: row['password'] as String?,
            token: row['token'] as String?));
  }

  @override
  Future<void> insertOne(UserData item) async {
    await _userDataInsertionAdapter.insert(item, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertMany(List<UserData> items) async {
    await _userDataInsertionAdapter.insertList(items, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateOne(UserData item) async {
    await _userDataUpdateAdapter.update(item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateMany(List<UserData> items) async {
    await _userDataUpdateAdapter.updateList(items, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(UserData item) async {
    await _userDataDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteMany(List<UserData> items) async {
    await _userDataDeletionAdapter.deleteList(items);
  }
}

class _$TaskDao extends TaskDao {
  _$TaskDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database, changeListener),
        _taskDataInsertionAdapter = InsertionAdapter(
            database,
            'Tasks',
            (TaskData item) => <String, Object?>{
                  'id': item.id,
                  'description': item.description,
                  'is_completed': item.isCompleted ? 1 : 0
                },
            changeListener),
        _taskDataUpdateAdapter = UpdateAdapter(
            database,
            'Tasks',
            ['id'],
            (TaskData item) => <String, Object?>{
                  'id': item.id,
                  'description': item.description,
                  'is_completed': item.isCompleted ? 1 : 0
                },
            changeListener),
        _taskDataDeletionAdapter = DeletionAdapter(
            database,
            'Tasks',
            ['id'],
            (TaskData item) => <String, Object?>{
                  'id': item.id,
                  'description': item.description,
                  'is_completed': item.isCompleted ? 1 : 0
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<TaskData> _taskDataInsertionAdapter;

  final UpdateAdapter<TaskData> _taskDataUpdateAdapter;

  final DeletionAdapter<TaskData> _taskDataDeletionAdapter;

  @override
  Stream<List<TaskData>> watchTasks() {
    return _queryAdapter.queryListStream('SELECT * FROM Tasks',
        mapper: (Map<String, Object?> row) => TaskData(
            id: row['id'] as String,
            description: row['description'] as String,
            isCompleted: (row['is_completed'] as int) != 0),
        queryableName: 'Tasks',
        isView: false);
  }

  @override
  Future<void> insertOne(TaskData item) async {
    await _taskDataInsertionAdapter.insert(item, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertMany(List<TaskData> items) async {
    await _taskDataInsertionAdapter.insertList(items, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateOne(TaskData item) async {
    await _taskDataUpdateAdapter.update(item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateMany(List<TaskData> items) async {
    await _taskDataUpdateAdapter.updateList(items, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(TaskData item) async {
    await _taskDataDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteMany(List<TaskData> items) async {
    await _taskDataDeletionAdapter.deleteList(items);
  }
}

class _$CoreDao extends CoreDao {
  _$CoreDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  @override
  Future<void> deleteAllUsers() async {
    await _queryAdapter.queryNoReturn('DELETE FROM Users');
  }

  @override
  Future<void> deleteAllTasks() async {
    await _queryAdapter.queryNoReturn('DELETE FROM Tasks');
  }

  @override
  Future<void> deleteAllData() async {
    if (database is sqflite.Transaction) {
      await super.deleteAllData();
    } else {
      await (database as sqflite.Database)
          .transaction<void>((transaction) async {
        final transactionDatabase = _$AppDatabase(changeListener)
          ..database = transaction;
        await transactionDatabase.coreDao.deleteAllData();
      });
    }
  }
}
