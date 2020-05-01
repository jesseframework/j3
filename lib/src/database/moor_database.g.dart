// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class User extends DataClass implements Insertable<User> {
  final DateTime creationTime;
  final DateTime deleteTime;
  final int createUserId;
  final String creatorUser;
  final String lastModifierUser;
  final int lastModifierUserId;
  final int deleteUserId;
  final String deleterUserId;
  final bool isDeleted;
  final int id;
  final String userName;
  final String name;
  final String surname;
  final String emailAddress;
  final bool isActive;
  final String fullName;
  User(
      {this.creationTime,
      this.deleteTime,
      this.createUserId,
      this.creatorUser,
      this.lastModifierUser,
      this.lastModifierUserId,
      this.deleteUserId,
      this.deleterUserId,
      @required this.isDeleted,
      @required this.id,
      @required this.userName,
      @required this.name,
      @required this.surname,
      @required this.emailAddress,
      @required this.isActive,
      @required this.fullName});
  factory User.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    return User(
      creationTime: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}creation_time']),
      deleteTime: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}delete_time']),
      createUserId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}create_user_id']),
      creatorUser: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}creator_user']),
      lastModifierUser: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}last_modifier_user']),
      lastModifierUserId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}last_modifier_user_id']),
      deleteUserId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}delete_user_id']),
      deleterUserId: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}deleter_user_id']),
      isDeleted: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}is_deleted']),
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
    );
  }
  factory User.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return User(
      creationTime: serializer.fromJson<DateTime>(json['creationTime']),
      deleteTime: serializer.fromJson<DateTime>(json['deleteTime']),
      createUserId: serializer.fromJson<int>(json['createUserId']),
      creatorUser: serializer.fromJson<String>(json['creatorUser']),
      lastModifierUser: serializer.fromJson<String>(json['lastModifierUser']),
      lastModifierUserId: serializer.fromJson<int>(json['lastModifierUserId']),
      deleteUserId: serializer.fromJson<int>(json['deleteUserId']),
      deleterUserId: serializer.fromJson<String>(json['deleterUserId']),
      isDeleted: serializer.fromJson<bool>(json['isDeleted']),
      id: serializer.fromJson<int>(json['id']),
      userName: serializer.fromJson<String>(json['userName']),
      name: serializer.fromJson<String>(json['name']),
      surname: serializer.fromJson<String>(json['surname']),
      emailAddress: serializer.fromJson<String>(json['emailAddress']),
      isActive: serializer.fromJson<bool>(json['isActive']),
      fullName: serializer.fromJson<String>(json['fullName']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'creationTime': serializer.toJson<DateTime>(creationTime),
      'deleteTime': serializer.toJson<DateTime>(deleteTime),
      'createUserId': serializer.toJson<int>(createUserId),
      'creatorUser': serializer.toJson<String>(creatorUser),
      'lastModifierUser': serializer.toJson<String>(lastModifierUser),
      'lastModifierUserId': serializer.toJson<int>(lastModifierUserId),
      'deleteUserId': serializer.toJson<int>(deleteUserId),
      'deleterUserId': serializer.toJson<String>(deleterUserId),
      'isDeleted': serializer.toJson<bool>(isDeleted),
      'id': serializer.toJson<int>(id),
      'userName': serializer.toJson<String>(userName),
      'name': serializer.toJson<String>(name),
      'surname': serializer.toJson<String>(surname),
      'emailAddress': serializer.toJson<String>(emailAddress),
      'isActive': serializer.toJson<bool>(isActive),
      'fullName': serializer.toJson<String>(fullName),
    };
  }

  @override
  UsersCompanion createCompanion(bool nullToAbsent) {
    return UsersCompanion(
      creationTime: creationTime == null && nullToAbsent
          ? const Value.absent()
          : Value(creationTime),
      deleteTime: deleteTime == null && nullToAbsent
          ? const Value.absent()
          : Value(deleteTime),
      createUserId: createUserId == null && nullToAbsent
          ? const Value.absent()
          : Value(createUserId),
      creatorUser: creatorUser == null && nullToAbsent
          ? const Value.absent()
          : Value(creatorUser),
      lastModifierUser: lastModifierUser == null && nullToAbsent
          ? const Value.absent()
          : Value(lastModifierUser),
      lastModifierUserId: lastModifierUserId == null && nullToAbsent
          ? const Value.absent()
          : Value(lastModifierUserId),
      deleteUserId: deleteUserId == null && nullToAbsent
          ? const Value.absent()
          : Value(deleteUserId),
      deleterUserId: deleterUserId == null && nullToAbsent
          ? const Value.absent()
          : Value(deleterUserId),
      isDeleted: isDeleted == null && nullToAbsent
          ? const Value.absent()
          : Value(isDeleted),
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
    );
  }

  User copyWith(
          {DateTime creationTime,
          DateTime deleteTime,
          int createUserId,
          String creatorUser,
          String lastModifierUser,
          int lastModifierUserId,
          int deleteUserId,
          String deleterUserId,
          bool isDeleted,
          int id,
          String userName,
          String name,
          String surname,
          String emailAddress,
          bool isActive,
          String fullName}) =>
      User(
        creationTime: creationTime ?? this.creationTime,
        deleteTime: deleteTime ?? this.deleteTime,
        createUserId: createUserId ?? this.createUserId,
        creatorUser: creatorUser ?? this.creatorUser,
        lastModifierUser: lastModifierUser ?? this.lastModifierUser,
        lastModifierUserId: lastModifierUserId ?? this.lastModifierUserId,
        deleteUserId: deleteUserId ?? this.deleteUserId,
        deleterUserId: deleterUserId ?? this.deleterUserId,
        isDeleted: isDeleted ?? this.isDeleted,
        id: id ?? this.id,
        userName: userName ?? this.userName,
        name: name ?? this.name,
        surname: surname ?? this.surname,
        emailAddress: emailAddress ?? this.emailAddress,
        isActive: isActive ?? this.isActive,
        fullName: fullName ?? this.fullName,
      );
  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('creationTime: $creationTime, ')
          ..write('deleteTime: $deleteTime, ')
          ..write('createUserId: $createUserId, ')
          ..write('creatorUser: $creatorUser, ')
          ..write('lastModifierUser: $lastModifierUser, ')
          ..write('lastModifierUserId: $lastModifierUserId, ')
          ..write('deleteUserId: $deleteUserId, ')
          ..write('deleterUserId: $deleterUserId, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('id: $id, ')
          ..write('userName: $userName, ')
          ..write('name: $name, ')
          ..write('surname: $surname, ')
          ..write('emailAddress: $emailAddress, ')
          ..write('isActive: $isActive, ')
          ..write('fullName: $fullName')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      creationTime.hashCode,
      $mrjc(
          deleteTime.hashCode,
          $mrjc(
              createUserId.hashCode,
              $mrjc(
                  creatorUser.hashCode,
                  $mrjc(
                      lastModifierUser.hashCode,
                      $mrjc(
                          lastModifierUserId.hashCode,
                          $mrjc(
                              deleteUserId.hashCode,
                              $mrjc(
                                  deleterUserId.hashCode,
                                  $mrjc(
                                      isDeleted.hashCode,
                                      $mrjc(
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
                                                              fullName
                                                                  .hashCode))))))))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is User &&
          other.creationTime == this.creationTime &&
          other.deleteTime == this.deleteTime &&
          other.createUserId == this.createUserId &&
          other.creatorUser == this.creatorUser &&
          other.lastModifierUser == this.lastModifierUser &&
          other.lastModifierUserId == this.lastModifierUserId &&
          other.deleteUserId == this.deleteUserId &&
          other.deleterUserId == this.deleterUserId &&
          other.isDeleted == this.isDeleted &&
          other.id == this.id &&
          other.userName == this.userName &&
          other.name == this.name &&
          other.surname == this.surname &&
          other.emailAddress == this.emailAddress &&
          other.isActive == this.isActive &&
          other.fullName == this.fullName);
}

class UsersCompanion extends UpdateCompanion<User> {
  final Value<DateTime> creationTime;
  final Value<DateTime> deleteTime;
  final Value<int> createUserId;
  final Value<String> creatorUser;
  final Value<String> lastModifierUser;
  final Value<int> lastModifierUserId;
  final Value<int> deleteUserId;
  final Value<String> deleterUserId;
  final Value<bool> isDeleted;
  final Value<int> id;
  final Value<String> userName;
  final Value<String> name;
  final Value<String> surname;
  final Value<String> emailAddress;
  final Value<bool> isActive;
  final Value<String> fullName;
  const UsersCompanion({
    this.creationTime = const Value.absent(),
    this.deleteTime = const Value.absent(),
    this.createUserId = const Value.absent(),
    this.creatorUser = const Value.absent(),
    this.lastModifierUser = const Value.absent(),
    this.lastModifierUserId = const Value.absent(),
    this.deleteUserId = const Value.absent(),
    this.deleterUserId = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.id = const Value.absent(),
    this.userName = const Value.absent(),
    this.name = const Value.absent(),
    this.surname = const Value.absent(),
    this.emailAddress = const Value.absent(),
    this.isActive = const Value.absent(),
    this.fullName = const Value.absent(),
  });
  UsersCompanion.insert({
    this.creationTime = const Value.absent(),
    this.deleteTime = const Value.absent(),
    this.createUserId = const Value.absent(),
    this.creatorUser = const Value.absent(),
    this.lastModifierUser = const Value.absent(),
    this.lastModifierUserId = const Value.absent(),
    this.deleteUserId = const Value.absent(),
    this.deleterUserId = const Value.absent(),
    this.isDeleted = const Value.absent(),
    @required int id,
    @required String userName,
    @required String name,
    @required String surname,
    @required String emailAddress,
    this.isActive = const Value.absent(),
    @required String fullName,
  })  : id = Value(id),
        userName = Value(userName),
        name = Value(name),
        surname = Value(surname),
        emailAddress = Value(emailAddress),
        fullName = Value(fullName);
  UsersCompanion copyWith(
      {Value<DateTime> creationTime,
      Value<DateTime> deleteTime,
      Value<int> createUserId,
      Value<String> creatorUser,
      Value<String> lastModifierUser,
      Value<int> lastModifierUserId,
      Value<int> deleteUserId,
      Value<String> deleterUserId,
      Value<bool> isDeleted,
      Value<int> id,
      Value<String> userName,
      Value<String> name,
      Value<String> surname,
      Value<String> emailAddress,
      Value<bool> isActive,
      Value<String> fullName}) {
    return UsersCompanion(
      creationTime: creationTime ?? this.creationTime,
      deleteTime: deleteTime ?? this.deleteTime,
      createUserId: createUserId ?? this.createUserId,
      creatorUser: creatorUser ?? this.creatorUser,
      lastModifierUser: lastModifierUser ?? this.lastModifierUser,
      lastModifierUserId: lastModifierUserId ?? this.lastModifierUserId,
      deleteUserId: deleteUserId ?? this.deleteUserId,
      deleterUserId: deleterUserId ?? this.deleterUserId,
      isDeleted: isDeleted ?? this.isDeleted,
      id: id ?? this.id,
      userName: userName ?? this.userName,
      name: name ?? this.name,
      surname: surname ?? this.surname,
      emailAddress: emailAddress ?? this.emailAddress,
      isActive: isActive ?? this.isActive,
      fullName: fullName ?? this.fullName,
    );
  }
}

class $UsersTable extends Users with TableInfo<$UsersTable, User> {
  final GeneratedDatabase _db;
  final String _alias;
  $UsersTable(this._db, [this._alias]);
  final VerificationMeta _creationTimeMeta =
      const VerificationMeta('creationTime');
  GeneratedDateTimeColumn _creationTime;
  @override
  GeneratedDateTimeColumn get creationTime =>
      _creationTime ??= _constructCreationTime();
  GeneratedDateTimeColumn _constructCreationTime() {
    return GeneratedDateTimeColumn(
      'creation_time',
      $tableName,
      true,
    );
  }

  final VerificationMeta _deleteTimeMeta = const VerificationMeta('deleteTime');
  GeneratedDateTimeColumn _deleteTime;
  @override
  GeneratedDateTimeColumn get deleteTime =>
      _deleteTime ??= _constructDeleteTime();
  GeneratedDateTimeColumn _constructDeleteTime() {
    return GeneratedDateTimeColumn(
      'delete_time',
      $tableName,
      true,
    );
  }

  final VerificationMeta _createUserIdMeta =
      const VerificationMeta('createUserId');
  GeneratedIntColumn _createUserId;
  @override
  GeneratedIntColumn get createUserId =>
      _createUserId ??= _constructCreateUserId();
  GeneratedIntColumn _constructCreateUserId() {
    return GeneratedIntColumn(
      'create_user_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _creatorUserMeta =
      const VerificationMeta('creatorUser');
  GeneratedTextColumn _creatorUser;
  @override
  GeneratedTextColumn get creatorUser =>
      _creatorUser ??= _constructCreatorUser();
  GeneratedTextColumn _constructCreatorUser() {
    return GeneratedTextColumn(
      'creator_user',
      $tableName,
      true,
    );
  }

  final VerificationMeta _lastModifierUserMeta =
      const VerificationMeta('lastModifierUser');
  GeneratedTextColumn _lastModifierUser;
  @override
  GeneratedTextColumn get lastModifierUser =>
      _lastModifierUser ??= _constructLastModifierUser();
  GeneratedTextColumn _constructLastModifierUser() {
    return GeneratedTextColumn(
      'last_modifier_user',
      $tableName,
      true,
    );
  }

  final VerificationMeta _lastModifierUserIdMeta =
      const VerificationMeta('lastModifierUserId');
  GeneratedIntColumn _lastModifierUserId;
  @override
  GeneratedIntColumn get lastModifierUserId =>
      _lastModifierUserId ??= _constructLastModifierUserId();
  GeneratedIntColumn _constructLastModifierUserId() {
    return GeneratedIntColumn(
      'last_modifier_user_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _deleteUserIdMeta =
      const VerificationMeta('deleteUserId');
  GeneratedIntColumn _deleteUserId;
  @override
  GeneratedIntColumn get deleteUserId =>
      _deleteUserId ??= _constructDeleteUserId();
  GeneratedIntColumn _constructDeleteUserId() {
    return GeneratedIntColumn(
      'delete_user_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _deleterUserIdMeta =
      const VerificationMeta('deleterUserId');
  GeneratedTextColumn _deleterUserId;
  @override
  GeneratedTextColumn get deleterUserId =>
      _deleterUserId ??= _constructDeleterUserId();
  GeneratedTextColumn _constructDeleterUserId() {
    return GeneratedTextColumn(
      'deleter_user_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _isDeletedMeta = const VerificationMeta('isDeleted');
  GeneratedBoolColumn _isDeleted;
  @override
  GeneratedBoolColumn get isDeleted => _isDeleted ??= _constructIsDeleted();
  GeneratedBoolColumn _constructIsDeleted() {
    return GeneratedBoolColumn('is_deleted', $tableName, false,
        defaultValue: Constant(false));
  }

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

  @override
  List<GeneratedColumn> get $columns => [
        creationTime,
        deleteTime,
        createUserId,
        creatorUser,
        lastModifierUser,
        lastModifierUserId,
        deleteUserId,
        deleterUserId,
        isDeleted,
        id,
        userName,
        name,
        surname,
        emailAddress,
        isActive,
        fullName
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
    if (d.creationTime.present) {
      context.handle(
          _creationTimeMeta,
          creationTime.isAcceptableValue(
              d.creationTime.value, _creationTimeMeta));
    }
    if (d.deleteTime.present) {
      context.handle(_deleteTimeMeta,
          deleteTime.isAcceptableValue(d.deleteTime.value, _deleteTimeMeta));
    }
    if (d.createUserId.present) {
      context.handle(
          _createUserIdMeta,
          createUserId.isAcceptableValue(
              d.createUserId.value, _createUserIdMeta));
    }
    if (d.creatorUser.present) {
      context.handle(_creatorUserMeta,
          creatorUser.isAcceptableValue(d.creatorUser.value, _creatorUserMeta));
    }
    if (d.lastModifierUser.present) {
      context.handle(
          _lastModifierUserMeta,
          lastModifierUser.isAcceptableValue(
              d.lastModifierUser.value, _lastModifierUserMeta));
    }
    if (d.lastModifierUserId.present) {
      context.handle(
          _lastModifierUserIdMeta,
          lastModifierUserId.isAcceptableValue(
              d.lastModifierUserId.value, _lastModifierUserIdMeta));
    }
    if (d.deleteUserId.present) {
      context.handle(
          _deleteUserIdMeta,
          deleteUserId.isAcceptableValue(
              d.deleteUserId.value, _deleteUserIdMeta));
    }
    if (d.deleterUserId.present) {
      context.handle(
          _deleterUserIdMeta,
          deleterUserId.isAcceptableValue(
              d.deleterUserId.value, _deleterUserIdMeta));
    }
    if (d.isDeleted.present) {
      context.handle(_isDeletedMeta,
          isDeleted.isAcceptableValue(d.isDeleted.value, _isDeletedMeta));
    }
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
    if (d.creationTime.present) {
      map['creation_time'] =
          Variable<DateTime, DateTimeType>(d.creationTime.value);
    }
    if (d.deleteTime.present) {
      map['delete_time'] = Variable<DateTime, DateTimeType>(d.deleteTime.value);
    }
    if (d.createUserId.present) {
      map['create_user_id'] = Variable<int, IntType>(d.createUserId.value);
    }
    if (d.creatorUser.present) {
      map['creator_user'] = Variable<String, StringType>(d.creatorUser.value);
    }
    if (d.lastModifierUser.present) {
      map['last_modifier_user'] =
          Variable<String, StringType>(d.lastModifierUser.value);
    }
    if (d.lastModifierUserId.present) {
      map['last_modifier_user_id'] =
          Variable<int, IntType>(d.lastModifierUserId.value);
    }
    if (d.deleteUserId.present) {
      map['delete_user_id'] = Variable<int, IntType>(d.deleteUserId.value);
    }
    if (d.deleterUserId.present) {
      map['deleter_user_id'] =
          Variable<String, StringType>(d.deleterUserId.value);
    }
    if (d.isDeleted.present) {
      map['is_deleted'] = Variable<bool, BoolType>(d.isDeleted.value);
    }
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
    return map;
  }

  @override
  $UsersTable createAlias(String alias) {
    return $UsersTable(_db, alias);
  }
}

class CommunicationData extends DataClass
    implements Insertable<CommunicationData> {
  final DateTime creationTime;
  final DateTime deleteTime;
  final int createUserId;
  final String creatorUser;
  final String lastModifierUser;
  final int lastModifierUserId;
  final int deleteUserId;
  final String deleterUserId;
  final bool isDeleted;
  final DateTime importDateTime;
  final DateTime exportDateTime;
  final String exportStatus;
  final String importStatus;
  final String syncError;
  final int id;
  final String serverUrl;
  final String userName;
  final String newPasskey;
  final String confirmPasskey;
  final String syncFrequency;
  final String communicationType;
  final String typeofErp;
  CommunicationData(
      {this.creationTime,
      this.deleteTime,
      this.createUserId,
      this.creatorUser,
      this.lastModifierUser,
      this.lastModifierUserId,
      this.deleteUserId,
      this.deleterUserId,
      @required this.isDeleted,
      this.importDateTime,
      this.exportDateTime,
      @required this.exportStatus,
      @required this.importStatus,
      this.syncError,
      @required this.id,
      @required this.serverUrl,
      this.userName,
      this.newPasskey,
      this.confirmPasskey,
      @required this.syncFrequency,
      @required this.communicationType,
      this.typeofErp});
  factory CommunicationData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    return CommunicationData(
      creationTime: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}creation_time']),
      deleteTime: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}delete_time']),
      createUserId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}create_user_id']),
      creatorUser: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}creator_user']),
      lastModifierUser: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}last_modifier_user']),
      lastModifierUserId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}last_modifier_user_id']),
      deleteUserId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}delete_user_id']),
      deleterUserId: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}deleter_user_id']),
      isDeleted: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}is_deleted']),
      importDateTime: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}import_date_time']),
      exportDateTime: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}export_date_time']),
      exportStatus: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}export_status']),
      importStatus: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}import_status']),
      syncError: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}sync_error']),
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      serverUrl: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}server_url']),
      userName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}user_name']),
      newPasskey: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}new_passkey']),
      confirmPasskey: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}confirm_passkey']),
      syncFrequency: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}sync_frequency']),
      communicationType: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}communication_type']),
      typeofErp: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}typeof_erp']),
    );
  }
  factory CommunicationData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return CommunicationData(
      creationTime: serializer.fromJson<DateTime>(json['creationTime']),
      deleteTime: serializer.fromJson<DateTime>(json['deleteTime']),
      createUserId: serializer.fromJson<int>(json['createUserId']),
      creatorUser: serializer.fromJson<String>(json['creatorUser']),
      lastModifierUser: serializer.fromJson<String>(json['lastModifierUser']),
      lastModifierUserId: serializer.fromJson<int>(json['lastModifierUserId']),
      deleteUserId: serializer.fromJson<int>(json['deleteUserId']),
      deleterUserId: serializer.fromJson<String>(json['deleterUserId']),
      isDeleted: serializer.fromJson<bool>(json['isDeleted']),
      importDateTime: serializer.fromJson<DateTime>(json['importDateTime']),
      exportDateTime: serializer.fromJson<DateTime>(json['exportDateTime']),
      exportStatus: serializer.fromJson<String>(json['exportStatus']),
      importStatus: serializer.fromJson<String>(json['importStatus']),
      syncError: serializer.fromJson<String>(json['syncError']),
      id: serializer.fromJson<int>(json['id']),
      serverUrl: serializer.fromJson<String>(json['serverUrl']),
      userName: serializer.fromJson<String>(json['userName']),
      newPasskey: serializer.fromJson<String>(json['newPasskey']),
      confirmPasskey: serializer.fromJson<String>(json['confirmPasskey']),
      syncFrequency: serializer.fromJson<String>(json['syncFrequency']),
      communicationType: serializer.fromJson<String>(json['communicationType']),
      typeofErp: serializer.fromJson<String>(json['typeofErp']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'creationTime': serializer.toJson<DateTime>(creationTime),
      'deleteTime': serializer.toJson<DateTime>(deleteTime),
      'createUserId': serializer.toJson<int>(createUserId),
      'creatorUser': serializer.toJson<String>(creatorUser),
      'lastModifierUser': serializer.toJson<String>(lastModifierUser),
      'lastModifierUserId': serializer.toJson<int>(lastModifierUserId),
      'deleteUserId': serializer.toJson<int>(deleteUserId),
      'deleterUserId': serializer.toJson<String>(deleterUserId),
      'isDeleted': serializer.toJson<bool>(isDeleted),
      'importDateTime': serializer.toJson<DateTime>(importDateTime),
      'exportDateTime': serializer.toJson<DateTime>(exportDateTime),
      'exportStatus': serializer.toJson<String>(exportStatus),
      'importStatus': serializer.toJson<String>(importStatus),
      'syncError': serializer.toJson<String>(syncError),
      'id': serializer.toJson<int>(id),
      'serverUrl': serializer.toJson<String>(serverUrl),
      'userName': serializer.toJson<String>(userName),
      'newPasskey': serializer.toJson<String>(newPasskey),
      'confirmPasskey': serializer.toJson<String>(confirmPasskey),
      'syncFrequency': serializer.toJson<String>(syncFrequency),
      'communicationType': serializer.toJson<String>(communicationType),
      'typeofErp': serializer.toJson<String>(typeofErp),
    };
  }

  @override
  CommunicationCompanion createCompanion(bool nullToAbsent) {
    return CommunicationCompanion(
      creationTime: creationTime == null && nullToAbsent
          ? const Value.absent()
          : Value(creationTime),
      deleteTime: deleteTime == null && nullToAbsent
          ? const Value.absent()
          : Value(deleteTime),
      createUserId: createUserId == null && nullToAbsent
          ? const Value.absent()
          : Value(createUserId),
      creatorUser: creatorUser == null && nullToAbsent
          ? const Value.absent()
          : Value(creatorUser),
      lastModifierUser: lastModifierUser == null && nullToAbsent
          ? const Value.absent()
          : Value(lastModifierUser),
      lastModifierUserId: lastModifierUserId == null && nullToAbsent
          ? const Value.absent()
          : Value(lastModifierUserId),
      deleteUserId: deleteUserId == null && nullToAbsent
          ? const Value.absent()
          : Value(deleteUserId),
      deleterUserId: deleterUserId == null && nullToAbsent
          ? const Value.absent()
          : Value(deleterUserId),
      isDeleted: isDeleted == null && nullToAbsent
          ? const Value.absent()
          : Value(isDeleted),
      importDateTime: importDateTime == null && nullToAbsent
          ? const Value.absent()
          : Value(importDateTime),
      exportDateTime: exportDateTime == null && nullToAbsent
          ? const Value.absent()
          : Value(exportDateTime),
      exportStatus: exportStatus == null && nullToAbsent
          ? const Value.absent()
          : Value(exportStatus),
      importStatus: importStatus == null && nullToAbsent
          ? const Value.absent()
          : Value(importStatus),
      syncError: syncError == null && nullToAbsent
          ? const Value.absent()
          : Value(syncError),
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      serverUrl: serverUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(serverUrl),
      userName: userName == null && nullToAbsent
          ? const Value.absent()
          : Value(userName),
      newPasskey: newPasskey == null && nullToAbsent
          ? const Value.absent()
          : Value(newPasskey),
      confirmPasskey: confirmPasskey == null && nullToAbsent
          ? const Value.absent()
          : Value(confirmPasskey),
      syncFrequency: syncFrequency == null && nullToAbsent
          ? const Value.absent()
          : Value(syncFrequency),
      communicationType: communicationType == null && nullToAbsent
          ? const Value.absent()
          : Value(communicationType),
      typeofErp: typeofErp == null && nullToAbsent
          ? const Value.absent()
          : Value(typeofErp),
    );
  }

  CommunicationData copyWith(
          {DateTime creationTime,
          DateTime deleteTime,
          int createUserId,
          String creatorUser,
          String lastModifierUser,
          int lastModifierUserId,
          int deleteUserId,
          String deleterUserId,
          bool isDeleted,
          DateTime importDateTime,
          DateTime exportDateTime,
          String exportStatus,
          String importStatus,
          String syncError,
          int id,
          String serverUrl,
          String userName,
          String newPasskey,
          String confirmPasskey,
          String syncFrequency,
          String communicationType,
          String typeofErp}) =>
      CommunicationData(
        creationTime: creationTime ?? this.creationTime,
        deleteTime: deleteTime ?? this.deleteTime,
        createUserId: createUserId ?? this.createUserId,
        creatorUser: creatorUser ?? this.creatorUser,
        lastModifierUser: lastModifierUser ?? this.lastModifierUser,
        lastModifierUserId: lastModifierUserId ?? this.lastModifierUserId,
        deleteUserId: deleteUserId ?? this.deleteUserId,
        deleterUserId: deleterUserId ?? this.deleterUserId,
        isDeleted: isDeleted ?? this.isDeleted,
        importDateTime: importDateTime ?? this.importDateTime,
        exportDateTime: exportDateTime ?? this.exportDateTime,
        exportStatus: exportStatus ?? this.exportStatus,
        importStatus: importStatus ?? this.importStatus,
        syncError: syncError ?? this.syncError,
        id: id ?? this.id,
        serverUrl: serverUrl ?? this.serverUrl,
        userName: userName ?? this.userName,
        newPasskey: newPasskey ?? this.newPasskey,
        confirmPasskey: confirmPasskey ?? this.confirmPasskey,
        syncFrequency: syncFrequency ?? this.syncFrequency,
        communicationType: communicationType ?? this.communicationType,
        typeofErp: typeofErp ?? this.typeofErp,
      );
  @override
  String toString() {
    return (StringBuffer('CommunicationData(')
          ..write('creationTime: $creationTime, ')
          ..write('deleteTime: $deleteTime, ')
          ..write('createUserId: $createUserId, ')
          ..write('creatorUser: $creatorUser, ')
          ..write('lastModifierUser: $lastModifierUser, ')
          ..write('lastModifierUserId: $lastModifierUserId, ')
          ..write('deleteUserId: $deleteUserId, ')
          ..write('deleterUserId: $deleterUserId, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('importDateTime: $importDateTime, ')
          ..write('exportDateTime: $exportDateTime, ')
          ..write('exportStatus: $exportStatus, ')
          ..write('importStatus: $importStatus, ')
          ..write('syncError: $syncError, ')
          ..write('id: $id, ')
          ..write('serverUrl: $serverUrl, ')
          ..write('userName: $userName, ')
          ..write('newPasskey: $newPasskey, ')
          ..write('confirmPasskey: $confirmPasskey, ')
          ..write('syncFrequency: $syncFrequency, ')
          ..write('communicationType: $communicationType, ')
          ..write('typeofErp: $typeofErp')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      creationTime.hashCode,
      $mrjc(
          deleteTime.hashCode,
          $mrjc(
              createUserId.hashCode,
              $mrjc(
                  creatorUser.hashCode,
                  $mrjc(
                      lastModifierUser.hashCode,
                      $mrjc(
                          lastModifierUserId.hashCode,
                          $mrjc(
                              deleteUserId.hashCode,
                              $mrjc(
                                  deleterUserId.hashCode,
                                  $mrjc(
                                      isDeleted.hashCode,
                                      $mrjc(
                                          importDateTime.hashCode,
                                          $mrjc(
                                              exportDateTime.hashCode,
                                              $mrjc(
                                                  exportStatus.hashCode,
                                                  $mrjc(
                                                      importStatus.hashCode,
                                                      $mrjc(
                                                          syncError.hashCode,
                                                          $mrjc(
                                                              id.hashCode,
                                                              $mrjc(
                                                                  serverUrl
                                                                      .hashCode,
                                                                  $mrjc(
                                                                      userName
                                                                          .hashCode,
                                                                      $mrjc(
                                                                          newPasskey
                                                                              .hashCode,
                                                                          $mrjc(
                                                                              confirmPasskey.hashCode,
                                                                              $mrjc(syncFrequency.hashCode, $mrjc(communicationType.hashCode, typeofErp.hashCode))))))))))))))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is CommunicationData &&
          other.creationTime == this.creationTime &&
          other.deleteTime == this.deleteTime &&
          other.createUserId == this.createUserId &&
          other.creatorUser == this.creatorUser &&
          other.lastModifierUser == this.lastModifierUser &&
          other.lastModifierUserId == this.lastModifierUserId &&
          other.deleteUserId == this.deleteUserId &&
          other.deleterUserId == this.deleterUserId &&
          other.isDeleted == this.isDeleted &&
          other.importDateTime == this.importDateTime &&
          other.exportDateTime == this.exportDateTime &&
          other.exportStatus == this.exportStatus &&
          other.importStatus == this.importStatus &&
          other.syncError == this.syncError &&
          other.id == this.id &&
          other.serverUrl == this.serverUrl &&
          other.userName == this.userName &&
          other.newPasskey == this.newPasskey &&
          other.confirmPasskey == this.confirmPasskey &&
          other.syncFrequency == this.syncFrequency &&
          other.communicationType == this.communicationType &&
          other.typeofErp == this.typeofErp);
}

class CommunicationCompanion extends UpdateCompanion<CommunicationData> {
  final Value<DateTime> creationTime;
  final Value<DateTime> deleteTime;
  final Value<int> createUserId;
  final Value<String> creatorUser;
  final Value<String> lastModifierUser;
  final Value<int> lastModifierUserId;
  final Value<int> deleteUserId;
  final Value<String> deleterUserId;
  final Value<bool> isDeleted;
  final Value<DateTime> importDateTime;
  final Value<DateTime> exportDateTime;
  final Value<String> exportStatus;
  final Value<String> importStatus;
  final Value<String> syncError;
  final Value<int> id;
  final Value<String> serverUrl;
  final Value<String> userName;
  final Value<String> newPasskey;
  final Value<String> confirmPasskey;
  final Value<String> syncFrequency;
  final Value<String> communicationType;
  final Value<String> typeofErp;
  const CommunicationCompanion({
    this.creationTime = const Value.absent(),
    this.deleteTime = const Value.absent(),
    this.createUserId = const Value.absent(),
    this.creatorUser = const Value.absent(),
    this.lastModifierUser = const Value.absent(),
    this.lastModifierUserId = const Value.absent(),
    this.deleteUserId = const Value.absent(),
    this.deleterUserId = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.importDateTime = const Value.absent(),
    this.exportDateTime = const Value.absent(),
    this.exportStatus = const Value.absent(),
    this.importStatus = const Value.absent(),
    this.syncError = const Value.absent(),
    this.id = const Value.absent(),
    this.serverUrl = const Value.absent(),
    this.userName = const Value.absent(),
    this.newPasskey = const Value.absent(),
    this.confirmPasskey = const Value.absent(),
    this.syncFrequency = const Value.absent(),
    this.communicationType = const Value.absent(),
    this.typeofErp = const Value.absent(),
  });
  CommunicationCompanion.insert({
    this.creationTime = const Value.absent(),
    this.deleteTime = const Value.absent(),
    this.createUserId = const Value.absent(),
    this.creatorUser = const Value.absent(),
    this.lastModifierUser = const Value.absent(),
    this.lastModifierUserId = const Value.absent(),
    this.deleteUserId = const Value.absent(),
    this.deleterUserId = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.importDateTime = const Value.absent(),
    this.exportDateTime = const Value.absent(),
    this.exportStatus = const Value.absent(),
    this.importStatus = const Value.absent(),
    this.syncError = const Value.absent(),
    this.id = const Value.absent(),
    @required String serverUrl,
    this.userName = const Value.absent(),
    this.newPasskey = const Value.absent(),
    this.confirmPasskey = const Value.absent(),
    @required String syncFrequency,
    @required String communicationType,
    this.typeofErp = const Value.absent(),
  })  : serverUrl = Value(serverUrl),
        syncFrequency = Value(syncFrequency),
        communicationType = Value(communicationType);
  CommunicationCompanion copyWith(
      {Value<DateTime> creationTime,
      Value<DateTime> deleteTime,
      Value<int> createUserId,
      Value<String> creatorUser,
      Value<String> lastModifierUser,
      Value<int> lastModifierUserId,
      Value<int> deleteUserId,
      Value<String> deleterUserId,
      Value<bool> isDeleted,
      Value<DateTime> importDateTime,
      Value<DateTime> exportDateTime,
      Value<String> exportStatus,
      Value<String> importStatus,
      Value<String> syncError,
      Value<int> id,
      Value<String> serverUrl,
      Value<String> userName,
      Value<String> newPasskey,
      Value<String> confirmPasskey,
      Value<String> syncFrequency,
      Value<String> communicationType,
      Value<String> typeofErp}) {
    return CommunicationCompanion(
      creationTime: creationTime ?? this.creationTime,
      deleteTime: deleteTime ?? this.deleteTime,
      createUserId: createUserId ?? this.createUserId,
      creatorUser: creatorUser ?? this.creatorUser,
      lastModifierUser: lastModifierUser ?? this.lastModifierUser,
      lastModifierUserId: lastModifierUserId ?? this.lastModifierUserId,
      deleteUserId: deleteUserId ?? this.deleteUserId,
      deleterUserId: deleterUserId ?? this.deleterUserId,
      isDeleted: isDeleted ?? this.isDeleted,
      importDateTime: importDateTime ?? this.importDateTime,
      exportDateTime: exportDateTime ?? this.exportDateTime,
      exportStatus: exportStatus ?? this.exportStatus,
      importStatus: importStatus ?? this.importStatus,
      syncError: syncError ?? this.syncError,
      id: id ?? this.id,
      serverUrl: serverUrl ?? this.serverUrl,
      userName: userName ?? this.userName,
      newPasskey: newPasskey ?? this.newPasskey,
      confirmPasskey: confirmPasskey ?? this.confirmPasskey,
      syncFrequency: syncFrequency ?? this.syncFrequency,
      communicationType: communicationType ?? this.communicationType,
      typeofErp: typeofErp ?? this.typeofErp,
    );
  }
}

class $CommunicationTable extends Communication
    with TableInfo<$CommunicationTable, CommunicationData> {
  final GeneratedDatabase _db;
  final String _alias;
  $CommunicationTable(this._db, [this._alias]);
  final VerificationMeta _creationTimeMeta =
      const VerificationMeta('creationTime');
  GeneratedDateTimeColumn _creationTime;
  @override
  GeneratedDateTimeColumn get creationTime =>
      _creationTime ??= _constructCreationTime();
  GeneratedDateTimeColumn _constructCreationTime() {
    return GeneratedDateTimeColumn(
      'creation_time',
      $tableName,
      true,
    );
  }

  final VerificationMeta _deleteTimeMeta = const VerificationMeta('deleteTime');
  GeneratedDateTimeColumn _deleteTime;
  @override
  GeneratedDateTimeColumn get deleteTime =>
      _deleteTime ??= _constructDeleteTime();
  GeneratedDateTimeColumn _constructDeleteTime() {
    return GeneratedDateTimeColumn(
      'delete_time',
      $tableName,
      true,
    );
  }

  final VerificationMeta _createUserIdMeta =
      const VerificationMeta('createUserId');
  GeneratedIntColumn _createUserId;
  @override
  GeneratedIntColumn get createUserId =>
      _createUserId ??= _constructCreateUserId();
  GeneratedIntColumn _constructCreateUserId() {
    return GeneratedIntColumn(
      'create_user_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _creatorUserMeta =
      const VerificationMeta('creatorUser');
  GeneratedTextColumn _creatorUser;
  @override
  GeneratedTextColumn get creatorUser =>
      _creatorUser ??= _constructCreatorUser();
  GeneratedTextColumn _constructCreatorUser() {
    return GeneratedTextColumn(
      'creator_user',
      $tableName,
      true,
    );
  }

  final VerificationMeta _lastModifierUserMeta =
      const VerificationMeta('lastModifierUser');
  GeneratedTextColumn _lastModifierUser;
  @override
  GeneratedTextColumn get lastModifierUser =>
      _lastModifierUser ??= _constructLastModifierUser();
  GeneratedTextColumn _constructLastModifierUser() {
    return GeneratedTextColumn(
      'last_modifier_user',
      $tableName,
      true,
    );
  }

  final VerificationMeta _lastModifierUserIdMeta =
      const VerificationMeta('lastModifierUserId');
  GeneratedIntColumn _lastModifierUserId;
  @override
  GeneratedIntColumn get lastModifierUserId =>
      _lastModifierUserId ??= _constructLastModifierUserId();
  GeneratedIntColumn _constructLastModifierUserId() {
    return GeneratedIntColumn(
      'last_modifier_user_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _deleteUserIdMeta =
      const VerificationMeta('deleteUserId');
  GeneratedIntColumn _deleteUserId;
  @override
  GeneratedIntColumn get deleteUserId =>
      _deleteUserId ??= _constructDeleteUserId();
  GeneratedIntColumn _constructDeleteUserId() {
    return GeneratedIntColumn(
      'delete_user_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _deleterUserIdMeta =
      const VerificationMeta('deleterUserId');
  GeneratedTextColumn _deleterUserId;
  @override
  GeneratedTextColumn get deleterUserId =>
      _deleterUserId ??= _constructDeleterUserId();
  GeneratedTextColumn _constructDeleterUserId() {
    return GeneratedTextColumn(
      'deleter_user_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _isDeletedMeta = const VerificationMeta('isDeleted');
  GeneratedBoolColumn _isDeleted;
  @override
  GeneratedBoolColumn get isDeleted => _isDeleted ??= _constructIsDeleted();
  GeneratedBoolColumn _constructIsDeleted() {
    return GeneratedBoolColumn('is_deleted', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _importDateTimeMeta =
      const VerificationMeta('importDateTime');
  GeneratedDateTimeColumn _importDateTime;
  @override
  GeneratedDateTimeColumn get importDateTime =>
      _importDateTime ??= _constructImportDateTime();
  GeneratedDateTimeColumn _constructImportDateTime() {
    return GeneratedDateTimeColumn(
      'import_date_time',
      $tableName,
      true,
    );
  }

  final VerificationMeta _exportDateTimeMeta =
      const VerificationMeta('exportDateTime');
  GeneratedDateTimeColumn _exportDateTime;
  @override
  GeneratedDateTimeColumn get exportDateTime =>
      _exportDateTime ??= _constructExportDateTime();
  GeneratedDateTimeColumn _constructExportDateTime() {
    return GeneratedDateTimeColumn(
      'export_date_time',
      $tableName,
      true,
    );
  }

  final VerificationMeta _exportStatusMeta =
      const VerificationMeta('exportStatus');
  GeneratedTextColumn _exportStatus;
  @override
  GeneratedTextColumn get exportStatus =>
      _exportStatus ??= _constructExportStatus();
  GeneratedTextColumn _constructExportStatus() {
    return GeneratedTextColumn('export_status', $tableName, false,
        defaultValue: Constant('Pending'));
  }

  final VerificationMeta _importStatusMeta =
      const VerificationMeta('importStatus');
  GeneratedTextColumn _importStatus;
  @override
  GeneratedTextColumn get importStatus =>
      _importStatus ??= _constructImportStatus();
  GeneratedTextColumn _constructImportStatus() {
    return GeneratedTextColumn('import_status', $tableName, false,
        defaultValue: Constant('Pending'));
  }

  final VerificationMeta _syncErrorMeta = const VerificationMeta('syncError');
  GeneratedTextColumn _syncError;
  @override
  GeneratedTextColumn get syncError => _syncError ??= _constructSyncError();
  GeneratedTextColumn _constructSyncError() {
    return GeneratedTextColumn(
      'sync_error',
      $tableName,
      true,
    );
  }

  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _serverUrlMeta = const VerificationMeta('serverUrl');
  GeneratedTextColumn _serverUrl;
  @override
  GeneratedTextColumn get serverUrl => _serverUrl ??= _constructServerUrl();
  GeneratedTextColumn _constructServerUrl() {
    return GeneratedTextColumn(
      'server_url',
      $tableName,
      false,
    );
  }

  final VerificationMeta _userNameMeta = const VerificationMeta('userName');
  GeneratedTextColumn _userName;
  @override
  GeneratedTextColumn get userName => _userName ??= _constructUserName();
  GeneratedTextColumn _constructUserName() {
    return GeneratedTextColumn(
      'user_name',
      $tableName,
      true,
    );
  }

  final VerificationMeta _newPasskeyMeta = const VerificationMeta('newPasskey');
  GeneratedTextColumn _newPasskey;
  @override
  GeneratedTextColumn get newPasskey => _newPasskey ??= _constructNewPasskey();
  GeneratedTextColumn _constructNewPasskey() {
    return GeneratedTextColumn(
      'new_passkey',
      $tableName,
      true,
    );
  }

  final VerificationMeta _confirmPasskeyMeta =
      const VerificationMeta('confirmPasskey');
  GeneratedTextColumn _confirmPasskey;
  @override
  GeneratedTextColumn get confirmPasskey =>
      _confirmPasskey ??= _constructConfirmPasskey();
  GeneratedTextColumn _constructConfirmPasskey() {
    return GeneratedTextColumn(
      'confirm_passkey',
      $tableName,
      true,
    );
  }

  final VerificationMeta _syncFrequencyMeta =
      const VerificationMeta('syncFrequency');
  GeneratedTextColumn _syncFrequency;
  @override
  GeneratedTextColumn get syncFrequency =>
      _syncFrequency ??= _constructSyncFrequency();
  GeneratedTextColumn _constructSyncFrequency() {
    return GeneratedTextColumn(
      'sync_frequency',
      $tableName,
      false,
    );
  }

  final VerificationMeta _communicationTypeMeta =
      const VerificationMeta('communicationType');
  GeneratedTextColumn _communicationType;
  @override
  GeneratedTextColumn get communicationType =>
      _communicationType ??= _constructCommunicationType();
  GeneratedTextColumn _constructCommunicationType() {
    return GeneratedTextColumn(
      'communication_type',
      $tableName,
      false,
    );
  }

  final VerificationMeta _typeofErpMeta = const VerificationMeta('typeofErp');
  GeneratedTextColumn _typeofErp;
  @override
  GeneratedTextColumn get typeofErp => _typeofErp ??= _constructTypeofErp();
  GeneratedTextColumn _constructTypeofErp() {
    return GeneratedTextColumn(
      'typeof_erp',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        creationTime,
        deleteTime,
        createUserId,
        creatorUser,
        lastModifierUser,
        lastModifierUserId,
        deleteUserId,
        deleterUserId,
        isDeleted,
        importDateTime,
        exportDateTime,
        exportStatus,
        importStatus,
        syncError,
        id,
        serverUrl,
        userName,
        newPasskey,
        confirmPasskey,
        syncFrequency,
        communicationType,
        typeofErp
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
    if (d.creationTime.present) {
      context.handle(
          _creationTimeMeta,
          creationTime.isAcceptableValue(
              d.creationTime.value, _creationTimeMeta));
    }
    if (d.deleteTime.present) {
      context.handle(_deleteTimeMeta,
          deleteTime.isAcceptableValue(d.deleteTime.value, _deleteTimeMeta));
    }
    if (d.createUserId.present) {
      context.handle(
          _createUserIdMeta,
          createUserId.isAcceptableValue(
              d.createUserId.value, _createUserIdMeta));
    }
    if (d.creatorUser.present) {
      context.handle(_creatorUserMeta,
          creatorUser.isAcceptableValue(d.creatorUser.value, _creatorUserMeta));
    }
    if (d.lastModifierUser.present) {
      context.handle(
          _lastModifierUserMeta,
          lastModifierUser.isAcceptableValue(
              d.lastModifierUser.value, _lastModifierUserMeta));
    }
    if (d.lastModifierUserId.present) {
      context.handle(
          _lastModifierUserIdMeta,
          lastModifierUserId.isAcceptableValue(
              d.lastModifierUserId.value, _lastModifierUserIdMeta));
    }
    if (d.deleteUserId.present) {
      context.handle(
          _deleteUserIdMeta,
          deleteUserId.isAcceptableValue(
              d.deleteUserId.value, _deleteUserIdMeta));
    }
    if (d.deleterUserId.present) {
      context.handle(
          _deleterUserIdMeta,
          deleterUserId.isAcceptableValue(
              d.deleterUserId.value, _deleterUserIdMeta));
    }
    if (d.isDeleted.present) {
      context.handle(_isDeletedMeta,
          isDeleted.isAcceptableValue(d.isDeleted.value, _isDeletedMeta));
    }
    if (d.importDateTime.present) {
      context.handle(
          _importDateTimeMeta,
          importDateTime.isAcceptableValue(
              d.importDateTime.value, _importDateTimeMeta));
    }
    if (d.exportDateTime.present) {
      context.handle(
          _exportDateTimeMeta,
          exportDateTime.isAcceptableValue(
              d.exportDateTime.value, _exportDateTimeMeta));
    }
    if (d.exportStatus.present) {
      context.handle(
          _exportStatusMeta,
          exportStatus.isAcceptableValue(
              d.exportStatus.value, _exportStatusMeta));
    }
    if (d.importStatus.present) {
      context.handle(
          _importStatusMeta,
          importStatus.isAcceptableValue(
              d.importStatus.value, _importStatusMeta));
    }
    if (d.syncError.present) {
      context.handle(_syncErrorMeta,
          syncError.isAcceptableValue(d.syncError.value, _syncErrorMeta));
    }
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    }
    if (d.serverUrl.present) {
      context.handle(_serverUrlMeta,
          serverUrl.isAcceptableValue(d.serverUrl.value, _serverUrlMeta));
    } else if (isInserting) {
      context.missing(_serverUrlMeta);
    }
    if (d.userName.present) {
      context.handle(_userNameMeta,
          userName.isAcceptableValue(d.userName.value, _userNameMeta));
    }
    if (d.newPasskey.present) {
      context.handle(_newPasskeyMeta,
          newPasskey.isAcceptableValue(d.newPasskey.value, _newPasskeyMeta));
    }
    if (d.confirmPasskey.present) {
      context.handle(
          _confirmPasskeyMeta,
          confirmPasskey.isAcceptableValue(
              d.confirmPasskey.value, _confirmPasskeyMeta));
    }
    if (d.syncFrequency.present) {
      context.handle(
          _syncFrequencyMeta,
          syncFrequency.isAcceptableValue(
              d.syncFrequency.value, _syncFrequencyMeta));
    } else if (isInserting) {
      context.missing(_syncFrequencyMeta);
    }
    if (d.communicationType.present) {
      context.handle(
          _communicationTypeMeta,
          communicationType.isAcceptableValue(
              d.communicationType.value, _communicationTypeMeta));
    } else if (isInserting) {
      context.missing(_communicationTypeMeta);
    }
    if (d.typeofErp.present) {
      context.handle(_typeofErpMeta,
          typeofErp.isAcceptableValue(d.typeofErp.value, _typeofErpMeta));
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
    if (d.creationTime.present) {
      map['creation_time'] =
          Variable<DateTime, DateTimeType>(d.creationTime.value);
    }
    if (d.deleteTime.present) {
      map['delete_time'] = Variable<DateTime, DateTimeType>(d.deleteTime.value);
    }
    if (d.createUserId.present) {
      map['create_user_id'] = Variable<int, IntType>(d.createUserId.value);
    }
    if (d.creatorUser.present) {
      map['creator_user'] = Variable<String, StringType>(d.creatorUser.value);
    }
    if (d.lastModifierUser.present) {
      map['last_modifier_user'] =
          Variable<String, StringType>(d.lastModifierUser.value);
    }
    if (d.lastModifierUserId.present) {
      map['last_modifier_user_id'] =
          Variable<int, IntType>(d.lastModifierUserId.value);
    }
    if (d.deleteUserId.present) {
      map['delete_user_id'] = Variable<int, IntType>(d.deleteUserId.value);
    }
    if (d.deleterUserId.present) {
      map['deleter_user_id'] =
          Variable<String, StringType>(d.deleterUserId.value);
    }
    if (d.isDeleted.present) {
      map['is_deleted'] = Variable<bool, BoolType>(d.isDeleted.value);
    }
    if (d.importDateTime.present) {
      map['import_date_time'] =
          Variable<DateTime, DateTimeType>(d.importDateTime.value);
    }
    if (d.exportDateTime.present) {
      map['export_date_time'] =
          Variable<DateTime, DateTimeType>(d.exportDateTime.value);
    }
    if (d.exportStatus.present) {
      map['export_status'] = Variable<String, StringType>(d.exportStatus.value);
    }
    if (d.importStatus.present) {
      map['import_status'] = Variable<String, StringType>(d.importStatus.value);
    }
    if (d.syncError.present) {
      map['sync_error'] = Variable<String, StringType>(d.syncError.value);
    }
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.serverUrl.present) {
      map['server_url'] = Variable<String, StringType>(d.serverUrl.value);
    }
    if (d.userName.present) {
      map['user_name'] = Variable<String, StringType>(d.userName.value);
    }
    if (d.newPasskey.present) {
      map['new_passkey'] = Variable<String, StringType>(d.newPasskey.value);
    }
    if (d.confirmPasskey.present) {
      map['confirm_passkey'] =
          Variable<String, StringType>(d.confirmPasskey.value);
    }
    if (d.syncFrequency.present) {
      map['sync_frequency'] =
          Variable<String, StringType>(d.syncFrequency.value);
    }
    if (d.communicationType.present) {
      map['communication_type'] =
          Variable<String, StringType>(d.communicationType.value);
    }
    if (d.typeofErp.present) {
      map['typeof_erp'] = Variable<String, StringType>(d.typeofErp.value);
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
  final String jobName;
  final DateTime startDateTime;
  final String syncFrequency;
  final bool enableJob;
  BackgroundJobScheduleData(
      {@required this.id,
      @required this.jobName,
      @required this.startDateTime,
      @required this.syncFrequency,
      @required this.enableJob});
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
      jobName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}job_name']),
      startDateTime: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}start_date_time']),
      syncFrequency: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}sync_frequency']),
      enableJob: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}enable_job']),
    );
  }
  factory BackgroundJobScheduleData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return BackgroundJobScheduleData(
      id: serializer.fromJson<int>(json['id']),
      jobName: serializer.fromJson<String>(json['jobName']),
      startDateTime: serializer.fromJson<DateTime>(json['startDateTime']),
      syncFrequency: serializer.fromJson<String>(json['syncFrequency']),
      enableJob: serializer.fromJson<bool>(json['enableJob']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'jobName': serializer.toJson<String>(jobName),
      'startDateTime': serializer.toJson<DateTime>(startDateTime),
      'syncFrequency': serializer.toJson<String>(syncFrequency),
      'enableJob': serializer.toJson<bool>(enableJob),
    };
  }

  @override
  BackgroundJobScheduleCompanion createCompanion(bool nullToAbsent) {
    return BackgroundJobScheduleCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      jobName: jobName == null && nullToAbsent
          ? const Value.absent()
          : Value(jobName),
      startDateTime: startDateTime == null && nullToAbsent
          ? const Value.absent()
          : Value(startDateTime),
      syncFrequency: syncFrequency == null && nullToAbsent
          ? const Value.absent()
          : Value(syncFrequency),
      enableJob: enableJob == null && nullToAbsent
          ? const Value.absent()
          : Value(enableJob),
    );
  }

  BackgroundJobScheduleData copyWith(
          {int id,
          String jobName,
          DateTime startDateTime,
          String syncFrequency,
          bool enableJob}) =>
      BackgroundJobScheduleData(
        id: id ?? this.id,
        jobName: jobName ?? this.jobName,
        startDateTime: startDateTime ?? this.startDateTime,
        syncFrequency: syncFrequency ?? this.syncFrequency,
        enableJob: enableJob ?? this.enableJob,
      );
  @override
  String toString() {
    return (StringBuffer('BackgroundJobScheduleData(')
          ..write('id: $id, ')
          ..write('jobName: $jobName, ')
          ..write('startDateTime: $startDateTime, ')
          ..write('syncFrequency: $syncFrequency, ')
          ..write('enableJob: $enableJob')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          jobName.hashCode,
          $mrjc(startDateTime.hashCode,
              $mrjc(syncFrequency.hashCode, enableJob.hashCode)))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is BackgroundJobScheduleData &&
          other.id == this.id &&
          other.jobName == this.jobName &&
          other.startDateTime == this.startDateTime &&
          other.syncFrequency == this.syncFrequency &&
          other.enableJob == this.enableJob);
}

class BackgroundJobScheduleCompanion
    extends UpdateCompanion<BackgroundJobScheduleData> {
  final Value<int> id;
  final Value<String> jobName;
  final Value<DateTime> startDateTime;
  final Value<String> syncFrequency;
  final Value<bool> enableJob;
  const BackgroundJobScheduleCompanion({
    this.id = const Value.absent(),
    this.jobName = const Value.absent(),
    this.startDateTime = const Value.absent(),
    this.syncFrequency = const Value.absent(),
    this.enableJob = const Value.absent(),
  });
  BackgroundJobScheduleCompanion.insert({
    @required int id,
    @required String jobName,
    @required DateTime startDateTime,
    @required String syncFrequency,
    this.enableJob = const Value.absent(),
  })  : id = Value(id),
        jobName = Value(jobName),
        startDateTime = Value(startDateTime),
        syncFrequency = Value(syncFrequency);
  BackgroundJobScheduleCompanion copyWith(
      {Value<int> id,
      Value<String> jobName,
      Value<DateTime> startDateTime,
      Value<String> syncFrequency,
      Value<bool> enableJob}) {
    return BackgroundJobScheduleCompanion(
      id: id ?? this.id,
      jobName: jobName ?? this.jobName,
      startDateTime: startDateTime ?? this.startDateTime,
      syncFrequency: syncFrequency ?? this.syncFrequency,
      enableJob: enableJob ?? this.enableJob,
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

  final VerificationMeta _jobNameMeta = const VerificationMeta('jobName');
  GeneratedTextColumn _jobName;
  @override
  GeneratedTextColumn get jobName => _jobName ??= _constructJobName();
  GeneratedTextColumn _constructJobName() {
    return GeneratedTextColumn(
      'job_name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _startDateTimeMeta =
      const VerificationMeta('startDateTime');
  GeneratedDateTimeColumn _startDateTime;
  @override
  GeneratedDateTimeColumn get startDateTime =>
      _startDateTime ??= _constructStartDateTime();
  GeneratedDateTimeColumn _constructStartDateTime() {
    return GeneratedDateTimeColumn(
      'start_date_time',
      $tableName,
      false,
    );
  }

  final VerificationMeta _syncFrequencyMeta =
      const VerificationMeta('syncFrequency');
  GeneratedTextColumn _syncFrequency;
  @override
  GeneratedTextColumn get syncFrequency =>
      _syncFrequency ??= _constructSyncFrequency();
  GeneratedTextColumn _constructSyncFrequency() {
    return GeneratedTextColumn(
      'sync_frequency',
      $tableName,
      false,
    );
  }

  final VerificationMeta _enableJobMeta = const VerificationMeta('enableJob');
  GeneratedBoolColumn _enableJob;
  @override
  GeneratedBoolColumn get enableJob => _enableJob ??= _constructEnableJob();
  GeneratedBoolColumn _constructEnableJob() {
    return GeneratedBoolColumn('enable_job', $tableName, false,
        defaultValue: Constant(false));
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, jobName, startDateTime, syncFrequency, enableJob];
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
    if (d.jobName.present) {
      context.handle(_jobNameMeta,
          jobName.isAcceptableValue(d.jobName.value, _jobNameMeta));
    } else if (isInserting) {
      context.missing(_jobNameMeta);
    }
    if (d.startDateTime.present) {
      context.handle(
          _startDateTimeMeta,
          startDateTime.isAcceptableValue(
              d.startDateTime.value, _startDateTimeMeta));
    } else if (isInserting) {
      context.missing(_startDateTimeMeta);
    }
    if (d.syncFrequency.present) {
      context.handle(
          _syncFrequencyMeta,
          syncFrequency.isAcceptableValue(
              d.syncFrequency.value, _syncFrequencyMeta));
    } else if (isInserting) {
      context.missing(_syncFrequencyMeta);
    }
    if (d.enableJob.present) {
      context.handle(_enableJobMeta,
          enableJob.isAcceptableValue(d.enableJob.value, _enableJobMeta));
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
    if (d.jobName.present) {
      map['job_name'] = Variable<String, StringType>(d.jobName.value);
    }
    if (d.startDateTime.present) {
      map['start_date_time'] =
          Variable<DateTime, DateTimeType>(d.startDateTime.value);
    }
    if (d.syncFrequency.present) {
      map['sync_frequency'] =
          Variable<String, StringType>(d.syncFrequency.value);
    }
    if (d.enableJob.present) {
      map['enable_job'] = Variable<bool, BoolType>(d.enableJob.value);
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
  final String jobName;
  final DateTime lastRun;
  final String jobStatus;
  final String jobDescription;
  BackgroundJobLog(
      {@required this.id,
      @required this.jobName,
      @required this.lastRun,
      @required this.jobStatus,
      @required this.jobDescription});
  factory BackgroundJobLog.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return BackgroundJobLog(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      jobName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}job_name']),
      lastRun: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}last_run']),
      jobStatus: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}job_status']),
      jobDescription: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}job_description']),
    );
  }
  factory BackgroundJobLog.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return BackgroundJobLog(
      id: serializer.fromJson<int>(json['id']),
      jobName: serializer.fromJson<String>(json['jobName']),
      lastRun: serializer.fromJson<DateTime>(json['lastRun']),
      jobStatus: serializer.fromJson<String>(json['jobStatus']),
      jobDescription: serializer.fromJson<String>(json['jobDescription']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'jobName': serializer.toJson<String>(jobName),
      'lastRun': serializer.toJson<DateTime>(lastRun),
      'jobStatus': serializer.toJson<String>(jobStatus),
      'jobDescription': serializer.toJson<String>(jobDescription),
    };
  }

  @override
  BackgroundJobLogsCompanion createCompanion(bool nullToAbsent) {
    return BackgroundJobLogsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      jobName: jobName == null && nullToAbsent
          ? const Value.absent()
          : Value(jobName),
      lastRun: lastRun == null && nullToAbsent
          ? const Value.absent()
          : Value(lastRun),
      jobStatus: jobStatus == null && nullToAbsent
          ? const Value.absent()
          : Value(jobStatus),
      jobDescription: jobDescription == null && nullToAbsent
          ? const Value.absent()
          : Value(jobDescription),
    );
  }

  BackgroundJobLog copyWith(
          {int id,
          String jobName,
          DateTime lastRun,
          String jobStatus,
          String jobDescription}) =>
      BackgroundJobLog(
        id: id ?? this.id,
        jobName: jobName ?? this.jobName,
        lastRun: lastRun ?? this.lastRun,
        jobStatus: jobStatus ?? this.jobStatus,
        jobDescription: jobDescription ?? this.jobDescription,
      );
  @override
  String toString() {
    return (StringBuffer('BackgroundJobLog(')
          ..write('id: $id, ')
          ..write('jobName: $jobName, ')
          ..write('lastRun: $lastRun, ')
          ..write('jobStatus: $jobStatus, ')
          ..write('jobDescription: $jobDescription')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          jobName.hashCode,
          $mrjc(lastRun.hashCode,
              $mrjc(jobStatus.hashCode, jobDescription.hashCode)))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is BackgroundJobLog &&
          other.id == this.id &&
          other.jobName == this.jobName &&
          other.lastRun == this.lastRun &&
          other.jobStatus == this.jobStatus &&
          other.jobDescription == this.jobDescription);
}

class BackgroundJobLogsCompanion extends UpdateCompanion<BackgroundJobLog> {
  final Value<int> id;
  final Value<String> jobName;
  final Value<DateTime> lastRun;
  final Value<String> jobStatus;
  final Value<String> jobDescription;
  const BackgroundJobLogsCompanion({
    this.id = const Value.absent(),
    this.jobName = const Value.absent(),
    this.lastRun = const Value.absent(),
    this.jobStatus = const Value.absent(),
    this.jobDescription = const Value.absent(),
  });
  BackgroundJobLogsCompanion.insert({
    @required int id,
    @required String jobName,
    @required DateTime lastRun,
    @required String jobStatus,
    @required String jobDescription,
  })  : id = Value(id),
        jobName = Value(jobName),
        lastRun = Value(lastRun),
        jobStatus = Value(jobStatus),
        jobDescription = Value(jobDescription);
  BackgroundJobLogsCompanion copyWith(
      {Value<int> id,
      Value<String> jobName,
      Value<DateTime> lastRun,
      Value<String> jobStatus,
      Value<String> jobDescription}) {
    return BackgroundJobLogsCompanion(
      id: id ?? this.id,
      jobName: jobName ?? this.jobName,
      lastRun: lastRun ?? this.lastRun,
      jobStatus: jobStatus ?? this.jobStatus,
      jobDescription: jobDescription ?? this.jobDescription,
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

  final VerificationMeta _jobNameMeta = const VerificationMeta('jobName');
  GeneratedTextColumn _jobName;
  @override
  GeneratedTextColumn get jobName => _jobName ??= _constructJobName();
  GeneratedTextColumn _constructJobName() {
    return GeneratedTextColumn(
      'job_name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _lastRunMeta = const VerificationMeta('lastRun');
  GeneratedDateTimeColumn _lastRun;
  @override
  GeneratedDateTimeColumn get lastRun => _lastRun ??= _constructLastRun();
  GeneratedDateTimeColumn _constructLastRun() {
    return GeneratedDateTimeColumn(
      'last_run',
      $tableName,
      false,
    );
  }

  final VerificationMeta _jobStatusMeta = const VerificationMeta('jobStatus');
  GeneratedTextColumn _jobStatus;
  @override
  GeneratedTextColumn get jobStatus => _jobStatus ??= _constructJobStatus();
  GeneratedTextColumn _constructJobStatus() {
    return GeneratedTextColumn(
      'job_status',
      $tableName,
      false,
    );
  }

  final VerificationMeta _jobDescriptionMeta =
      const VerificationMeta('jobDescription');
  GeneratedTextColumn _jobDescription;
  @override
  GeneratedTextColumn get jobDescription =>
      _jobDescription ??= _constructJobDescription();
  GeneratedTextColumn _constructJobDescription() {
    return GeneratedTextColumn(
      'job_description',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, jobName, lastRun, jobStatus, jobDescription];
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
    if (d.jobName.present) {
      context.handle(_jobNameMeta,
          jobName.isAcceptableValue(d.jobName.value, _jobNameMeta));
    } else if (isInserting) {
      context.missing(_jobNameMeta);
    }
    if (d.lastRun.present) {
      context.handle(_lastRunMeta,
          lastRun.isAcceptableValue(d.lastRun.value, _lastRunMeta));
    } else if (isInserting) {
      context.missing(_lastRunMeta);
    }
    if (d.jobStatus.present) {
      context.handle(_jobStatusMeta,
          jobStatus.isAcceptableValue(d.jobStatus.value, _jobStatusMeta));
    } else if (isInserting) {
      context.missing(_jobStatusMeta);
    }
    if (d.jobDescription.present) {
      context.handle(
          _jobDescriptionMeta,
          jobDescription.isAcceptableValue(
              d.jobDescription.value, _jobDescriptionMeta));
    } else if (isInserting) {
      context.missing(_jobDescriptionMeta);
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
    if (d.jobName.present) {
      map['job_name'] = Variable<String, StringType>(d.jobName.value);
    }
    if (d.lastRun.present) {
      map['last_run'] = Variable<DateTime, DateTimeType>(d.lastRun.value);
    }
    if (d.jobStatus.present) {
      map['job_status'] = Variable<String, StringType>(d.jobStatus.value);
    }
    if (d.jobDescription.present) {
      map['job_description'] =
          Variable<String, StringType>(d.jobDescription.value);
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
