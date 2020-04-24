// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class User extends DataClass implements Insertable<User> {
  final int id;
  final String userName;
  final String name;
  final String surname;
  final String emailAddress;
  final bool isActive;
  final String fullName;
  final String lastLoginTime;
  final String creationTime;
  User(
      {@required this.id,
      @required this.userName,
      @required this.name,
      @required this.surname,
      @required this.emailAddress,
      @required this.isActive,
      @required this.fullName,
      this.lastLoginTime,
      this.creationTime});
  factory User.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    return User(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      userName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}user_name']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      surname:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}surname']),
      emailAddress: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}email_address']),
      isActive:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}is_active']),
      fullName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}full_name']),
      lastLoginTime: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}last_login_time']),
      creationTime: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}creation_time']),
    );
  }
  factory User.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return User(
      id: serializer.fromJson<int>(json['id']),
      userName: serializer.fromJson<String>(json['userName']),
      name: serializer.fromJson<String>(json['name']),
      surname: serializer.fromJson<String>(json['surname']),
      emailAddress: serializer.fromJson<String>(json['emailAddress']),
      isActive: serializer.fromJson<bool>(json['isActive']),
      fullName: serializer.fromJson<String>(json['fullName']),
      lastLoginTime: serializer.fromJson<String>(json['lastLoginTime']),
      creationTime: serializer.fromJson<String>(json['creationTime']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'userName': serializer.toJson<String>(userName),
      'name': serializer.toJson<String>(name),
      'surname': serializer.toJson<String>(surname),
      'emailAddress': serializer.toJson<String>(emailAddress),
      'isActive': serializer.toJson<bool>(isActive),
      'fullName': serializer.toJson<String>(fullName),
      'lastLoginTime': serializer.toJson<String>(lastLoginTime),
      'creationTime': serializer.toJson<String>(creationTime),
    };
  }

  @override
  UsersCompanion createCompanion(bool nullToAbsent) {
    return UsersCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      userName: userName == null && nullToAbsent
          ? const Value.absent()
          : Value(userName),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      surname: surname == null && nullToAbsent
          ? const Value.absent()
          : Value(surname),
      emailAddress: emailAddress == null && nullToAbsent
          ? const Value.absent()
          : Value(emailAddress),
      isActive: isActive == null && nullToAbsent
          ? const Value.absent()
          : Value(isActive),
      fullName: fullName == null && nullToAbsent
          ? const Value.absent()
          : Value(fullName),
      lastLoginTime: lastLoginTime == null && nullToAbsent
          ? const Value.absent()
          : Value(lastLoginTime),
      creationTime: creationTime == null && nullToAbsent
          ? const Value.absent()
          : Value(creationTime),
    );
  }

  User copyWith(
          {int id,
          String userName,
          String name,
          String surname,
          String emailAddress,
          bool isActive,
          String fullName,
          String lastLoginTime,
          String creationTime}) =>
      User(
        id: id ?? this.id,
        userName: userName ?? this.userName,
        name: name ?? this.name,
        surname: surname ?? this.surname,
        emailAddress: emailAddress ?? this.emailAddress,
        isActive: isActive ?? this.isActive,
        fullName: fullName ?? this.fullName,
        lastLoginTime: lastLoginTime ?? this.lastLoginTime,
        creationTime: creationTime ?? this.creationTime,
      );
  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('id: $id, ')
          ..write('userName: $userName, ')
          ..write('name: $name, ')
          ..write('surname: $surname, ')
          ..write('emailAddress: $emailAddress, ')
          ..write('isActive: $isActive, ')
          ..write('fullName: $fullName, ')
          ..write('lastLoginTime: $lastLoginTime, ')
          ..write('creationTime: $creationTime')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          userName.hashCode,
          $mrjc(
              name.hashCode,
              $mrjc(
                  surname.hashCode,
                  $mrjc(
                      emailAddress.hashCode,
                      $mrjc(
                          isActive.hashCode,
                          $mrjc(
                              fullName.hashCode,
                              $mrjc(lastLoginTime.hashCode,
                                  creationTime.hashCode)))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is User &&
          other.id == this.id &&
          other.userName == this.userName &&
          other.name == this.name &&
          other.surname == this.surname &&
          other.emailAddress == this.emailAddress &&
          other.isActive == this.isActive &&
          other.fullName == this.fullName &&
          other.lastLoginTime == this.lastLoginTime &&
          other.creationTime == this.creationTime);
}

class UsersCompanion extends UpdateCompanion<User> {
  final Value<int> id;
  final Value<String> userName;
  final Value<String> name;
  final Value<String> surname;
  final Value<String> emailAddress;
  final Value<bool> isActive;
  final Value<String> fullName;
  final Value<String> lastLoginTime;
  final Value<String> creationTime;
  const UsersCompanion({
    this.id = const Value.absent(),
    this.userName = const Value.absent(),
    this.name = const Value.absent(),
    this.surname = const Value.absent(),
    this.emailAddress = const Value.absent(),
    this.isActive = const Value.absent(),
    this.fullName = const Value.absent(),
    this.lastLoginTime = const Value.absent(),
    this.creationTime = const Value.absent(),
  });
  UsersCompanion.insert({
    @required int id,
    @required String userName,
    @required String name,
    @required String surname,
    @required String emailAddress,
    this.isActive = const Value.absent(),
    @required String fullName,
    this.lastLoginTime = const Value.absent(),
    this.creationTime = const Value.absent(),
  })  : id = Value(id),
        userName = Value(userName),
        name = Value(name),
        surname = Value(surname),
        emailAddress = Value(emailAddress),
        fullName = Value(fullName);
  UsersCompanion copyWith(
      {Value<int> id,
      Value<String> userName,
      Value<String> name,
      Value<String> surname,
      Value<String> emailAddress,
      Value<bool> isActive,
      Value<String> fullName,
      Value<String> lastLoginTime,
      Value<String> creationTime}) {
    return UsersCompanion(
      id: id ?? this.id,
      userName: userName ?? this.userName,
      name: name ?? this.name,
      surname: surname ?? this.surname,
      emailAddress: emailAddress ?? this.emailAddress,
      isActive: isActive ?? this.isActive,
      fullName: fullName ?? this.fullName,
      lastLoginTime: lastLoginTime ?? this.lastLoginTime,
      creationTime: creationTime ?? this.creationTime,
    );
  }
}

class $UsersTable extends Users with TableInfo<$UsersTable, User> {
  final GeneratedDatabase _db;
  final String _alias;
  $UsersTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn(
      'id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _userNameMeta = const VerificationMeta('userName');
  GeneratedTextColumn _userName;
  @override
  GeneratedTextColumn get userName => _userName ??= _constructUserName();
  GeneratedTextColumn _constructUserName() {
    return GeneratedTextColumn('user_name', $tableName, false,
        minTextLength: 1, maxTextLength: 100);
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn('name', $tableName, false,
        minTextLength: 1, maxTextLength: 300);
  }

  final VerificationMeta _surnameMeta = const VerificationMeta('surname');
  GeneratedTextColumn _surname;
  @override
  GeneratedTextColumn get surname => _surname ??= _constructSurname();
  GeneratedTextColumn _constructSurname() {
    return GeneratedTextColumn('surname', $tableName, false,
        minTextLength: 1, maxTextLength: 150);
  }

  final VerificationMeta _emailAddressMeta =
      const VerificationMeta('emailAddress');
  GeneratedTextColumn _emailAddress;
  @override
  GeneratedTextColumn get emailAddress =>
      _emailAddress ??= _constructEmailAddress();
  GeneratedTextColumn _constructEmailAddress() {
    return GeneratedTextColumn('email_address', $tableName, false,
        minTextLength: 5, maxTextLength: 400);
  }

  final VerificationMeta _isActiveMeta = const VerificationMeta('isActive');
  GeneratedBoolColumn _isActive;
  @override
  GeneratedBoolColumn get isActive => _isActive ??= _constructIsActive();
  GeneratedBoolColumn _constructIsActive() {
    return GeneratedBoolColumn('is_active', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _fullNameMeta = const VerificationMeta('fullName');
  GeneratedTextColumn _fullName;
  @override
  GeneratedTextColumn get fullName => _fullName ??= _constructFullName();
  GeneratedTextColumn _constructFullName() {
    return GeneratedTextColumn('full_name', $tableName, false,
        minTextLength: 1, maxTextLength: 300);
  }

  final VerificationMeta _lastLoginTimeMeta =
      const VerificationMeta('lastLoginTime');
  GeneratedTextColumn _lastLoginTime;
  @override
  GeneratedTextColumn get lastLoginTime =>
      _lastLoginTime ??= _constructLastLoginTime();
  GeneratedTextColumn _constructLastLoginTime() {
    return GeneratedTextColumn(
      'last_login_time',
      $tableName,
      true,
    );
  }

  final VerificationMeta _creationTimeMeta =
      const VerificationMeta('creationTime');
  GeneratedTextColumn _creationTime;
  @override
  GeneratedTextColumn get creationTime =>
      _creationTime ??= _constructCreationTime();
  GeneratedTextColumn _constructCreationTime() {
    return GeneratedTextColumn(
      'creation_time',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        userName,
        name,
        surname,
        emailAddress,
        isActive,
        fullName,
        lastLoginTime,
        creationTime
      ];
  @override
  $UsersTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'users';
  @override
  final String actualTableName = 'users';
  @override
  VerificationContext validateIntegrity(UsersCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (d.userName.present) {
      context.handle(_userNameMeta,
          userName.isAcceptableValue(d.userName.value, _userNameMeta));
    } else if (isInserting) {
      context.missing(_userNameMeta);
    }
    if (d.name.present) {
      context.handle(
          _nameMeta, name.isAcceptableValue(d.name.value, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (d.surname.present) {
      context.handle(_surnameMeta,
          surname.isAcceptableValue(d.surname.value, _surnameMeta));
    } else if (isInserting) {
      context.missing(_surnameMeta);
    }
    if (d.emailAddress.present) {
      context.handle(
          _emailAddressMeta,
          emailAddress.isAcceptableValue(
              d.emailAddress.value, _emailAddressMeta));
    } else if (isInserting) {
      context.missing(_emailAddressMeta);
    }
    if (d.isActive.present) {
      context.handle(_isActiveMeta,
          isActive.isAcceptableValue(d.isActive.value, _isActiveMeta));
    }
    if (d.fullName.present) {
      context.handle(_fullNameMeta,
          fullName.isAcceptableValue(d.fullName.value, _fullNameMeta));
    } else if (isInserting) {
      context.missing(_fullNameMeta);
    }
    if (d.lastLoginTime.present) {
      context.handle(
          _lastLoginTimeMeta,
          lastLoginTime.isAcceptableValue(
              d.lastLoginTime.value, _lastLoginTimeMeta));
    }
    if (d.creationTime.present) {
      context.handle(
          _creationTimeMeta,
          creationTime.isAcceptableValue(
              d.creationTime.value, _creationTimeMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  User map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return User.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(UsersCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.userName.present) {
      map['user_name'] = Variable<String, StringType>(d.userName.value);
    }
    if (d.name.present) {
      map['name'] = Variable<String, StringType>(d.name.value);
    }
    if (d.surname.present) {
      map['surname'] = Variable<String, StringType>(d.surname.value);
    }
    if (d.emailAddress.present) {
      map['email_address'] = Variable<String, StringType>(d.emailAddress.value);
    }
    if (d.isActive.present) {
      map['is_active'] = Variable<bool, BoolType>(d.isActive.value);
    }
    if (d.fullName.present) {
      map['full_name'] = Variable<String, StringType>(d.fullName.value);
    }
    if (d.lastLoginTime.present) {
      map['last_login_time'] =
          Variable<String, StringType>(d.lastLoginTime.value);
    }
    if (d.creationTime.present) {
      map['creation_time'] = Variable<String, StringType>(d.creationTime.value);
    }
    return map;
  }

  @override
  $UsersTable createAlias(String alias) {
    return $UsersTable(_db, alias);
  }
}

class ComssetData extends DataClass implements Insertable<ComssetData> {
  final int id;
  final String serverurl;
  final String username;
  final String newpasskey;
  final String confirmpasskey;
  final String syncfrequency;
  final String commtype;
  final String typeoferp;
  ComssetData(
      {@required this.id,
      @required this.serverurl,
      @required this.username,
      @required this.newpasskey,
      @required this.confirmpasskey,
      @required this.syncfrequency,
      @required this.commtype,
      @required this.typeoferp});
  factory ComssetData.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return ComssetData(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      serverurl: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}serverurl']),
      username: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}username']),
      newpasskey: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}newpasskey']),
      confirmpasskey: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}confirmpasskey']),
      syncfrequency: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}syncfrequency']),
      commtype: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}commtype']),
      typeoferp: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}typeoferp']),
    );
  }
  factory ComssetData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return ComssetData(
      id: serializer.fromJson<int>(json['id']),
      serverurl: serializer.fromJson<String>(json['serverurl']),
      username: serializer.fromJson<String>(json['username']),
      newpasskey: serializer.fromJson<String>(json['newpasskey']),
      confirmpasskey: serializer.fromJson<String>(json['confirmpasskey']),
      syncfrequency: serializer.fromJson<String>(json['syncfrequency']),
      commtype: serializer.fromJson<String>(json['commtype']),
      typeoferp: serializer.fromJson<String>(json['typeoferp']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'serverurl': serializer.toJson<String>(serverurl),
      'username': serializer.toJson<String>(username),
      'newpasskey': serializer.toJson<String>(newpasskey),
      'confirmpasskey': serializer.toJson<String>(confirmpasskey),
      'syncfrequency': serializer.toJson<String>(syncfrequency),
      'commtype': serializer.toJson<String>(commtype),
      'typeoferp': serializer.toJson<String>(typeoferp),
    };
  }

  @override
  ComssetCompanion createCompanion(bool nullToAbsent) {
    return ComssetCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      serverurl: serverurl == null && nullToAbsent
          ? const Value.absent()
          : Value(serverurl),
      username: username == null && nullToAbsent
          ? const Value.absent()
          : Value(username),
      newpasskey: newpasskey == null && nullToAbsent
          ? const Value.absent()
          : Value(newpasskey),
      confirmpasskey: confirmpasskey == null && nullToAbsent
          ? const Value.absent()
          : Value(confirmpasskey),
      syncfrequency: syncfrequency == null && nullToAbsent
          ? const Value.absent()
          : Value(syncfrequency),
      commtype: commtype == null && nullToAbsent
          ? const Value.absent()
          : Value(commtype),
      typeoferp: typeoferp == null && nullToAbsent
          ? const Value.absent()
          : Value(typeoferp),
    );
  }

  ComssetData copyWith(
          {int id,
          String serverurl,
          String username,
          String newpasskey,
          String confirmpasskey,
          String syncfrequency,
          String commtype,
          String typeoferp}) =>
      ComssetData(
        id: id ?? this.id,
        serverurl: serverurl ?? this.serverurl,
        username: username ?? this.username,
        newpasskey: newpasskey ?? this.newpasskey,
        confirmpasskey: confirmpasskey ?? this.confirmpasskey,
        syncfrequency: syncfrequency ?? this.syncfrequency,
        commtype: commtype ?? this.commtype,
        typeoferp: typeoferp ?? this.typeoferp,
      );
  @override
  String toString() {
    return (StringBuffer('ComssetData(')
          ..write('id: $id, ')
          ..write('serverurl: $serverurl, ')
          ..write('username: $username, ')
          ..write('newpasskey: $newpasskey, ')
          ..write('confirmpasskey: $confirmpasskey, ')
          ..write('syncfrequency: $syncfrequency, ')
          ..write('commtype: $commtype, ')
          ..write('typeoferp: $typeoferp')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          serverurl.hashCode,
          $mrjc(
              username.hashCode,
              $mrjc(
                  newpasskey.hashCode,
                  $mrjc(
                      confirmpasskey.hashCode,
                      $mrjc(syncfrequency.hashCode,
                          $mrjc(commtype.hashCode, typeoferp.hashCode))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is ComssetData &&
          other.id == this.id &&
          other.serverurl == this.serverurl &&
          other.username == this.username &&
          other.newpasskey == this.newpasskey &&
          other.confirmpasskey == this.confirmpasskey &&
          other.syncfrequency == this.syncfrequency &&
          other.commtype == this.commtype &&
          other.typeoferp == this.typeoferp);
}

class ComssetCompanion extends UpdateCompanion<ComssetData> {
  final Value<int> id;
  final Value<String> serverurl;
  final Value<String> username;
  final Value<String> newpasskey;
  final Value<String> confirmpasskey;
  final Value<String> syncfrequency;
  final Value<String> commtype;
  final Value<String> typeoferp;
  const ComssetCompanion({
    this.id = const Value.absent(),
    this.serverurl = const Value.absent(),
    this.username = const Value.absent(),
    this.newpasskey = const Value.absent(),
    this.confirmpasskey = const Value.absent(),
    this.syncfrequency = const Value.absent(),
    this.commtype = const Value.absent(),
    this.typeoferp = const Value.absent(),
  });
  ComssetCompanion.insert({
    @required int id,
    @required String serverurl,
    @required String username,
    @required String newpasskey,
    @required String confirmpasskey,
    @required String syncfrequency,
    @required String commtype,
    @required String typeoferp,
  })  : id = Value(id),
        serverurl = Value(serverurl),
        username = Value(username),
        newpasskey = Value(newpasskey),
        confirmpasskey = Value(confirmpasskey),
        syncfrequency = Value(syncfrequency),
        commtype = Value(commtype),
        typeoferp = Value(typeoferp);
  ComssetCompanion copyWith(
      {Value<int> id,
      Value<String> serverurl,
      Value<String> username,
      Value<String> newpasskey,
      Value<String> confirmpasskey,
      Value<String> syncfrequency,
      Value<String> commtype,
      Value<String> typeoferp}) {
    return ComssetCompanion(
      id: id ?? this.id,
      serverurl: serverurl ?? this.serverurl,
      username: username ?? this.username,
      newpasskey: newpasskey ?? this.newpasskey,
      confirmpasskey: confirmpasskey ?? this.confirmpasskey,
      syncfrequency: syncfrequency ?? this.syncfrequency,
      commtype: commtype ?? this.commtype,
      typeoferp: typeoferp ?? this.typeoferp,
    );
  }
}

class $ComssetTable extends Comsset with TableInfo<$ComssetTable, ComssetData> {
  final GeneratedDatabase _db;
  final String _alias;
  $ComssetTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn(
      'id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _serverurlMeta = const VerificationMeta('serverurl');
  GeneratedTextColumn _serverurl;
  @override
  GeneratedTextColumn get serverurl => _serverurl ??= _constructServerurl();
  GeneratedTextColumn _constructServerurl() {
    return GeneratedTextColumn(
      'serverurl',
      $tableName,
      false,
    );
  }

  final VerificationMeta _usernameMeta = const VerificationMeta('username');
  GeneratedTextColumn _username;
  @override
  GeneratedTextColumn get username => _username ??= _constructUsername();
  GeneratedTextColumn _constructUsername() {
    return GeneratedTextColumn(
      'username',
      $tableName,
      false,
    );
  }

  final VerificationMeta _newpasskeyMeta = const VerificationMeta('newpasskey');
  GeneratedTextColumn _newpasskey;
  @override
  GeneratedTextColumn get newpasskey => _newpasskey ??= _constructNewpasskey();
  GeneratedTextColumn _constructNewpasskey() {
    return GeneratedTextColumn(
      'newpasskey',
      $tableName,
      false,
    );
  }

  final VerificationMeta _confirmpasskeyMeta =
      const VerificationMeta('confirmpasskey');
  GeneratedTextColumn _confirmpasskey;
  @override
  GeneratedTextColumn get confirmpasskey =>
      _confirmpasskey ??= _constructConfirmpasskey();
  GeneratedTextColumn _constructConfirmpasskey() {
    return GeneratedTextColumn(
      'confirmpasskey',
      $tableName,
      false,
    );
  }

  final VerificationMeta _syncfrequencyMeta =
      const VerificationMeta('syncfrequency');
  GeneratedTextColumn _syncfrequency;
  @override
  GeneratedTextColumn get syncfrequency =>
      _syncfrequency ??= _constructSyncfrequency();
  GeneratedTextColumn _constructSyncfrequency() {
    return GeneratedTextColumn(
      'syncfrequency',
      $tableName,
      false,
    );
  }

  final VerificationMeta _commtypeMeta = const VerificationMeta('commtype');
  GeneratedTextColumn _commtype;
  @override
  GeneratedTextColumn get commtype => _commtype ??= _constructCommtype();
  GeneratedTextColumn _constructCommtype() {
    return GeneratedTextColumn(
      'commtype',
      $tableName,
      false,
    );
  }

  final VerificationMeta _typeoferpMeta = const VerificationMeta('typeoferp');
  GeneratedTextColumn _typeoferp;
  @override
  GeneratedTextColumn get typeoferp => _typeoferp ??= _constructTypeoferp();
  GeneratedTextColumn _constructTypeoferp() {
    return GeneratedTextColumn(
      'typeoferp',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        serverurl,
        username,
        newpasskey,
        confirmpasskey,
        syncfrequency,
        commtype,
        typeoferp
      ];
  @override
  $ComssetTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'comsset';
  @override
  final String actualTableName = 'comsset';
  @override
  VerificationContext validateIntegrity(ComssetCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (d.serverurl.present) {
      context.handle(_serverurlMeta,
          serverurl.isAcceptableValue(d.serverurl.value, _serverurlMeta));
    } else if (isInserting) {
      context.missing(_serverurlMeta);
    }
    if (d.username.present) {
      context.handle(_usernameMeta,
          username.isAcceptableValue(d.username.value, _usernameMeta));
    } else if (isInserting) {
      context.missing(_usernameMeta);
    }
    if (d.newpasskey.present) {
      context.handle(_newpasskeyMeta,
          newpasskey.isAcceptableValue(d.newpasskey.value, _newpasskeyMeta));
    } else if (isInserting) {
      context.missing(_newpasskeyMeta);
    }
    if (d.confirmpasskey.present) {
      context.handle(
          _confirmpasskeyMeta,
          confirmpasskey.isAcceptableValue(
              d.confirmpasskey.value, _confirmpasskeyMeta));
    } else if (isInserting) {
      context.missing(_confirmpasskeyMeta);
    }
    if (d.syncfrequency.present) {
      context.handle(
          _syncfrequencyMeta,
          syncfrequency.isAcceptableValue(
              d.syncfrequency.value, _syncfrequencyMeta));
    } else if (isInserting) {
      context.missing(_syncfrequencyMeta);
    }
    if (d.commtype.present) {
      context.handle(_commtypeMeta,
          commtype.isAcceptableValue(d.commtype.value, _commtypeMeta));
    } else if (isInserting) {
      context.missing(_commtypeMeta);
    }
    if (d.typeoferp.present) {
      context.handle(_typeoferpMeta,
          typeoferp.isAcceptableValue(d.typeoferp.value, _typeoferpMeta));
    } else if (isInserting) {
      context.missing(_typeoferpMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  ComssetData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return ComssetData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(ComssetCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.serverurl.present) {
      map['serverurl'] = Variable<String, StringType>(d.serverurl.value);
    }
    if (d.username.present) {
      map['username'] = Variable<String, StringType>(d.username.value);
    }
    if (d.newpasskey.present) {
      map['newpasskey'] = Variable<String, StringType>(d.newpasskey.value);
    }
    if (d.confirmpasskey.present) {
      map['confirmpasskey'] =
          Variable<String, StringType>(d.confirmpasskey.value);
    }
    if (d.syncfrequency.present) {
      map['syncfrequency'] =
          Variable<String, StringType>(d.syncfrequency.value);
    }
    if (d.commtype.present) {
      map['commtype'] = Variable<String, StringType>(d.commtype.value);
    }
    if (d.typeoferp.present) {
      map['typeoferp'] = Variable<String, StringType>(d.typeoferp.value);
    }
    return map;
  }

  @override
  $ComssetTable createAlias(String alias) {
    return $ComssetTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $UsersTable _users;
  $UsersTable get users => _users ??= $UsersTable(this);
  $ComssetTable _comsset;
  $ComssetTable get comsset => _comsset ??= $ComssetTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [users, comsset];
}

// **************************************************************************
// DaoGenerator
// **************************************************************************

mixin _$ComssetDaoMixin on DatabaseAccessor<AppDatabase> {
  $ComssetTable get comsset => db.comsset;
}
