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

class CommunicationData extends DataClass
    implements Insertable<CommunicationData> {
  final int id;
  final String serverurl;
  final String username;
  final String newpasskey;
  final String confirmpasskey;
  final String syncfrequency;
  final String communicationtype;
  final String typeoferp;
  CommunicationData(
      {@required this.id,
      @required this.serverurl,
      this.username,
      this.newpasskey,
      this.confirmpasskey,
      @required this.syncfrequency,
      @required this.communicationtype,
      this.typeoferp});
  factory CommunicationData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return CommunicationData(
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
      communicationtype: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}communicationtype']),
      typeoferp: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}typeoferp']),
    );
  }
  factory CommunicationData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return CommunicationData(
      id: serializer.fromJson<int>(json['id']),
      serverurl: serializer.fromJson<String>(json['serverurl']),
      username: serializer.fromJson<String>(json['username']),
      newpasskey: serializer.fromJson<String>(json['newpasskey']),
      confirmpasskey: serializer.fromJson<String>(json['confirmpasskey']),
      syncfrequency: serializer.fromJson<String>(json['syncfrequency']),
      communicationtype: serializer.fromJson<String>(json['communicationtype']),
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
      'communicationtype': serializer.toJson<String>(communicationtype),
      'typeoferp': serializer.toJson<String>(typeoferp),
    };
  }

  @override
  CommunicationCompanion createCompanion(bool nullToAbsent) {
    return CommunicationCompanion(
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
      communicationtype: communicationtype == null && nullToAbsent
          ? const Value.absent()
          : Value(communicationtype),
      typeoferp: typeoferp == null && nullToAbsent
          ? const Value.absent()
          : Value(typeoferp),
    );
  }

  CommunicationData copyWith(
          {int id,
          String serverurl,
          String username,
          String newpasskey,
          String confirmpasskey,
          String syncfrequency,
          String communicationtype,
          String typeoferp}) =>
      CommunicationData(
        id: id ?? this.id,
        serverurl: serverurl ?? this.serverurl,
        username: username ?? this.username,
        newpasskey: newpasskey ?? this.newpasskey,
        confirmpasskey: confirmpasskey ?? this.confirmpasskey,
        syncfrequency: syncfrequency ?? this.syncfrequency,
        communicationtype: communicationtype ?? this.communicationtype,
        typeoferp: typeoferp ?? this.typeoferp,
      );
  @override
  String toString() {
    return (StringBuffer('CommunicationData(')
          ..write('id: $id, ')
          ..write('serverurl: $serverurl, ')
          ..write('username: $username, ')
          ..write('newpasskey: $newpasskey, ')
          ..write('confirmpasskey: $confirmpasskey, ')
          ..write('syncfrequency: $syncfrequency, ')
          ..write('communicationtype: $communicationtype, ')
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
                      $mrjc(
                          syncfrequency.hashCode,
                          $mrjc(communicationtype.hashCode,
                              typeoferp.hashCode))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is CommunicationData &&
          other.id == this.id &&
          other.serverurl == this.serverurl &&
          other.username == this.username &&
          other.newpasskey == this.newpasskey &&
          other.confirmpasskey == this.confirmpasskey &&
          other.syncfrequency == this.syncfrequency &&
          other.communicationtype == this.communicationtype &&
          other.typeoferp == this.typeoferp);
}

class CommunicationCompanion extends UpdateCompanion<CommunicationData> {
  final Value<int> id;
  final Value<String> serverurl;
  final Value<String> username;
  final Value<String> newpasskey;
  final Value<String> confirmpasskey;
  final Value<String> syncfrequency;
  final Value<String> communicationtype;
  final Value<String> typeoferp;
  const CommunicationCompanion({
    this.id = const Value.absent(),
    this.serverurl = const Value.absent(),
    this.username = const Value.absent(),
    this.newpasskey = const Value.absent(),
    this.confirmpasskey = const Value.absent(),
    this.syncfrequency = const Value.absent(),
    this.communicationtype = const Value.absent(),
    this.typeoferp = const Value.absent(),
  });
  CommunicationCompanion.insert({
    this.id = const Value.absent(),
    @required String serverurl,
    this.username = const Value.absent(),
    this.newpasskey = const Value.absent(),
    this.confirmpasskey = const Value.absent(),
    @required String syncfrequency,
    @required String communicationtype,
    this.typeoferp = const Value.absent(),
  })  : serverurl = Value(serverurl),
        syncfrequency = Value(syncfrequency),
        communicationtype = Value(communicationtype);
  CommunicationCompanion copyWith(
      {Value<int> id,
      Value<String> serverurl,
      Value<String> username,
      Value<String> newpasskey,
      Value<String> confirmpasskey,
      Value<String> syncfrequency,
      Value<String> communicationtype,
      Value<String> typeoferp}) {
    return CommunicationCompanion(
      id: id ?? this.id,
      serverurl: serverurl ?? this.serverurl,
      username: username ?? this.username,
      newpasskey: newpasskey ?? this.newpasskey,
      confirmpasskey: confirmpasskey ?? this.confirmpasskey,
      syncfrequency: syncfrequency ?? this.syncfrequency,
      communicationtype: communicationtype ?? this.communicationtype,
      typeoferp: typeoferp ?? this.typeoferp,
    );
  }
}

class $CommunicationTable extends Communication
    with TableInfo<$CommunicationTable, CommunicationData> {
  final GeneratedDatabase _db;
  final String _alias;
  $CommunicationTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
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
      true,
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
      true,
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
      true,
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

  final VerificationMeta _communicationtypeMeta =
      const VerificationMeta('communicationtype');
  GeneratedTextColumn _communicationtype;
  @override
  GeneratedTextColumn get communicationtype =>
      _communicationtype ??= _constructCommunicationtype();
  GeneratedTextColumn _constructCommunicationtype() {
    return GeneratedTextColumn(
      'communicationtype',
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
      true,
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
        communicationtype,
        typeoferp
      ];
  @override
  $CommunicationTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'communication';
  @override
  final String actualTableName = 'communication';
  @override
  VerificationContext validateIntegrity(CommunicationCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
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
    }
    if (d.newpasskey.present) {
      context.handle(_newpasskeyMeta,
          newpasskey.isAcceptableValue(d.newpasskey.value, _newpasskeyMeta));
    }
    if (d.confirmpasskey.present) {
      context.handle(
          _confirmpasskeyMeta,
          confirmpasskey.isAcceptableValue(
              d.confirmpasskey.value, _confirmpasskeyMeta));
    }
    if (d.syncfrequency.present) {
      context.handle(
          _syncfrequencyMeta,
          syncfrequency.isAcceptableValue(
              d.syncfrequency.value, _syncfrequencyMeta));
    } else if (isInserting) {
      context.missing(_syncfrequencyMeta);
    }
    if (d.communicationtype.present) {
      context.handle(
          _communicationtypeMeta,
          communicationtype.isAcceptableValue(
              d.communicationtype.value, _communicationtypeMeta));
    } else if (isInserting) {
      context.missing(_communicationtypeMeta);
    }
    if (d.typeoferp.present) {
      context.handle(_typeoferpMeta,
          typeoferp.isAcceptableValue(d.typeoferp.value, _typeoferpMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CommunicationData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return CommunicationData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(CommunicationCompanion d) {
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
    if (d.communicationtype.present) {
      map['communicationtype'] =
          Variable<String, StringType>(d.communicationtype.value);
    }
    if (d.typeoferp.present) {
      map['typeoferp'] = Variable<String, StringType>(d.typeoferp.value);
    }
    return map;
  }

  @override
  $CommunicationTable createAlias(String alias) {
    return $CommunicationTable(_db, alias);
  }
}

class BackgroundJobScheduleData extends DataClass
    implements Insertable<BackgroundJobScheduleData> {
  final int id;
  final String jobname;
  final DateTime startdatetime;
  final String syncfrequency;
  final bool enablejob;
  BackgroundJobScheduleData(
      {@required this.id,
      @required this.jobname,
      @required this.startdatetime,
      @required this.syncfrequency,
      @required this.enablejob});
  factory BackgroundJobScheduleData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    final boolType = db.typeSystem.forDartType<bool>();
    return BackgroundJobScheduleData(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      jobname:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}jobname']),
      startdatetime: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}startdatetime']),
      syncfrequency: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}syncfrequency']),
      enablejob:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}enablejob']),
    );
  }
  factory BackgroundJobScheduleData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return BackgroundJobScheduleData(
      id: serializer.fromJson<int>(json['id']),
      jobname: serializer.fromJson<String>(json['jobname']),
      startdatetime: serializer.fromJson<DateTime>(json['startdatetime']),
      syncfrequency: serializer.fromJson<String>(json['syncfrequency']),
      enablejob: serializer.fromJson<bool>(json['enablejob']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'jobname': serializer.toJson<String>(jobname),
      'startdatetime': serializer.toJson<DateTime>(startdatetime),
      'syncfrequency': serializer.toJson<String>(syncfrequency),
      'enablejob': serializer.toJson<bool>(enablejob),
    };
  }

  @override
  BackgroundJobScheduleCompanion createCompanion(bool nullToAbsent) {
    return BackgroundJobScheduleCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      jobname: jobname == null && nullToAbsent
          ? const Value.absent()
          : Value(jobname),
      startdatetime: startdatetime == null && nullToAbsent
          ? const Value.absent()
          : Value(startdatetime),
      syncfrequency: syncfrequency == null && nullToAbsent
          ? const Value.absent()
          : Value(syncfrequency),
      enablejob: enablejob == null && nullToAbsent
          ? const Value.absent()
          : Value(enablejob),
    );
  }

  BackgroundJobScheduleData copyWith(
          {int id,
          String jobname,
          DateTime startdatetime,
          String syncfrequency,
          bool enablejob}) =>
      BackgroundJobScheduleData(
        id: id ?? this.id,
        jobname: jobname ?? this.jobname,
        startdatetime: startdatetime ?? this.startdatetime,
        syncfrequency: syncfrequency ?? this.syncfrequency,
        enablejob: enablejob ?? this.enablejob,
      );
  @override
  String toString() {
    return (StringBuffer('BackgroundJobScheduleData(')
          ..write('id: $id, ')
          ..write('jobname: $jobname, ')
          ..write('startdatetime: $startdatetime, ')
          ..write('syncfrequency: $syncfrequency, ')
          ..write('enablejob: $enablejob')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          jobname.hashCode,
          $mrjc(startdatetime.hashCode,
              $mrjc(syncfrequency.hashCode, enablejob.hashCode)))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is BackgroundJobScheduleData &&
          other.id == this.id &&
          other.jobname == this.jobname &&
          other.startdatetime == this.startdatetime &&
          other.syncfrequency == this.syncfrequency &&
          other.enablejob == this.enablejob);
}

class BackgroundJobScheduleCompanion
    extends UpdateCompanion<BackgroundJobScheduleData> {
  final Value<int> id;
  final Value<String> jobname;
  final Value<DateTime> startdatetime;
  final Value<String> syncfrequency;
  final Value<bool> enablejob;
  const BackgroundJobScheduleCompanion({
    this.id = const Value.absent(),
    this.jobname = const Value.absent(),
    this.startdatetime = const Value.absent(),
    this.syncfrequency = const Value.absent(),
    this.enablejob = const Value.absent(),
  });
  BackgroundJobScheduleCompanion.insert({
    @required int id,
    @required String jobname,
    @required DateTime startdatetime,
    @required String syncfrequency,
    this.enablejob = const Value.absent(),
  })  : id = Value(id),
        jobname = Value(jobname),
        startdatetime = Value(startdatetime),
        syncfrequency = Value(syncfrequency);
  BackgroundJobScheduleCompanion copyWith(
      {Value<int> id,
      Value<String> jobname,
      Value<DateTime> startdatetime,
      Value<String> syncfrequency,
      Value<bool> enablejob}) {
    return BackgroundJobScheduleCompanion(
      id: id ?? this.id,
      jobname: jobname ?? this.jobname,
      startdatetime: startdatetime ?? this.startdatetime,
      syncfrequency: syncfrequency ?? this.syncfrequency,
      enablejob: enablejob ?? this.enablejob,
    );
  }
}

class $BackgroundJobScheduleTable extends BackgroundJobSchedule
    with TableInfo<$BackgroundJobScheduleTable, BackgroundJobScheduleData> {
  final GeneratedDatabase _db;
  final String _alias;
  $BackgroundJobScheduleTable(this._db, [this._alias]);
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

  final VerificationMeta _jobnameMeta = const VerificationMeta('jobname');
  GeneratedTextColumn _jobname;
  @override
  GeneratedTextColumn get jobname => _jobname ??= _constructJobname();
  GeneratedTextColumn _constructJobname() {
    return GeneratedTextColumn(
      'jobname',
      $tableName,
      false,
    );
  }

  final VerificationMeta _startdatetimeMeta =
      const VerificationMeta('startdatetime');
  GeneratedDateTimeColumn _startdatetime;
  @override
  GeneratedDateTimeColumn get startdatetime =>
      _startdatetime ??= _constructStartdatetime();
  GeneratedDateTimeColumn _constructStartdatetime() {
    return GeneratedDateTimeColumn(
      'startdatetime',
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

  final VerificationMeta _enablejobMeta = const VerificationMeta('enablejob');
  GeneratedBoolColumn _enablejob;
  @override
  GeneratedBoolColumn get enablejob => _enablejob ??= _constructEnablejob();
  GeneratedBoolColumn _constructEnablejob() {
    return GeneratedBoolColumn('enablejob', $tableName, false,
        defaultValue: Constant(false));
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, jobname, startdatetime, syncfrequency, enablejob];
  @override
  $BackgroundJobScheduleTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'background_job_schedule';
  @override
  final String actualTableName = 'background_job_schedule';
  @override
  VerificationContext validateIntegrity(BackgroundJobScheduleCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (d.jobname.present) {
      context.handle(_jobnameMeta,
          jobname.isAcceptableValue(d.jobname.value, _jobnameMeta));
    } else if (isInserting) {
      context.missing(_jobnameMeta);
    }
    if (d.startdatetime.present) {
      context.handle(
          _startdatetimeMeta,
          startdatetime.isAcceptableValue(
              d.startdatetime.value, _startdatetimeMeta));
    } else if (isInserting) {
      context.missing(_startdatetimeMeta);
    }
    if (d.syncfrequency.present) {
      context.handle(
          _syncfrequencyMeta,
          syncfrequency.isAcceptableValue(
              d.syncfrequency.value, _syncfrequencyMeta));
    } else if (isInserting) {
      context.missing(_syncfrequencyMeta);
    }
    if (d.enablejob.present) {
      context.handle(_enablejobMeta,
          enablejob.isAcceptableValue(d.enablejob.value, _enablejobMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  BackgroundJobScheduleData map(Map<String, dynamic> data,
      {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return BackgroundJobScheduleData.fromData(data, _db,
        prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(BackgroundJobScheduleCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.jobname.present) {
      map['jobname'] = Variable<String, StringType>(d.jobname.value);
    }
    if (d.startdatetime.present) {
      map['startdatetime'] =
          Variable<DateTime, DateTimeType>(d.startdatetime.value);
    }
    if (d.syncfrequency.present) {
      map['syncfrequency'] =
          Variable<String, StringType>(d.syncfrequency.value);
    }
    if (d.enablejob.present) {
      map['enablejob'] = Variable<bool, BoolType>(d.enablejob.value);
    }
    return map;
  }

  @override
  $BackgroundJobScheduleTable createAlias(String alias) {
    return $BackgroundJobScheduleTable(_db, alias);
  }
}

class BackgroundJobLog extends DataClass
    implements Insertable<BackgroundJobLog> {
  final int id;
  final String jobname;
  final DateTime lastrun;
  final String jobstatus;
  final String jobdescription;
  BackgroundJobLog(
      {@required this.id,
      @required this.jobname,
      @required this.lastrun,
      @required this.jobstatus,
      @required this.jobdescription});
  factory BackgroundJobLog.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return BackgroundJobLog(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      jobname:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}jobname']),
      lastrun: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}lastrun']),
      jobstatus: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}jobstatus']),
      jobdescription: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}jobdescription']),
    );
  }
  factory BackgroundJobLog.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return BackgroundJobLog(
      id: serializer.fromJson<int>(json['id']),
      jobname: serializer.fromJson<String>(json['jobname']),
      lastrun: serializer.fromJson<DateTime>(json['lastrun']),
      jobstatus: serializer.fromJson<String>(json['jobstatus']),
      jobdescription: serializer.fromJson<String>(json['jobdescription']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'jobname': serializer.toJson<String>(jobname),
      'lastrun': serializer.toJson<DateTime>(lastrun),
      'jobstatus': serializer.toJson<String>(jobstatus),
      'jobdescription': serializer.toJson<String>(jobdescription),
    };
  }

  @override
  BackgroundJobLogsCompanion createCompanion(bool nullToAbsent) {
    return BackgroundJobLogsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      jobname: jobname == null && nullToAbsent
          ? const Value.absent()
          : Value(jobname),
      lastrun: lastrun == null && nullToAbsent
          ? const Value.absent()
          : Value(lastrun),
      jobstatus: jobstatus == null && nullToAbsent
          ? const Value.absent()
          : Value(jobstatus),
      jobdescription: jobdescription == null && nullToAbsent
          ? const Value.absent()
          : Value(jobdescription),
    );
  }

  BackgroundJobLog copyWith(
          {int id,
          String jobname,
          DateTime lastrun,
          String jobstatus,
          String jobdescription}) =>
      BackgroundJobLog(
        id: id ?? this.id,
        jobname: jobname ?? this.jobname,
        lastrun: lastrun ?? this.lastrun,
        jobstatus: jobstatus ?? this.jobstatus,
        jobdescription: jobdescription ?? this.jobdescription,
      );
  @override
  String toString() {
    return (StringBuffer('BackgroundJobLog(')
          ..write('id: $id, ')
          ..write('jobname: $jobname, ')
          ..write('lastrun: $lastrun, ')
          ..write('jobstatus: $jobstatus, ')
          ..write('jobdescription: $jobdescription')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          jobname.hashCode,
          $mrjc(lastrun.hashCode,
              $mrjc(jobstatus.hashCode, jobdescription.hashCode)))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is BackgroundJobLog &&
          other.id == this.id &&
          other.jobname == this.jobname &&
          other.lastrun == this.lastrun &&
          other.jobstatus == this.jobstatus &&
          other.jobdescription == this.jobdescription);
}

class BackgroundJobLogsCompanion extends UpdateCompanion<BackgroundJobLog> {
  final Value<int> id;
  final Value<String> jobname;
  final Value<DateTime> lastrun;
  final Value<String> jobstatus;
  final Value<String> jobdescription;
  const BackgroundJobLogsCompanion({
    this.id = const Value.absent(),
    this.jobname = const Value.absent(),
    this.lastrun = const Value.absent(),
    this.jobstatus = const Value.absent(),
    this.jobdescription = const Value.absent(),
  });
  BackgroundJobLogsCompanion.insert({
    @required int id,
    @required String jobname,
    @required DateTime lastrun,
    @required String jobstatus,
    @required String jobdescription,
  })  : id = Value(id),
        jobname = Value(jobname),
        lastrun = Value(lastrun),
        jobstatus = Value(jobstatus),
        jobdescription = Value(jobdescription);
  BackgroundJobLogsCompanion copyWith(
      {Value<int> id,
      Value<String> jobname,
      Value<DateTime> lastrun,
      Value<String> jobstatus,
      Value<String> jobdescription}) {
    return BackgroundJobLogsCompanion(
      id: id ?? this.id,
      jobname: jobname ?? this.jobname,
      lastrun: lastrun ?? this.lastrun,
      jobstatus: jobstatus ?? this.jobstatus,
      jobdescription: jobdescription ?? this.jobdescription,
    );
  }
}

class $BackgroundJobLogsTable extends BackgroundJobLogs
    with TableInfo<$BackgroundJobLogsTable, BackgroundJobLog> {
  final GeneratedDatabase _db;
  final String _alias;
  $BackgroundJobLogsTable(this._db, [this._alias]);
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

  final VerificationMeta _jobnameMeta = const VerificationMeta('jobname');
  GeneratedTextColumn _jobname;
  @override
  GeneratedTextColumn get jobname => _jobname ??= _constructJobname();
  GeneratedTextColumn _constructJobname() {
    return GeneratedTextColumn(
      'jobname',
      $tableName,
      false,
    );
  }

  final VerificationMeta _lastrunMeta = const VerificationMeta('lastrun');
  GeneratedDateTimeColumn _lastrun;
  @override
  GeneratedDateTimeColumn get lastrun => _lastrun ??= _constructLastrun();
  GeneratedDateTimeColumn _constructLastrun() {
    return GeneratedDateTimeColumn(
      'lastrun',
      $tableName,
      false,
    );
  }

  final VerificationMeta _jobstatusMeta = const VerificationMeta('jobstatus');
  GeneratedTextColumn _jobstatus;
  @override
  GeneratedTextColumn get jobstatus => _jobstatus ??= _constructJobstatus();
  GeneratedTextColumn _constructJobstatus() {
    return GeneratedTextColumn(
      'jobstatus',
      $tableName,
      false,
    );
  }

  final VerificationMeta _jobdescriptionMeta =
      const VerificationMeta('jobdescription');
  GeneratedTextColumn _jobdescription;
  @override
  GeneratedTextColumn get jobdescription =>
      _jobdescription ??= _constructJobdescription();
  GeneratedTextColumn _constructJobdescription() {
    return GeneratedTextColumn(
      'jobdescription',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, jobname, lastrun, jobstatus, jobdescription];
  @override
  $BackgroundJobLogsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'background_job_logs';
  @override
  final String actualTableName = 'background_job_logs';
  @override
  VerificationContext validateIntegrity(BackgroundJobLogsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (d.jobname.present) {
      context.handle(_jobnameMeta,
          jobname.isAcceptableValue(d.jobname.value, _jobnameMeta));
    } else if (isInserting) {
      context.missing(_jobnameMeta);
    }
    if (d.lastrun.present) {
      context.handle(_lastrunMeta,
          lastrun.isAcceptableValue(d.lastrun.value, _lastrunMeta));
    } else if (isInserting) {
      context.missing(_lastrunMeta);
    }
    if (d.jobstatus.present) {
      context.handle(_jobstatusMeta,
          jobstatus.isAcceptableValue(d.jobstatus.value, _jobstatusMeta));
    } else if (isInserting) {
      context.missing(_jobstatusMeta);
    }
    if (d.jobdescription.present) {
      context.handle(
          _jobdescriptionMeta,
          jobdescription.isAcceptableValue(
              d.jobdescription.value, _jobdescriptionMeta));
    } else if (isInserting) {
      context.missing(_jobdescriptionMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  BackgroundJobLog map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return BackgroundJobLog.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(BackgroundJobLogsCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.jobname.present) {
      map['jobname'] = Variable<String, StringType>(d.jobname.value);
    }
    if (d.lastrun.present) {
      map['lastrun'] = Variable<DateTime, DateTimeType>(d.lastrun.value);
    }
    if (d.jobstatus.present) {
      map['jobstatus'] = Variable<String, StringType>(d.jobstatus.value);
    }
    if (d.jobdescription.present) {
      map['jobdescription'] =
          Variable<String, StringType>(d.jobdescription.value);
    }
    return map;
  }

  @override
  $BackgroundJobLogsTable createAlias(String alias) {
    return $BackgroundJobLogsTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $UsersTable _users;
  $UsersTable get users => _users ??= $UsersTable(this);
  $CommunicationTable _communication;
  $CommunicationTable get communication =>
      _communication ??= $CommunicationTable(this);
  $BackgroundJobScheduleTable _backgroundJobSchedule;
  $BackgroundJobScheduleTable get backgroundJobSchedule =>
      _backgroundJobSchedule ??= $BackgroundJobScheduleTable(this);
  $BackgroundJobLogsTable _backgroundJobLogs;
  $BackgroundJobLogsTable get backgroundJobLogs =>
      _backgroundJobLogs ??= $BackgroundJobLogsTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [users, communication, backgroundJobSchedule, backgroundJobLogs];
}
