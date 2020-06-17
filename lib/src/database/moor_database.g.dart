// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class User extends DataClass implements Insertable<User> {
  final int tenantId;
  final int id;
  final String userName;
  final String name;
  final String surname;
  final String emailAddress;
  final bool isActive;
  final String fullName;
  final String mobileHash;
  final bool enableOfflineLogin;
  final String firebaseToken;
  final DateTime creationTime;
  final DateTime lastLoginTime;
  User(
      {this.tenantId,
      @required this.id,
      @required this.userName,
      @required this.name,
      @required this.surname,
      @required this.emailAddress,
      @required this.isActive,
      @required this.fullName,
      this.mobileHash,
      @required this.enableOfflineLogin,
      this.firebaseToken,
      this.creationTime,
      this.lastLoginTime});
  factory User.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return User(
      tenantId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}tenant_id']),
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
      mobileHash: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}mobile_hash']),
      enableOfflineLogin: boolType.mapFromDatabaseResponse(
          data['${effectivePrefix}enable_offline_login']),
      firebaseToken: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}firebase_token']),
      creationTime: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}creation_time']),
      lastLoginTime: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}last_login_time']),
    );
  }
  factory User.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return User(
      tenantId: serializer.fromJson<int>(json['tenantId']),
      id: serializer.fromJson<int>(json['id']),
      userName: serializer.fromJson<String>(json['userName']),
      name: serializer.fromJson<String>(json['name']),
      surname: serializer.fromJson<String>(json['surname']),
      emailAddress: serializer.fromJson<String>(json['emailAddress']),
      isActive: serializer.fromJson<bool>(json['isActive']),
      fullName: serializer.fromJson<String>(json['fullName']),
      mobileHash: serializer.fromJson<String>(json['mobileHash']),
      enableOfflineLogin: serializer.fromJson<bool>(json['enableOfflineLogin']),
      firebaseToken: serializer.fromJson<String>(json['firebaseToken']),
      creationTime: serializer.fromJson<DateTime>(json['creationTime']),
      lastLoginTime: serializer.fromJson<DateTime>(json['lastLoginTime']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'tenantId': serializer.toJson<int>(tenantId),
      'id': serializer.toJson<int>(id),
      'userName': serializer.toJson<String>(userName),
      'name': serializer.toJson<String>(name),
      'surname': serializer.toJson<String>(surname),
      'emailAddress': serializer.toJson<String>(emailAddress),
      'isActive': serializer.toJson<bool>(isActive),
      'fullName': serializer.toJson<String>(fullName),
      'mobileHash': serializer.toJson<String>(mobileHash),
      'enableOfflineLogin': serializer.toJson<bool>(enableOfflineLogin),
      'firebaseToken': serializer.toJson<String>(firebaseToken),
      'creationTime': serializer.toJson<DateTime>(creationTime),
      'lastLoginTime': serializer.toJson<DateTime>(lastLoginTime),
    };
  }

  @override
  UsersCompanion createCompanion(bool nullToAbsent) {
    return UsersCompanion(
      tenantId: tenantId == null && nullToAbsent
          ? const Value.absent()
          : Value(tenantId),
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
      mobileHash: mobileHash == null && nullToAbsent
          ? const Value.absent()
          : Value(mobileHash),
      enableOfflineLogin: enableOfflineLogin == null && nullToAbsent
          ? const Value.absent()
          : Value(enableOfflineLogin),
      firebaseToken: firebaseToken == null && nullToAbsent
          ? const Value.absent()
          : Value(firebaseToken),
      creationTime: creationTime == null && nullToAbsent
          ? const Value.absent()
          : Value(creationTime),
      lastLoginTime: lastLoginTime == null && nullToAbsent
          ? const Value.absent()
          : Value(lastLoginTime),
    );
  }

  User copyWith(
          {int tenantId,
          int id,
          String userName,
          String name,
          String surname,
          String emailAddress,
          bool isActive,
          String fullName,
          String mobileHash,
          bool enableOfflineLogin,
          String firebaseToken,
          DateTime creationTime,
          DateTime lastLoginTime}) =>
      User(
        tenantId: tenantId ?? this.tenantId,
        id: id ?? this.id,
        userName: userName ?? this.userName,
        name: name ?? this.name,
        surname: surname ?? this.surname,
        emailAddress: emailAddress ?? this.emailAddress,
        isActive: isActive ?? this.isActive,
        fullName: fullName ?? this.fullName,
        mobileHash: mobileHash ?? this.mobileHash,
        enableOfflineLogin: enableOfflineLogin ?? this.enableOfflineLogin,
        firebaseToken: firebaseToken ?? this.firebaseToken,
        creationTime: creationTime ?? this.creationTime,
        lastLoginTime: lastLoginTime ?? this.lastLoginTime,
      );
  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('tenantId: $tenantId, ')
          ..write('id: $id, ')
          ..write('userName: $userName, ')
          ..write('name: $name, ')
          ..write('surname: $surname, ')
          ..write('emailAddress: $emailAddress, ')
          ..write('isActive: $isActive, ')
          ..write('fullName: $fullName, ')
          ..write('mobileHash: $mobileHash, ')
          ..write('enableOfflineLogin: $enableOfflineLogin, ')
          ..write('firebaseToken: $firebaseToken, ')
          ..write('creationTime: $creationTime, ')
          ..write('lastLoginTime: $lastLoginTime')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      tenantId.hashCode,
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
                              $mrjc(
                                  fullName.hashCode,
                                  $mrjc(
                                      mobileHash.hashCode,
                                      $mrjc(
                                          enableOfflineLogin.hashCode,
                                          $mrjc(
                                              firebaseToken.hashCode,
                                              $mrjc(
                                                  creationTime.hashCode,
                                                  lastLoginTime
                                                      .hashCode)))))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is User &&
          other.tenantId == this.tenantId &&
          other.id == this.id &&
          other.userName == this.userName &&
          other.name == this.name &&
          other.surname == this.surname &&
          other.emailAddress == this.emailAddress &&
          other.isActive == this.isActive &&
          other.fullName == this.fullName &&
          other.mobileHash == this.mobileHash &&
          other.enableOfflineLogin == this.enableOfflineLogin &&
          other.firebaseToken == this.firebaseToken &&
          other.creationTime == this.creationTime &&
          other.lastLoginTime == this.lastLoginTime);
}

class UsersCompanion extends UpdateCompanion<User> {
  final Value<int> tenantId;
  final Value<int> id;
  final Value<String> userName;
  final Value<String> name;
  final Value<String> surname;
  final Value<String> emailAddress;
  final Value<bool> isActive;
  final Value<String> fullName;
  final Value<String> mobileHash;
  final Value<bool> enableOfflineLogin;
  final Value<String> firebaseToken;
  final Value<DateTime> creationTime;
  final Value<DateTime> lastLoginTime;
  const UsersCompanion({
    this.tenantId = const Value.absent(),
    this.id = const Value.absent(),
    this.userName = const Value.absent(),
    this.name = const Value.absent(),
    this.surname = const Value.absent(),
    this.emailAddress = const Value.absent(),
    this.isActive = const Value.absent(),
    this.fullName = const Value.absent(),
    this.mobileHash = const Value.absent(),
    this.enableOfflineLogin = const Value.absent(),
    this.firebaseToken = const Value.absent(),
    this.creationTime = const Value.absent(),
    this.lastLoginTime = const Value.absent(),
  });
  UsersCompanion.insert({
    this.tenantId = const Value.absent(),
    @required int id,
    @required String userName,
    @required String name,
    @required String surname,
    @required String emailAddress,
    this.isActive = const Value.absent(),
    @required String fullName,
    this.mobileHash = const Value.absent(),
    this.enableOfflineLogin = const Value.absent(),
    this.firebaseToken = const Value.absent(),
    this.creationTime = const Value.absent(),
    this.lastLoginTime = const Value.absent(),
  })  : id = Value(id),
        userName = Value(userName),
        name = Value(name),
        surname = Value(surname),
        emailAddress = Value(emailAddress),
        fullName = Value(fullName);
  UsersCompanion copyWith(
      {Value<int> tenantId,
      Value<int> id,
      Value<String> userName,
      Value<String> name,
      Value<String> surname,
      Value<String> emailAddress,
      Value<bool> isActive,
      Value<String> fullName,
      Value<String> mobileHash,
      Value<bool> enableOfflineLogin,
      Value<String> firebaseToken,
      Value<DateTime> creationTime,
      Value<DateTime> lastLoginTime}) {
    return UsersCompanion(
      tenantId: tenantId ?? this.tenantId,
      id: id ?? this.id,
      userName: userName ?? this.userName,
      name: name ?? this.name,
      surname: surname ?? this.surname,
      emailAddress: emailAddress ?? this.emailAddress,
      isActive: isActive ?? this.isActive,
      fullName: fullName ?? this.fullName,
      mobileHash: mobileHash ?? this.mobileHash,
      enableOfflineLogin: enableOfflineLogin ?? this.enableOfflineLogin,
      firebaseToken: firebaseToken ?? this.firebaseToken,
      creationTime: creationTime ?? this.creationTime,
      lastLoginTime: lastLoginTime ?? this.lastLoginTime,
    );
  }
}

class $UsersTable extends Users with TableInfo<$UsersTable, User> {
  final GeneratedDatabase _db;
  final String _alias;
  $UsersTable(this._db, [this._alias]);
  final VerificationMeta _tenantIdMeta = const VerificationMeta('tenantId');
  GeneratedIntColumn _tenantId;
  @override
  GeneratedIntColumn get tenantId => _tenantId ??= _constructTenantId();
  GeneratedIntColumn _constructTenantId() {
    return GeneratedIntColumn(
      'tenant_id',
      $tableName,
      true,
    );
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

  final VerificationMeta _mobileHashMeta = const VerificationMeta('mobileHash');
  GeneratedTextColumn _mobileHash;
  @override
  GeneratedTextColumn get mobileHash => _mobileHash ??= _constructMobileHash();
  GeneratedTextColumn _constructMobileHash() {
    return GeneratedTextColumn(
      'mobile_hash',
      $tableName,
      true,
    );
  }

  final VerificationMeta _enableOfflineLoginMeta =
      const VerificationMeta('enableOfflineLogin');
  GeneratedBoolColumn _enableOfflineLogin;
  @override
  GeneratedBoolColumn get enableOfflineLogin =>
      _enableOfflineLogin ??= _constructEnableOfflineLogin();
  GeneratedBoolColumn _constructEnableOfflineLogin() {
    return GeneratedBoolColumn('enable_offline_login', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _firebaseTokenMeta =
      const VerificationMeta('firebaseToken');
  GeneratedTextColumn _firebaseToken;
  @override
  GeneratedTextColumn get firebaseToken =>
      _firebaseToken ??= _constructFirebaseToken();
  GeneratedTextColumn _constructFirebaseToken() {
    return GeneratedTextColumn(
      'firebase_token',
      $tableName,
      true,
    );
  }

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

  final VerificationMeta _lastLoginTimeMeta =
      const VerificationMeta('lastLoginTime');
  GeneratedDateTimeColumn _lastLoginTime;
  @override
  GeneratedDateTimeColumn get lastLoginTime =>
      _lastLoginTime ??= _constructLastLoginTime();
  GeneratedDateTimeColumn _constructLastLoginTime() {
    return GeneratedDateTimeColumn(
      'last_login_time',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        tenantId,
        id,
        userName,
        name,
        surname,
        emailAddress,
        isActive,
        fullName,
        mobileHash,
        enableOfflineLogin,
        firebaseToken,
        creationTime,
        lastLoginTime
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
    if (d.tenantId.present) {
      context.handle(_tenantIdMeta,
          tenantId.isAcceptableValue(d.tenantId.value, _tenantIdMeta));
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
    if (d.mobileHash.present) {
      context.handle(_mobileHashMeta,
          mobileHash.isAcceptableValue(d.mobileHash.value, _mobileHashMeta));
    }
    if (d.enableOfflineLogin.present) {
      context.handle(
          _enableOfflineLoginMeta,
          enableOfflineLogin.isAcceptableValue(
              d.enableOfflineLogin.value, _enableOfflineLoginMeta));
    }
    if (d.firebaseToken.present) {
      context.handle(
          _firebaseTokenMeta,
          firebaseToken.isAcceptableValue(
              d.firebaseToken.value, _firebaseTokenMeta));
    }
    if (d.creationTime.present) {
      context.handle(
          _creationTimeMeta,
          creationTime.isAcceptableValue(
              d.creationTime.value, _creationTimeMeta));
    }
    if (d.lastLoginTime.present) {
      context.handle(
          _lastLoginTimeMeta,
          lastLoginTime.isAcceptableValue(
              d.lastLoginTime.value, _lastLoginTimeMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  User map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return User.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(UsersCompanion d) {
    final map = <String, Variable>{};
    if (d.tenantId.present) {
      map['tenant_id'] = Variable<int, IntType>(d.tenantId.value);
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
    if (d.mobileHash.present) {
      map['mobile_hash'] = Variable<String, StringType>(d.mobileHash.value);
    }
    if (d.enableOfflineLogin.present) {
      map['enable_offline_login'] =
          Variable<bool, BoolType>(d.enableOfflineLogin.value);
    }
    if (d.firebaseToken.present) {
      map['firebase_token'] =
          Variable<String, StringType>(d.firebaseToken.value);
    }
    if (d.creationTime.present) {
      map['creation_time'] =
          Variable<DateTime, DateTimeType>(d.creationTime.value);
    }
    if (d.lastLoginTime.present) {
      map['last_login_time'] =
          Variable<DateTime, DateTimeType>(d.lastLoginTime.value);
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
    this.id = const Value.absent(),
    @required String jobName,
    @required DateTime startDateTime,
    @required String syncFrequency,
    this.enableJob = const Value.absent(),
  })  : jobName = Value(jobName),
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
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
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
  Set<GeneratedColumn> get $primaryKey => {id};
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
  Set<GeneratedColumn> get $primaryKey => {id};
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

class PreferenceData extends DataClass implements Insertable<PreferenceData> {
  final int id;
  final int tenantId;
  final String code;
  final String preferenceName;
  final String value;
  final String description;
  final String domain;
  final bool isGlobal;
  final DateTime expiredDateTime;
  final DateTime creationTime;
  final String lastModifierTime;
  final String syncError;
  PreferenceData(
      {@required this.id,
      @required this.tenantId,
      @required this.code,
      this.preferenceName,
      @required this.value,
      this.description,
      this.domain,
      @required this.isGlobal,
      this.expiredDateTime,
      this.creationTime,
      this.lastModifierTime,
      this.syncError});
  factory PreferenceData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return PreferenceData(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      tenantId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}tenant_id']),
      code: stringType.mapFromDatabaseResponse(data['${effectivePrefix}code']),
      preferenceName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}preference_name']),
      value:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}value']),
      description: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      domain:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}domain']),
      isGlobal:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}is_global']),
      expiredDateTime: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}expired_date_time']),
      creationTime: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}creation_time']),
      lastModifierTime: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}last_modifier_time']),
      syncError: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}sync_error']),
    );
  }
  factory PreferenceData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return PreferenceData(
      id: serializer.fromJson<int>(json['id']),
      tenantId: serializer.fromJson<int>(json['tenantId']),
      code: serializer.fromJson<String>(json['code']),
      preferenceName: serializer.fromJson<String>(json['preferenceName']),
      value: serializer.fromJson<String>(json['value']),
      description: serializer.fromJson<String>(json['description']),
      domain: serializer.fromJson<String>(json['domain']),
      isGlobal: serializer.fromJson<bool>(json['isGlobal']),
      expiredDateTime: serializer.fromJson<DateTime>(json['expiredDateTime']),
      creationTime: serializer.fromJson<DateTime>(json['creationTime']),
      lastModifierTime: serializer.fromJson<String>(json['lastModifierTime']),
      syncError: serializer.fromJson<String>(json['syncError']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'tenantId': serializer.toJson<int>(tenantId),
      'code': serializer.toJson<String>(code),
      'preferenceName': serializer.toJson<String>(preferenceName),
      'value': serializer.toJson<String>(value),
      'description': serializer.toJson<String>(description),
      'domain': serializer.toJson<String>(domain),
      'isGlobal': serializer.toJson<bool>(isGlobal),
      'expiredDateTime': serializer.toJson<DateTime>(expiredDateTime),
      'creationTime': serializer.toJson<DateTime>(creationTime),
      'lastModifierTime': serializer.toJson<String>(lastModifierTime),
      'syncError': serializer.toJson<String>(syncError),
    };
  }

  @override
  PreferenceCompanion createCompanion(bool nullToAbsent) {
    return PreferenceCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      tenantId: tenantId == null && nullToAbsent
          ? const Value.absent()
          : Value(tenantId),
      code: code == null && nullToAbsent ? const Value.absent() : Value(code),
      preferenceName: preferenceName == null && nullToAbsent
          ? const Value.absent()
          : Value(preferenceName),
      value:
          value == null && nullToAbsent ? const Value.absent() : Value(value),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      domain:
          domain == null && nullToAbsent ? const Value.absent() : Value(domain),
      isGlobal: isGlobal == null && nullToAbsent
          ? const Value.absent()
          : Value(isGlobal),
      expiredDateTime: expiredDateTime == null && nullToAbsent
          ? const Value.absent()
          : Value(expiredDateTime),
      creationTime: creationTime == null && nullToAbsent
          ? const Value.absent()
          : Value(creationTime),
      lastModifierTime: lastModifierTime == null && nullToAbsent
          ? const Value.absent()
          : Value(lastModifierTime),
      syncError: syncError == null && nullToAbsent
          ? const Value.absent()
          : Value(syncError),
    );
  }

  PreferenceData copyWith(
          {int id,
          int tenantId,
          String code,
          String preferenceName,
          String value,
          String description,
          String domain,
          bool isGlobal,
          DateTime expiredDateTime,
          DateTime creationTime,
          String lastModifierTime,
          String syncError}) =>
      PreferenceData(
        id: id ?? this.id,
        tenantId: tenantId ?? this.tenantId,
        code: code ?? this.code,
        preferenceName: preferenceName ?? this.preferenceName,
        value: value ?? this.value,
        description: description ?? this.description,
        domain: domain ?? this.domain,
        isGlobal: isGlobal ?? this.isGlobal,
        expiredDateTime: expiredDateTime ?? this.expiredDateTime,
        creationTime: creationTime ?? this.creationTime,
        lastModifierTime: lastModifierTime ?? this.lastModifierTime,
        syncError: syncError ?? this.syncError,
      );
  @override
  String toString() {
    return (StringBuffer('PreferenceData(')
          ..write('id: $id, ')
          ..write('tenantId: $tenantId, ')
          ..write('code: $code, ')
          ..write('preferenceName: $preferenceName, ')
          ..write('value: $value, ')
          ..write('description: $description, ')
          ..write('domain: $domain, ')
          ..write('isGlobal: $isGlobal, ')
          ..write('expiredDateTime: $expiredDateTime, ')
          ..write('creationTime: $creationTime, ')
          ..write('lastModifierTime: $lastModifierTime, ')
          ..write('syncError: $syncError')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          tenantId.hashCode,
          $mrjc(
              code.hashCode,
              $mrjc(
                  preferenceName.hashCode,
                  $mrjc(
                      value.hashCode,
                      $mrjc(
                          description.hashCode,
                          $mrjc(
                              domain.hashCode,
                              $mrjc(
                                  isGlobal.hashCode,
                                  $mrjc(
                                      expiredDateTime.hashCode,
                                      $mrjc(
                                          creationTime.hashCode,
                                          $mrjc(lastModifierTime.hashCode,
                                              syncError.hashCode))))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is PreferenceData &&
          other.id == this.id &&
          other.tenantId == this.tenantId &&
          other.code == this.code &&
          other.preferenceName == this.preferenceName &&
          other.value == this.value &&
          other.description == this.description &&
          other.domain == this.domain &&
          other.isGlobal == this.isGlobal &&
          other.expiredDateTime == this.expiredDateTime &&
          other.creationTime == this.creationTime &&
          other.lastModifierTime == this.lastModifierTime &&
          other.syncError == this.syncError);
}

class PreferenceCompanion extends UpdateCompanion<PreferenceData> {
  final Value<int> id;
  final Value<int> tenantId;
  final Value<String> code;
  final Value<String> preferenceName;
  final Value<String> value;
  final Value<String> description;
  final Value<String> domain;
  final Value<bool> isGlobal;
  final Value<DateTime> expiredDateTime;
  final Value<DateTime> creationTime;
  final Value<String> lastModifierTime;
  final Value<String> syncError;
  const PreferenceCompanion({
    this.id = const Value.absent(),
    this.tenantId = const Value.absent(),
    this.code = const Value.absent(),
    this.preferenceName = const Value.absent(),
    this.value = const Value.absent(),
    this.description = const Value.absent(),
    this.domain = const Value.absent(),
    this.isGlobal = const Value.absent(),
    this.expiredDateTime = const Value.absent(),
    this.creationTime = const Value.absent(),
    this.lastModifierTime = const Value.absent(),
    this.syncError = const Value.absent(),
  });
  PreferenceCompanion.insert({
    this.id = const Value.absent(),
    @required int tenantId,
    @required String code,
    this.preferenceName = const Value.absent(),
    @required String value,
    this.description = const Value.absent(),
    this.domain = const Value.absent(),
    this.isGlobal = const Value.absent(),
    this.expiredDateTime = const Value.absent(),
    this.creationTime = const Value.absent(),
    this.lastModifierTime = const Value.absent(),
    this.syncError = const Value.absent(),
  })  : tenantId = Value(tenantId),
        code = Value(code),
        value = Value(value);
  PreferenceCompanion copyWith(
      {Value<int> id,
      Value<int> tenantId,
      Value<String> code,
      Value<String> preferenceName,
      Value<String> value,
      Value<String> description,
      Value<String> domain,
      Value<bool> isGlobal,
      Value<DateTime> expiredDateTime,
      Value<DateTime> creationTime,
      Value<String> lastModifierTime,
      Value<String> syncError}) {
    return PreferenceCompanion(
      id: id ?? this.id,
      tenantId: tenantId ?? this.tenantId,
      code: code ?? this.code,
      preferenceName: preferenceName ?? this.preferenceName,
      value: value ?? this.value,
      description: description ?? this.description,
      domain: domain ?? this.domain,
      isGlobal: isGlobal ?? this.isGlobal,
      expiredDateTime: expiredDateTime ?? this.expiredDateTime,
      creationTime: creationTime ?? this.creationTime,
      lastModifierTime: lastModifierTime ?? this.lastModifierTime,
      syncError: syncError ?? this.syncError,
    );
  }
}

class $PreferenceTable extends Preference
    with TableInfo<$PreferenceTable, PreferenceData> {
  final GeneratedDatabase _db;
  final String _alias;
  $PreferenceTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _tenantIdMeta = const VerificationMeta('tenantId');
  GeneratedIntColumn _tenantId;
  @override
  GeneratedIntColumn get tenantId => _tenantId ??= _constructTenantId();
  GeneratedIntColumn _constructTenantId() {
    return GeneratedIntColumn(
      'tenant_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _codeMeta = const VerificationMeta('code');
  GeneratedTextColumn _code;
  @override
  GeneratedTextColumn get code => _code ??= _constructCode();
  GeneratedTextColumn _constructCode() {
    return GeneratedTextColumn(
      'code',
      $tableName,
      false,
    );
  }

  final VerificationMeta _preferenceNameMeta =
      const VerificationMeta('preferenceName');
  GeneratedTextColumn _preferenceName;
  @override
  GeneratedTextColumn get preferenceName =>
      _preferenceName ??= _constructPreferenceName();
  GeneratedTextColumn _constructPreferenceName() {
    return GeneratedTextColumn(
      'preference_name',
      $tableName,
      true,
    );
  }

  final VerificationMeta _valueMeta = const VerificationMeta('value');
  GeneratedTextColumn _value;
  @override
  GeneratedTextColumn get value => _value ??= _constructValue();
  GeneratedTextColumn _constructValue() {
    return GeneratedTextColumn(
      'value',
      $tableName,
      false,
    );
  }

  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  GeneratedTextColumn _description;
  @override
  GeneratedTextColumn get description =>
      _description ??= _constructDescription();
  GeneratedTextColumn _constructDescription() {
    return GeneratedTextColumn(
      'description',
      $tableName,
      true,
    );
  }

  final VerificationMeta _domainMeta = const VerificationMeta('domain');
  GeneratedTextColumn _domain;
  @override
  GeneratedTextColumn get domain => _domain ??= _constructDomain();
  GeneratedTextColumn _constructDomain() {
    return GeneratedTextColumn(
      'domain',
      $tableName,
      true,
    );
  }

  final VerificationMeta _isGlobalMeta = const VerificationMeta('isGlobal');
  GeneratedBoolColumn _isGlobal;
  @override
  GeneratedBoolColumn get isGlobal => _isGlobal ??= _constructIsGlobal();
  GeneratedBoolColumn _constructIsGlobal() {
    return GeneratedBoolColumn('is_global', $tableName, false,
        defaultValue: Constant(true));
  }

  final VerificationMeta _expiredDateTimeMeta =
      const VerificationMeta('expiredDateTime');
  GeneratedDateTimeColumn _expiredDateTime;
  @override
  GeneratedDateTimeColumn get expiredDateTime =>
      _expiredDateTime ??= _constructExpiredDateTime();
  GeneratedDateTimeColumn _constructExpiredDateTime() {
    return GeneratedDateTimeColumn(
      'expired_date_time',
      $tableName,
      true,
    );
  }

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

  final VerificationMeta _lastModifierTimeMeta =
      const VerificationMeta('lastModifierTime');
  GeneratedTextColumn _lastModifierTime;
  @override
  GeneratedTextColumn get lastModifierTime =>
      _lastModifierTime ??= _constructLastModifierTime();
  GeneratedTextColumn _constructLastModifierTime() {
    return GeneratedTextColumn(
      'last_modifier_time',
      $tableName,
      true,
    );
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

  @override
  List<GeneratedColumn> get $columns => [
        id,
        tenantId,
        code,
        preferenceName,
        value,
        description,
        domain,
        isGlobal,
        expiredDateTime,
        creationTime,
        lastModifierTime,
        syncError
      ];
  @override
  $PreferenceTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'preference';
  @override
  final String actualTableName = 'preference';
  @override
  VerificationContext validateIntegrity(PreferenceCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    }
    if (d.tenantId.present) {
      context.handle(_tenantIdMeta,
          tenantId.isAcceptableValue(d.tenantId.value, _tenantIdMeta));
    } else if (isInserting) {
      context.missing(_tenantIdMeta);
    }
    if (d.code.present) {
      context.handle(
          _codeMeta, code.isAcceptableValue(d.code.value, _codeMeta));
    } else if (isInserting) {
      context.missing(_codeMeta);
    }
    if (d.preferenceName.present) {
      context.handle(
          _preferenceNameMeta,
          preferenceName.isAcceptableValue(
              d.preferenceName.value, _preferenceNameMeta));
    }
    if (d.value.present) {
      context.handle(
          _valueMeta, value.isAcceptableValue(d.value.value, _valueMeta));
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    if (d.description.present) {
      context.handle(_descriptionMeta,
          description.isAcceptableValue(d.description.value, _descriptionMeta));
    }
    if (d.domain.present) {
      context.handle(
          _domainMeta, domain.isAcceptableValue(d.domain.value, _domainMeta));
    }
    if (d.isGlobal.present) {
      context.handle(_isGlobalMeta,
          isGlobal.isAcceptableValue(d.isGlobal.value, _isGlobalMeta));
    }
    if (d.expiredDateTime.present) {
      context.handle(
          _expiredDateTimeMeta,
          expiredDateTime.isAcceptableValue(
              d.expiredDateTime.value, _expiredDateTimeMeta));
    }
    if (d.creationTime.present) {
      context.handle(
          _creationTimeMeta,
          creationTime.isAcceptableValue(
              d.creationTime.value, _creationTimeMeta));
    }
    if (d.lastModifierTime.present) {
      context.handle(
          _lastModifierTimeMeta,
          lastModifierTime.isAcceptableValue(
              d.lastModifierTime.value, _lastModifierTimeMeta));
    }
    if (d.syncError.present) {
      context.handle(_syncErrorMeta,
          syncError.isAcceptableValue(d.syncError.value, _syncErrorMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PreferenceData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return PreferenceData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(PreferenceCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.tenantId.present) {
      map['tenant_id'] = Variable<int, IntType>(d.tenantId.value);
    }
    if (d.code.present) {
      map['code'] = Variable<String, StringType>(d.code.value);
    }
    if (d.preferenceName.present) {
      map['preference_name'] =
          Variable<String, StringType>(d.preferenceName.value);
    }
    if (d.value.present) {
      map['value'] = Variable<String, StringType>(d.value.value);
    }
    if (d.description.present) {
      map['description'] = Variable<String, StringType>(d.description.value);
    }
    if (d.domain.present) {
      map['domain'] = Variable<String, StringType>(d.domain.value);
    }
    if (d.isGlobal.present) {
      map['is_global'] = Variable<bool, BoolType>(d.isGlobal.value);
    }
    if (d.expiredDateTime.present) {
      map['expired_date_time'] =
          Variable<DateTime, DateTimeType>(d.expiredDateTime.value);
    }
    if (d.creationTime.present) {
      map['creation_time'] =
          Variable<DateTime, DateTimeType>(d.creationTime.value);
    }
    if (d.lastModifierTime.present) {
      map['last_modifier_time'] =
          Variable<String, StringType>(d.lastModifierTime.value);
    }
    if (d.syncError.present) {
      map['sync_error'] = Variable<String, StringType>(d.syncError.value);
    }
    return map;
  }

  @override
  $PreferenceTable createAlias(String alias) {
    return $PreferenceTable(_db, alias);
  }
}

class MobileDeviceData extends DataClass
    implements Insertable<MobileDeviceData> {
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
  final String deviceId;
  final String deviceName;
  final String versionRelease;
  final String versionEnvrement;
  final String bootLoader;
  final String manufacture;
  final String model;
  final int sdkNumber;
  final String hardware;
  final String deviceHost;
  final DateTime deviceTime;
  final String deviceSerial;
  final String deviceMac;
  final String deviceIp;
  final String deviceMode;
  final DateTime activationDate;
  final DateTime expirationDate;
  final int deviceStatus;
  final String companyName;
  final String deviceNickName;
  final double latitude;
  final double longitude;
  MobileDeviceData(
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
      this.deviceId,
      this.deviceName,
      this.versionRelease,
      this.versionEnvrement,
      this.bootLoader,
      this.manufacture,
      this.model,
      this.sdkNumber,
      this.hardware,
      this.deviceHost,
      this.deviceTime,
      this.deviceSerial,
      this.deviceMac,
      this.deviceIp,
      this.deviceMode,
      this.activationDate,
      this.expirationDate,
      this.deviceStatus,
      this.companyName,
      this.deviceNickName,
      this.latitude,
      this.longitude});
  factory MobileDeviceData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    final doubleType = db.typeSystem.forDartType<double>();
    return MobileDeviceData(
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
      deviceId: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}device_id']),
      deviceName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}device_name']),
      versionRelease: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}version_release']),
      versionEnvrement: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}version_envrement']),
      bootLoader: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}boot_loader']),
      manufacture: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}manufacture']),
      model:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}model']),
      sdkNumber:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}sdk_number']),
      hardware: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}hardware']),
      deviceHost: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}device_host']),
      deviceTime: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}device_time']),
      deviceSerial: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}device_serial']),
      deviceMac: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}device_mac']),
      deviceIp: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}device_ip']),
      deviceMode: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}device_mode']),
      activationDate: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}activation_date']),
      expirationDate: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}expiration_date']),
      deviceStatus: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}device_status']),
      companyName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}company_name']),
      deviceNickName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}device_nick_name']),
      latitude: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}latitude']),
      longitude: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}longitude']),
    );
  }
  factory MobileDeviceData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return MobileDeviceData(
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
      deviceId: serializer.fromJson<String>(json['deviceId']),
      deviceName: serializer.fromJson<String>(json['deviceName']),
      versionRelease: serializer.fromJson<String>(json['versionRelease']),
      versionEnvrement: serializer.fromJson<String>(json['versionEnvrement']),
      bootLoader: serializer.fromJson<String>(json['bootLoader']),
      manufacture: serializer.fromJson<String>(json['manufacture']),
      model: serializer.fromJson<String>(json['model']),
      sdkNumber: serializer.fromJson<int>(json['sdkNumber']),
      hardware: serializer.fromJson<String>(json['hardware']),
      deviceHost: serializer.fromJson<String>(json['deviceHost']),
      deviceTime: serializer.fromJson<DateTime>(json['deviceTime']),
      deviceSerial: serializer.fromJson<String>(json['deviceSerial']),
      deviceMac: serializer.fromJson<String>(json['deviceMac']),
      deviceIp: serializer.fromJson<String>(json['deviceIp']),
      deviceMode: serializer.fromJson<String>(json['deviceMode']),
      activationDate: serializer.fromJson<DateTime>(json['activationDate']),
      expirationDate: serializer.fromJson<DateTime>(json['expirationDate']),
      deviceStatus: serializer.fromJson<int>(json['deviceStatus']),
      companyName: serializer.fromJson<String>(json['companyName']),
      deviceNickName: serializer.fromJson<String>(json['deviceNickName']),
      latitude: serializer.fromJson<double>(json['latitude']),
      longitude: serializer.fromJson<double>(json['longitude']),
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
      'deviceId': serializer.toJson<String>(deviceId),
      'deviceName': serializer.toJson<String>(deviceName),
      'versionRelease': serializer.toJson<String>(versionRelease),
      'versionEnvrement': serializer.toJson<String>(versionEnvrement),
      'bootLoader': serializer.toJson<String>(bootLoader),
      'manufacture': serializer.toJson<String>(manufacture),
      'model': serializer.toJson<String>(model),
      'sdkNumber': serializer.toJson<int>(sdkNumber),
      'hardware': serializer.toJson<String>(hardware),
      'deviceHost': serializer.toJson<String>(deviceHost),
      'deviceTime': serializer.toJson<DateTime>(deviceTime),
      'deviceSerial': serializer.toJson<String>(deviceSerial),
      'deviceMac': serializer.toJson<String>(deviceMac),
      'deviceIp': serializer.toJson<String>(deviceIp),
      'deviceMode': serializer.toJson<String>(deviceMode),
      'activationDate': serializer.toJson<DateTime>(activationDate),
      'expirationDate': serializer.toJson<DateTime>(expirationDate),
      'deviceStatus': serializer.toJson<int>(deviceStatus),
      'companyName': serializer.toJson<String>(companyName),
      'deviceNickName': serializer.toJson<String>(deviceNickName),
      'latitude': serializer.toJson<double>(latitude),
      'longitude': serializer.toJson<double>(longitude),
    };
  }

  @override
  MobileDeviceCompanion createCompanion(bool nullToAbsent) {
    return MobileDeviceCompanion(
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
      deviceId: deviceId == null && nullToAbsent
          ? const Value.absent()
          : Value(deviceId),
      deviceName: deviceName == null && nullToAbsent
          ? const Value.absent()
          : Value(deviceName),
      versionRelease: versionRelease == null && nullToAbsent
          ? const Value.absent()
          : Value(versionRelease),
      versionEnvrement: versionEnvrement == null && nullToAbsent
          ? const Value.absent()
          : Value(versionEnvrement),
      bootLoader: bootLoader == null && nullToAbsent
          ? const Value.absent()
          : Value(bootLoader),
      manufacture: manufacture == null && nullToAbsent
          ? const Value.absent()
          : Value(manufacture),
      model:
          model == null && nullToAbsent ? const Value.absent() : Value(model),
      sdkNumber: sdkNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(sdkNumber),
      hardware: hardware == null && nullToAbsent
          ? const Value.absent()
          : Value(hardware),
      deviceHost: deviceHost == null && nullToAbsent
          ? const Value.absent()
          : Value(deviceHost),
      deviceTime: deviceTime == null && nullToAbsent
          ? const Value.absent()
          : Value(deviceTime),
      deviceSerial: deviceSerial == null && nullToAbsent
          ? const Value.absent()
          : Value(deviceSerial),
      deviceMac: deviceMac == null && nullToAbsent
          ? const Value.absent()
          : Value(deviceMac),
      deviceIp: deviceIp == null && nullToAbsent
          ? const Value.absent()
          : Value(deviceIp),
      deviceMode: deviceMode == null && nullToAbsent
          ? const Value.absent()
          : Value(deviceMode),
      activationDate: activationDate == null && nullToAbsent
          ? const Value.absent()
          : Value(activationDate),
      expirationDate: expirationDate == null && nullToAbsent
          ? const Value.absent()
          : Value(expirationDate),
      deviceStatus: deviceStatus == null && nullToAbsent
          ? const Value.absent()
          : Value(deviceStatus),
      companyName: companyName == null && nullToAbsent
          ? const Value.absent()
          : Value(companyName),
      deviceNickName: deviceNickName == null && nullToAbsent
          ? const Value.absent()
          : Value(deviceNickName),
      latitude: latitude == null && nullToAbsent
          ? const Value.absent()
          : Value(latitude),
      longitude: longitude == null && nullToAbsent
          ? const Value.absent()
          : Value(longitude),
    );
  }

  MobileDeviceData copyWith(
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
          String deviceId,
          String deviceName,
          String versionRelease,
          String versionEnvrement,
          String bootLoader,
          String manufacture,
          String model,
          int sdkNumber,
          String hardware,
          String deviceHost,
          DateTime deviceTime,
          String deviceSerial,
          String deviceMac,
          String deviceIp,
          String deviceMode,
          DateTime activationDate,
          DateTime expirationDate,
          int deviceStatus,
          String companyName,
          String deviceNickName,
          double latitude,
          double longitude}) =>
      MobileDeviceData(
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
        deviceId: deviceId ?? this.deviceId,
        deviceName: deviceName ?? this.deviceName,
        versionRelease: versionRelease ?? this.versionRelease,
        versionEnvrement: versionEnvrement ?? this.versionEnvrement,
        bootLoader: bootLoader ?? this.bootLoader,
        manufacture: manufacture ?? this.manufacture,
        model: model ?? this.model,
        sdkNumber: sdkNumber ?? this.sdkNumber,
        hardware: hardware ?? this.hardware,
        deviceHost: deviceHost ?? this.deviceHost,
        deviceTime: deviceTime ?? this.deviceTime,
        deviceSerial: deviceSerial ?? this.deviceSerial,
        deviceMac: deviceMac ?? this.deviceMac,
        deviceIp: deviceIp ?? this.deviceIp,
        deviceMode: deviceMode ?? this.deviceMode,
        activationDate: activationDate ?? this.activationDate,
        expirationDate: expirationDate ?? this.expirationDate,
        deviceStatus: deviceStatus ?? this.deviceStatus,
        companyName: companyName ?? this.companyName,
        deviceNickName: deviceNickName ?? this.deviceNickName,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
      );
  @override
  String toString() {
    return (StringBuffer('MobileDeviceData(')
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
          ..write('deviceId: $deviceId, ')
          ..write('deviceName: $deviceName, ')
          ..write('versionRelease: $versionRelease, ')
          ..write('versionEnvrement: $versionEnvrement, ')
          ..write('bootLoader: $bootLoader, ')
          ..write('manufacture: $manufacture, ')
          ..write('model: $model, ')
          ..write('sdkNumber: $sdkNumber, ')
          ..write('hardware: $hardware, ')
          ..write('deviceHost: $deviceHost, ')
          ..write('deviceTime: $deviceTime, ')
          ..write('deviceSerial: $deviceSerial, ')
          ..write('deviceMac: $deviceMac, ')
          ..write('deviceIp: $deviceIp, ')
          ..write('deviceMode: $deviceMode, ')
          ..write('activationDate: $activationDate, ')
          ..write('expirationDate: $expirationDate, ')
          ..write('deviceStatus: $deviceStatus, ')
          ..write('companyName: $companyName, ')
          ..write('deviceNickName: $deviceNickName, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude')
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
                                                              deviceId.hashCode,
                                                              $mrjc(
                                                                  deviceName
                                                                      .hashCode,
                                                                  $mrjc(
                                                                      versionRelease
                                                                          .hashCode,
                                                                      $mrjc(
                                                                          versionEnvrement
                                                                              .hashCode,
                                                                          $mrjc(
                                                                              bootLoader.hashCode,
                                                                              $mrjc(manufacture.hashCode, $mrjc(model.hashCode, $mrjc(sdkNumber.hashCode, $mrjc(hardware.hashCode, $mrjc(deviceHost.hashCode, $mrjc(deviceTime.hashCode, $mrjc(deviceSerial.hashCode, $mrjc(deviceMac.hashCode, $mrjc(deviceIp.hashCode, $mrjc(deviceMode.hashCode, $mrjc(activationDate.hashCode, $mrjc(expirationDate.hashCode, $mrjc(deviceStatus.hashCode, $mrjc(companyName.hashCode, $mrjc(deviceNickName.hashCode, $mrjc(latitude.hashCode, longitude.hashCode))))))))))))))))))))))))))))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is MobileDeviceData &&
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
          other.deviceId == this.deviceId &&
          other.deviceName == this.deviceName &&
          other.versionRelease == this.versionRelease &&
          other.versionEnvrement == this.versionEnvrement &&
          other.bootLoader == this.bootLoader &&
          other.manufacture == this.manufacture &&
          other.model == this.model &&
          other.sdkNumber == this.sdkNumber &&
          other.hardware == this.hardware &&
          other.deviceHost == this.deviceHost &&
          other.deviceTime == this.deviceTime &&
          other.deviceSerial == this.deviceSerial &&
          other.deviceMac == this.deviceMac &&
          other.deviceIp == this.deviceIp &&
          other.deviceMode == this.deviceMode &&
          other.activationDate == this.activationDate &&
          other.expirationDate == this.expirationDate &&
          other.deviceStatus == this.deviceStatus &&
          other.companyName == this.companyName &&
          other.deviceNickName == this.deviceNickName &&
          other.latitude == this.latitude &&
          other.longitude == this.longitude);
}

class MobileDeviceCompanion extends UpdateCompanion<MobileDeviceData> {
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
  final Value<String> deviceId;
  final Value<String> deviceName;
  final Value<String> versionRelease;
  final Value<String> versionEnvrement;
  final Value<String> bootLoader;
  final Value<String> manufacture;
  final Value<String> model;
  final Value<int> sdkNumber;
  final Value<String> hardware;
  final Value<String> deviceHost;
  final Value<DateTime> deviceTime;
  final Value<String> deviceSerial;
  final Value<String> deviceMac;
  final Value<String> deviceIp;
  final Value<String> deviceMode;
  final Value<DateTime> activationDate;
  final Value<DateTime> expirationDate;
  final Value<int> deviceStatus;
  final Value<String> companyName;
  final Value<String> deviceNickName;
  final Value<double> latitude;
  final Value<double> longitude;
  const MobileDeviceCompanion({
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
    this.deviceId = const Value.absent(),
    this.deviceName = const Value.absent(),
    this.versionRelease = const Value.absent(),
    this.versionEnvrement = const Value.absent(),
    this.bootLoader = const Value.absent(),
    this.manufacture = const Value.absent(),
    this.model = const Value.absent(),
    this.sdkNumber = const Value.absent(),
    this.hardware = const Value.absent(),
    this.deviceHost = const Value.absent(),
    this.deviceTime = const Value.absent(),
    this.deviceSerial = const Value.absent(),
    this.deviceMac = const Value.absent(),
    this.deviceIp = const Value.absent(),
    this.deviceMode = const Value.absent(),
    this.activationDate = const Value.absent(),
    this.expirationDate = const Value.absent(),
    this.deviceStatus = const Value.absent(),
    this.companyName = const Value.absent(),
    this.deviceNickName = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
  });
  MobileDeviceCompanion.insert({
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
    this.deviceId = const Value.absent(),
    this.deviceName = const Value.absent(),
    this.versionRelease = const Value.absent(),
    this.versionEnvrement = const Value.absent(),
    this.bootLoader = const Value.absent(),
    this.manufacture = const Value.absent(),
    this.model = const Value.absent(),
    this.sdkNumber = const Value.absent(),
    this.hardware = const Value.absent(),
    this.deviceHost = const Value.absent(),
    this.deviceTime = const Value.absent(),
    this.deviceSerial = const Value.absent(),
    this.deviceMac = const Value.absent(),
    this.deviceIp = const Value.absent(),
    this.deviceMode = const Value.absent(),
    this.activationDate = const Value.absent(),
    this.expirationDate = const Value.absent(),
    this.deviceStatus = const Value.absent(),
    this.companyName = const Value.absent(),
    this.deviceNickName = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
  });
  MobileDeviceCompanion copyWith(
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
      Value<String> deviceId,
      Value<String> deviceName,
      Value<String> versionRelease,
      Value<String> versionEnvrement,
      Value<String> bootLoader,
      Value<String> manufacture,
      Value<String> model,
      Value<int> sdkNumber,
      Value<String> hardware,
      Value<String> deviceHost,
      Value<DateTime> deviceTime,
      Value<String> deviceSerial,
      Value<String> deviceMac,
      Value<String> deviceIp,
      Value<String> deviceMode,
      Value<DateTime> activationDate,
      Value<DateTime> expirationDate,
      Value<int> deviceStatus,
      Value<String> companyName,
      Value<String> deviceNickName,
      Value<double> latitude,
      Value<double> longitude}) {
    return MobileDeviceCompanion(
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
      deviceId: deviceId ?? this.deviceId,
      deviceName: deviceName ?? this.deviceName,
      versionRelease: versionRelease ?? this.versionRelease,
      versionEnvrement: versionEnvrement ?? this.versionEnvrement,
      bootLoader: bootLoader ?? this.bootLoader,
      manufacture: manufacture ?? this.manufacture,
      model: model ?? this.model,
      sdkNumber: sdkNumber ?? this.sdkNumber,
      hardware: hardware ?? this.hardware,
      deviceHost: deviceHost ?? this.deviceHost,
      deviceTime: deviceTime ?? this.deviceTime,
      deviceSerial: deviceSerial ?? this.deviceSerial,
      deviceMac: deviceMac ?? this.deviceMac,
      deviceIp: deviceIp ?? this.deviceIp,
      deviceMode: deviceMode ?? this.deviceMode,
      activationDate: activationDate ?? this.activationDate,
      expirationDate: expirationDate ?? this.expirationDate,
      deviceStatus: deviceStatus ?? this.deviceStatus,
      companyName: companyName ?? this.companyName,
      deviceNickName: deviceNickName ?? this.deviceNickName,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
    );
  }
}

class $MobileDeviceTable extends MobileDevice
    with TableInfo<$MobileDeviceTable, MobileDeviceData> {
  final GeneratedDatabase _db;
  final String _alias;
  $MobileDeviceTable(this._db, [this._alias]);
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

  final VerificationMeta _deviceIdMeta = const VerificationMeta('deviceId');
  GeneratedTextColumn _deviceId;
  @override
  GeneratedTextColumn get deviceId => _deviceId ??= _constructDeviceId();
  GeneratedTextColumn _constructDeviceId() {
    return GeneratedTextColumn(
      'device_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _deviceNameMeta = const VerificationMeta('deviceName');
  GeneratedTextColumn _deviceName;
  @override
  GeneratedTextColumn get deviceName => _deviceName ??= _constructDeviceName();
  GeneratedTextColumn _constructDeviceName() {
    return GeneratedTextColumn(
      'device_name',
      $tableName,
      true,
    );
  }

  final VerificationMeta _versionReleaseMeta =
      const VerificationMeta('versionRelease');
  GeneratedTextColumn _versionRelease;
  @override
  GeneratedTextColumn get versionRelease =>
      _versionRelease ??= _constructVersionRelease();
  GeneratedTextColumn _constructVersionRelease() {
    return GeneratedTextColumn(
      'version_release',
      $tableName,
      true,
    );
  }

  final VerificationMeta _versionEnvrementMeta =
      const VerificationMeta('versionEnvrement');
  GeneratedTextColumn _versionEnvrement;
  @override
  GeneratedTextColumn get versionEnvrement =>
      _versionEnvrement ??= _constructVersionEnvrement();
  GeneratedTextColumn _constructVersionEnvrement() {
    return GeneratedTextColumn(
      'version_envrement',
      $tableName,
      true,
    );
  }

  final VerificationMeta _bootLoaderMeta = const VerificationMeta('bootLoader');
  GeneratedTextColumn _bootLoader;
  @override
  GeneratedTextColumn get bootLoader => _bootLoader ??= _constructBootLoader();
  GeneratedTextColumn _constructBootLoader() {
    return GeneratedTextColumn(
      'boot_loader',
      $tableName,
      true,
    );
  }

  final VerificationMeta _manufactureMeta =
      const VerificationMeta('manufacture');
  GeneratedTextColumn _manufacture;
  @override
  GeneratedTextColumn get manufacture =>
      _manufacture ??= _constructManufacture();
  GeneratedTextColumn _constructManufacture() {
    return GeneratedTextColumn(
      'manufacture',
      $tableName,
      true,
    );
  }

  final VerificationMeta _modelMeta = const VerificationMeta('model');
  GeneratedTextColumn _model;
  @override
  GeneratedTextColumn get model => _model ??= _constructModel();
  GeneratedTextColumn _constructModel() {
    return GeneratedTextColumn(
      'model',
      $tableName,
      true,
    );
  }

  final VerificationMeta _sdkNumberMeta = const VerificationMeta('sdkNumber');
  GeneratedIntColumn _sdkNumber;
  @override
  GeneratedIntColumn get sdkNumber => _sdkNumber ??= _constructSdkNumber();
  GeneratedIntColumn _constructSdkNumber() {
    return GeneratedIntColumn(
      'sdk_number',
      $tableName,
      true,
    );
  }

  final VerificationMeta _hardwareMeta = const VerificationMeta('hardware');
  GeneratedTextColumn _hardware;
  @override
  GeneratedTextColumn get hardware => _hardware ??= _constructHardware();
  GeneratedTextColumn _constructHardware() {
    return GeneratedTextColumn(
      'hardware',
      $tableName,
      true,
    );
  }

  final VerificationMeta _deviceHostMeta = const VerificationMeta('deviceHost');
  GeneratedTextColumn _deviceHost;
  @override
  GeneratedTextColumn get deviceHost => _deviceHost ??= _constructDeviceHost();
  GeneratedTextColumn _constructDeviceHost() {
    return GeneratedTextColumn(
      'device_host',
      $tableName,
      true,
    );
  }

  final VerificationMeta _deviceTimeMeta = const VerificationMeta('deviceTime');
  GeneratedDateTimeColumn _deviceTime;
  @override
  GeneratedDateTimeColumn get deviceTime =>
      _deviceTime ??= _constructDeviceTime();
  GeneratedDateTimeColumn _constructDeviceTime() {
    return GeneratedDateTimeColumn(
      'device_time',
      $tableName,
      true,
    );
  }

  final VerificationMeta _deviceSerialMeta =
      const VerificationMeta('deviceSerial');
  GeneratedTextColumn _deviceSerial;
  @override
  GeneratedTextColumn get deviceSerial =>
      _deviceSerial ??= _constructDeviceSerial();
  GeneratedTextColumn _constructDeviceSerial() {
    return GeneratedTextColumn(
      'device_serial',
      $tableName,
      true,
    );
  }

  final VerificationMeta _deviceMacMeta = const VerificationMeta('deviceMac');
  GeneratedTextColumn _deviceMac;
  @override
  GeneratedTextColumn get deviceMac => _deviceMac ??= _constructDeviceMac();
  GeneratedTextColumn _constructDeviceMac() {
    return GeneratedTextColumn(
      'device_mac',
      $tableName,
      true,
    );
  }

  final VerificationMeta _deviceIpMeta = const VerificationMeta('deviceIp');
  GeneratedTextColumn _deviceIp;
  @override
  GeneratedTextColumn get deviceIp => _deviceIp ??= _constructDeviceIp();
  GeneratedTextColumn _constructDeviceIp() {
    return GeneratedTextColumn(
      'device_ip',
      $tableName,
      true,
    );
  }

  final VerificationMeta _deviceModeMeta = const VerificationMeta('deviceMode');
  GeneratedTextColumn _deviceMode;
  @override
  GeneratedTextColumn get deviceMode => _deviceMode ??= _constructDeviceMode();
  GeneratedTextColumn _constructDeviceMode() {
    return GeneratedTextColumn(
      'device_mode',
      $tableName,
      true,
    );
  }

  final VerificationMeta _activationDateMeta =
      const VerificationMeta('activationDate');
  GeneratedDateTimeColumn _activationDate;
  @override
  GeneratedDateTimeColumn get activationDate =>
      _activationDate ??= _constructActivationDate();
  GeneratedDateTimeColumn _constructActivationDate() {
    return GeneratedDateTimeColumn(
      'activation_date',
      $tableName,
      true,
    );
  }

  final VerificationMeta _expirationDateMeta =
      const VerificationMeta('expirationDate');
  GeneratedDateTimeColumn _expirationDate;
  @override
  GeneratedDateTimeColumn get expirationDate =>
      _expirationDate ??= _constructExpirationDate();
  GeneratedDateTimeColumn _constructExpirationDate() {
    return GeneratedDateTimeColumn(
      'expiration_date',
      $tableName,
      true,
    );
  }

  final VerificationMeta _deviceStatusMeta =
      const VerificationMeta('deviceStatus');
  GeneratedIntColumn _deviceStatus;
  @override
  GeneratedIntColumn get deviceStatus =>
      _deviceStatus ??= _constructDeviceStatus();
  GeneratedIntColumn _constructDeviceStatus() {
    return GeneratedIntColumn(
      'device_status',
      $tableName,
      true,
    );
  }

  final VerificationMeta _companyNameMeta =
      const VerificationMeta('companyName');
  GeneratedTextColumn _companyName;
  @override
  GeneratedTextColumn get companyName =>
      _companyName ??= _constructCompanyName();
  GeneratedTextColumn _constructCompanyName() {
    return GeneratedTextColumn(
      'company_name',
      $tableName,
      true,
    );
  }

  final VerificationMeta _deviceNickNameMeta =
      const VerificationMeta('deviceNickName');
  GeneratedTextColumn _deviceNickName;
  @override
  GeneratedTextColumn get deviceNickName =>
      _deviceNickName ??= _constructDeviceNickName();
  GeneratedTextColumn _constructDeviceNickName() {
    return GeneratedTextColumn(
      'device_nick_name',
      $tableName,
      true,
    );
  }

  final VerificationMeta _latitudeMeta = const VerificationMeta('latitude');
  GeneratedRealColumn _latitude;
  @override
  GeneratedRealColumn get latitude => _latitude ??= _constructLatitude();
  GeneratedRealColumn _constructLatitude() {
    return GeneratedRealColumn(
      'latitude',
      $tableName,
      true,
    );
  }

  final VerificationMeta _longitudeMeta = const VerificationMeta('longitude');
  GeneratedRealColumn _longitude;
  @override
  GeneratedRealColumn get longitude => _longitude ??= _constructLongitude();
  GeneratedRealColumn _constructLongitude() {
    return GeneratedRealColumn(
      'longitude',
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
        deviceId,
        deviceName,
        versionRelease,
        versionEnvrement,
        bootLoader,
        manufacture,
        model,
        sdkNumber,
        hardware,
        deviceHost,
        deviceTime,
        deviceSerial,
        deviceMac,
        deviceIp,
        deviceMode,
        activationDate,
        expirationDate,
        deviceStatus,
        companyName,
        deviceNickName,
        latitude,
        longitude
      ];
  @override
  $MobileDeviceTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'mobile_device';
  @override
  final String actualTableName = 'mobile_device';
  @override
  VerificationContext validateIntegrity(MobileDeviceCompanion d,
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
    if (d.deviceId.present) {
      context.handle(_deviceIdMeta,
          deviceId.isAcceptableValue(d.deviceId.value, _deviceIdMeta));
    }
    if (d.deviceName.present) {
      context.handle(_deviceNameMeta,
          deviceName.isAcceptableValue(d.deviceName.value, _deviceNameMeta));
    }
    if (d.versionRelease.present) {
      context.handle(
          _versionReleaseMeta,
          versionRelease.isAcceptableValue(
              d.versionRelease.value, _versionReleaseMeta));
    }
    if (d.versionEnvrement.present) {
      context.handle(
          _versionEnvrementMeta,
          versionEnvrement.isAcceptableValue(
              d.versionEnvrement.value, _versionEnvrementMeta));
    }
    if (d.bootLoader.present) {
      context.handle(_bootLoaderMeta,
          bootLoader.isAcceptableValue(d.bootLoader.value, _bootLoaderMeta));
    }
    if (d.manufacture.present) {
      context.handle(_manufactureMeta,
          manufacture.isAcceptableValue(d.manufacture.value, _manufactureMeta));
    }
    if (d.model.present) {
      context.handle(
          _modelMeta, model.isAcceptableValue(d.model.value, _modelMeta));
    }
    if (d.sdkNumber.present) {
      context.handle(_sdkNumberMeta,
          sdkNumber.isAcceptableValue(d.sdkNumber.value, _sdkNumberMeta));
    }
    if (d.hardware.present) {
      context.handle(_hardwareMeta,
          hardware.isAcceptableValue(d.hardware.value, _hardwareMeta));
    }
    if (d.deviceHost.present) {
      context.handle(_deviceHostMeta,
          deviceHost.isAcceptableValue(d.deviceHost.value, _deviceHostMeta));
    }
    if (d.deviceTime.present) {
      context.handle(_deviceTimeMeta,
          deviceTime.isAcceptableValue(d.deviceTime.value, _deviceTimeMeta));
    }
    if (d.deviceSerial.present) {
      context.handle(
          _deviceSerialMeta,
          deviceSerial.isAcceptableValue(
              d.deviceSerial.value, _deviceSerialMeta));
    }
    if (d.deviceMac.present) {
      context.handle(_deviceMacMeta,
          deviceMac.isAcceptableValue(d.deviceMac.value, _deviceMacMeta));
    }
    if (d.deviceIp.present) {
      context.handle(_deviceIpMeta,
          deviceIp.isAcceptableValue(d.deviceIp.value, _deviceIpMeta));
    }
    if (d.deviceMode.present) {
      context.handle(_deviceModeMeta,
          deviceMode.isAcceptableValue(d.deviceMode.value, _deviceModeMeta));
    }
    if (d.activationDate.present) {
      context.handle(
          _activationDateMeta,
          activationDate.isAcceptableValue(
              d.activationDate.value, _activationDateMeta));
    }
    if (d.expirationDate.present) {
      context.handle(
          _expirationDateMeta,
          expirationDate.isAcceptableValue(
              d.expirationDate.value, _expirationDateMeta));
    }
    if (d.deviceStatus.present) {
      context.handle(
          _deviceStatusMeta,
          deviceStatus.isAcceptableValue(
              d.deviceStatus.value, _deviceStatusMeta));
    }
    if (d.companyName.present) {
      context.handle(_companyNameMeta,
          companyName.isAcceptableValue(d.companyName.value, _companyNameMeta));
    }
    if (d.deviceNickName.present) {
      context.handle(
          _deviceNickNameMeta,
          deviceNickName.isAcceptableValue(
              d.deviceNickName.value, _deviceNickNameMeta));
    }
    if (d.latitude.present) {
      context.handle(_latitudeMeta,
          latitude.isAcceptableValue(d.latitude.value, _latitudeMeta));
    }
    if (d.longitude.present) {
      context.handle(_longitudeMeta,
          longitude.isAcceptableValue(d.longitude.value, _longitudeMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {deviceId};
  @override
  MobileDeviceData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return MobileDeviceData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(MobileDeviceCompanion d) {
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
    if (d.deviceId.present) {
      map['device_id'] = Variable<String, StringType>(d.deviceId.value);
    }
    if (d.deviceName.present) {
      map['device_name'] = Variable<String, StringType>(d.deviceName.value);
    }
    if (d.versionRelease.present) {
      map['version_release'] =
          Variable<String, StringType>(d.versionRelease.value);
    }
    if (d.versionEnvrement.present) {
      map['version_envrement'] =
          Variable<String, StringType>(d.versionEnvrement.value);
    }
    if (d.bootLoader.present) {
      map['boot_loader'] = Variable<String, StringType>(d.bootLoader.value);
    }
    if (d.manufacture.present) {
      map['manufacture'] = Variable<String, StringType>(d.manufacture.value);
    }
    if (d.model.present) {
      map['model'] = Variable<String, StringType>(d.model.value);
    }
    if (d.sdkNumber.present) {
      map['sdk_number'] = Variable<int, IntType>(d.sdkNumber.value);
    }
    if (d.hardware.present) {
      map['hardware'] = Variable<String, StringType>(d.hardware.value);
    }
    if (d.deviceHost.present) {
      map['device_host'] = Variable<String, StringType>(d.deviceHost.value);
    }
    if (d.deviceTime.present) {
      map['device_time'] = Variable<DateTime, DateTimeType>(d.deviceTime.value);
    }
    if (d.deviceSerial.present) {
      map['device_serial'] = Variable<String, StringType>(d.deviceSerial.value);
    }
    if (d.deviceMac.present) {
      map['device_mac'] = Variable<String, StringType>(d.deviceMac.value);
    }
    if (d.deviceIp.present) {
      map['device_ip'] = Variable<String, StringType>(d.deviceIp.value);
    }
    if (d.deviceMode.present) {
      map['device_mode'] = Variable<String, StringType>(d.deviceMode.value);
    }
    if (d.activationDate.present) {
      map['activation_date'] =
          Variable<DateTime, DateTimeType>(d.activationDate.value);
    }
    if (d.expirationDate.present) {
      map['expiration_date'] =
          Variable<DateTime, DateTimeType>(d.expirationDate.value);
    }
    if (d.deviceStatus.present) {
      map['device_status'] = Variable<int, IntType>(d.deviceStatus.value);
    }
    if (d.companyName.present) {
      map['company_name'] = Variable<String, StringType>(d.companyName.value);
    }
    if (d.deviceNickName.present) {
      map['device_nick_name'] =
          Variable<String, StringType>(d.deviceNickName.value);
    }
    if (d.latitude.present) {
      map['latitude'] = Variable<double, RealType>(d.latitude.value);
    }
    if (d.longitude.present) {
      map['longitude'] = Variable<double, RealType>(d.longitude.value);
    }
    return map;
  }

  @override
  $MobileDeviceTable createAlias(String alias) {
    return $MobileDeviceTable(_db, alias);
  }
}

class BusinessRuleData extends DataClass
    implements Insertable<BusinessRuleData> {
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
  final String code;
  final String ruleName;
  final String value;
  final String description;
  final bool isGlobalRule;
  final String deviceRule;
  final String userRule;
  final String domain;
  BusinessRuleData(
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
      @required this.code,
      this.ruleName,
      @required this.value,
      this.description,
      @required this.isGlobalRule,
      this.deviceRule,
      this.userRule,
      this.domain});
  factory BusinessRuleData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    return BusinessRuleData(
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
      code: stringType.mapFromDatabaseResponse(data['${effectivePrefix}code']),
      ruleName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}rule_name']),
      value:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}value']),
      description: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      isGlobalRule: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}is_global_rule']),
      deviceRule: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}device_rule']),
      userRule: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}user_rule']),
      domain:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}domain']),
    );
  }
  factory BusinessRuleData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return BusinessRuleData(
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
      code: serializer.fromJson<String>(json['code']),
      ruleName: serializer.fromJson<String>(json['ruleName']),
      value: serializer.fromJson<String>(json['value']),
      description: serializer.fromJson<String>(json['description']),
      isGlobalRule: serializer.fromJson<bool>(json['isGlobalRule']),
      deviceRule: serializer.fromJson<String>(json['deviceRule']),
      userRule: serializer.fromJson<String>(json['userRule']),
      domain: serializer.fromJson<String>(json['domain']),
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
      'code': serializer.toJson<String>(code),
      'ruleName': serializer.toJson<String>(ruleName),
      'value': serializer.toJson<String>(value),
      'description': serializer.toJson<String>(description),
      'isGlobalRule': serializer.toJson<bool>(isGlobalRule),
      'deviceRule': serializer.toJson<String>(deviceRule),
      'userRule': serializer.toJson<String>(userRule),
      'domain': serializer.toJson<String>(domain),
    };
  }

  @override
  BusinessRuleCompanion createCompanion(bool nullToAbsent) {
    return BusinessRuleCompanion(
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
      code: code == null && nullToAbsent ? const Value.absent() : Value(code),
      ruleName: ruleName == null && nullToAbsent
          ? const Value.absent()
          : Value(ruleName),
      value:
          value == null && nullToAbsent ? const Value.absent() : Value(value),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      isGlobalRule: isGlobalRule == null && nullToAbsent
          ? const Value.absent()
          : Value(isGlobalRule),
      deviceRule: deviceRule == null && nullToAbsent
          ? const Value.absent()
          : Value(deviceRule),
      userRule: userRule == null && nullToAbsent
          ? const Value.absent()
          : Value(userRule),
      domain:
          domain == null && nullToAbsent ? const Value.absent() : Value(domain),
    );
  }

  BusinessRuleData copyWith(
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
          String code,
          String ruleName,
          String value,
          String description,
          bool isGlobalRule,
          String deviceRule,
          String userRule,
          String domain}) =>
      BusinessRuleData(
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
        code: code ?? this.code,
        ruleName: ruleName ?? this.ruleName,
        value: value ?? this.value,
        description: description ?? this.description,
        isGlobalRule: isGlobalRule ?? this.isGlobalRule,
        deviceRule: deviceRule ?? this.deviceRule,
        userRule: userRule ?? this.userRule,
        domain: domain ?? this.domain,
      );
  @override
  String toString() {
    return (StringBuffer('BusinessRuleData(')
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
          ..write('code: $code, ')
          ..write('ruleName: $ruleName, ')
          ..write('value: $value, ')
          ..write('description: $description, ')
          ..write('isGlobalRule: $isGlobalRule, ')
          ..write('deviceRule: $deviceRule, ')
          ..write('userRule: $userRule, ')
          ..write('domain: $domain')
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
                                                              code.hashCode,
                                                              $mrjc(
                                                                  ruleName
                                                                      .hashCode,
                                                                  $mrjc(
                                                                      value
                                                                          .hashCode,
                                                                      $mrjc(
                                                                          description
                                                                              .hashCode,
                                                                          $mrjc(
                                                                              isGlobalRule.hashCode,
                                                                              $mrjc(deviceRule.hashCode, $mrjc(userRule.hashCode, domain.hashCode))))))))))))))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is BusinessRuleData &&
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
          other.code == this.code &&
          other.ruleName == this.ruleName &&
          other.value == this.value &&
          other.description == this.description &&
          other.isGlobalRule == this.isGlobalRule &&
          other.deviceRule == this.deviceRule &&
          other.userRule == this.userRule &&
          other.domain == this.domain);
}

class BusinessRuleCompanion extends UpdateCompanion<BusinessRuleData> {
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
  final Value<String> code;
  final Value<String> ruleName;
  final Value<String> value;
  final Value<String> description;
  final Value<bool> isGlobalRule;
  final Value<String> deviceRule;
  final Value<String> userRule;
  final Value<String> domain;
  const BusinessRuleCompanion({
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
    this.code = const Value.absent(),
    this.ruleName = const Value.absent(),
    this.value = const Value.absent(),
    this.description = const Value.absent(),
    this.isGlobalRule = const Value.absent(),
    this.deviceRule = const Value.absent(),
    this.userRule = const Value.absent(),
    this.domain = const Value.absent(),
  });
  BusinessRuleCompanion.insert({
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
    @required String code,
    this.ruleName = const Value.absent(),
    @required String value,
    this.description = const Value.absent(),
    this.isGlobalRule = const Value.absent(),
    this.deviceRule = const Value.absent(),
    this.userRule = const Value.absent(),
    this.domain = const Value.absent(),
  })  : code = Value(code),
        value = Value(value);
  BusinessRuleCompanion copyWith(
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
      Value<String> code,
      Value<String> ruleName,
      Value<String> value,
      Value<String> description,
      Value<bool> isGlobalRule,
      Value<String> deviceRule,
      Value<String> userRule,
      Value<String> domain}) {
    return BusinessRuleCompanion(
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
      code: code ?? this.code,
      ruleName: ruleName ?? this.ruleName,
      value: value ?? this.value,
      description: description ?? this.description,
      isGlobalRule: isGlobalRule ?? this.isGlobalRule,
      deviceRule: deviceRule ?? this.deviceRule,
      userRule: userRule ?? this.userRule,
      domain: domain ?? this.domain,
    );
  }
}

class $BusinessRuleTable extends BusinessRule
    with TableInfo<$BusinessRuleTable, BusinessRuleData> {
  final GeneratedDatabase _db;
  final String _alias;
  $BusinessRuleTable(this._db, [this._alias]);
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

  final VerificationMeta _codeMeta = const VerificationMeta('code');
  GeneratedTextColumn _code;
  @override
  GeneratedTextColumn get code => _code ??= _constructCode();
  GeneratedTextColumn _constructCode() {
    return GeneratedTextColumn(
      'code',
      $tableName,
      false,
    );
  }

  final VerificationMeta _ruleNameMeta = const VerificationMeta('ruleName');
  GeneratedTextColumn _ruleName;
  @override
  GeneratedTextColumn get ruleName => _ruleName ??= _constructRuleName();
  GeneratedTextColumn _constructRuleName() {
    return GeneratedTextColumn(
      'rule_name',
      $tableName,
      true,
    );
  }

  final VerificationMeta _valueMeta = const VerificationMeta('value');
  GeneratedTextColumn _value;
  @override
  GeneratedTextColumn get value => _value ??= _constructValue();
  GeneratedTextColumn _constructValue() {
    return GeneratedTextColumn(
      'value',
      $tableName,
      false,
    );
  }

  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  GeneratedTextColumn _description;
  @override
  GeneratedTextColumn get description =>
      _description ??= _constructDescription();
  GeneratedTextColumn _constructDescription() {
    return GeneratedTextColumn(
      'description',
      $tableName,
      true,
    );
  }

  final VerificationMeta _isGlobalRuleMeta =
      const VerificationMeta('isGlobalRule');
  GeneratedBoolColumn _isGlobalRule;
  @override
  GeneratedBoolColumn get isGlobalRule =>
      _isGlobalRule ??= _constructIsGlobalRule();
  GeneratedBoolColumn _constructIsGlobalRule() {
    return GeneratedBoolColumn('is_global_rule', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _deviceRuleMeta = const VerificationMeta('deviceRule');
  GeneratedTextColumn _deviceRule;
  @override
  GeneratedTextColumn get deviceRule => _deviceRule ??= _constructDeviceRule();
  GeneratedTextColumn _constructDeviceRule() {
    return GeneratedTextColumn(
      'device_rule',
      $tableName,
      true,
    );
  }

  final VerificationMeta _userRuleMeta = const VerificationMeta('userRule');
  GeneratedTextColumn _userRule;
  @override
  GeneratedTextColumn get userRule => _userRule ??= _constructUserRule();
  GeneratedTextColumn _constructUserRule() {
    return GeneratedTextColumn(
      'user_rule',
      $tableName,
      true,
    );
  }

  final VerificationMeta _domainMeta = const VerificationMeta('domain');
  GeneratedTextColumn _domain;
  @override
  GeneratedTextColumn get domain => _domain ??= _constructDomain();
  GeneratedTextColumn _constructDomain() {
    return GeneratedTextColumn(
      'domain',
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
        code,
        ruleName,
        value,
        description,
        isGlobalRule,
        deviceRule,
        userRule,
        domain
      ];
  @override
  $BusinessRuleTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'business_rule';
  @override
  final String actualTableName = 'business_rule';
  @override
  VerificationContext validateIntegrity(BusinessRuleCompanion d,
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
    if (d.code.present) {
      context.handle(
          _codeMeta, code.isAcceptableValue(d.code.value, _codeMeta));
    } else if (isInserting) {
      context.missing(_codeMeta);
    }
    if (d.ruleName.present) {
      context.handle(_ruleNameMeta,
          ruleName.isAcceptableValue(d.ruleName.value, _ruleNameMeta));
    }
    if (d.value.present) {
      context.handle(
          _valueMeta, value.isAcceptableValue(d.value.value, _valueMeta));
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    if (d.description.present) {
      context.handle(_descriptionMeta,
          description.isAcceptableValue(d.description.value, _descriptionMeta));
    }
    if (d.isGlobalRule.present) {
      context.handle(
          _isGlobalRuleMeta,
          isGlobalRule.isAcceptableValue(
              d.isGlobalRule.value, _isGlobalRuleMeta));
    }
    if (d.deviceRule.present) {
      context.handle(_deviceRuleMeta,
          deviceRule.isAcceptableValue(d.deviceRule.value, _deviceRuleMeta));
    }
    if (d.userRule.present) {
      context.handle(_userRuleMeta,
          userRule.isAcceptableValue(d.userRule.value, _userRuleMeta));
    }
    if (d.domain.present) {
      context.handle(
          _domainMeta, domain.isAcceptableValue(d.domain.value, _domainMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {code};
  @override
  BusinessRuleData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return BusinessRuleData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(BusinessRuleCompanion d) {
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
    if (d.code.present) {
      map['code'] = Variable<String, StringType>(d.code.value);
    }
    if (d.ruleName.present) {
      map['rule_name'] = Variable<String, StringType>(d.ruleName.value);
    }
    if (d.value.present) {
      map['value'] = Variable<String, StringType>(d.value.value);
    }
    if (d.description.present) {
      map['description'] = Variable<String, StringType>(d.description.value);
    }
    if (d.isGlobalRule.present) {
      map['is_global_rule'] = Variable<bool, BoolType>(d.isGlobalRule.value);
    }
    if (d.deviceRule.present) {
      map['device_rule'] = Variable<String, StringType>(d.deviceRule.value);
    }
    if (d.userRule.present) {
      map['user_rule'] = Variable<String, StringType>(d.userRule.value);
    }
    if (d.domain.present) {
      map['domain'] = Variable<String, StringType>(d.domain.value);
    }
    return map;
  }

  @override
  $BusinessRuleTable createAlias(String alias) {
    return $BusinessRuleTable(_db, alias);
  }
}

class ApplicationLoggerData extends DataClass
    implements Insertable<ApplicationLoggerData> {
  final int tenantId;
  final String uerName;
  final int userId;
  final int id;
  final String functionName;
  final DateTime logDateTime;
  final String syncFrequency;
  final String logDescription;
  final String documentNo;
  final String deviceId;
  final String logCode;
  final String logSeverity;
  final DateTime exportDateTime;
  final String exportStatus;
  final String syncError;
  ApplicationLoggerData(
      {this.tenantId,
      this.uerName,
      this.userId,
      @required this.id,
      @required this.functionName,
      @required this.logDateTime,
      @required this.syncFrequency,
      @required this.logDescription,
      @required this.documentNo,
      @required this.deviceId,
      @required this.logCode,
      @required this.logSeverity,
      this.exportDateTime,
      @required this.exportStatus,
      this.syncError});
  factory ApplicationLoggerData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return ApplicationLoggerData(
      tenantId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}tenant_id']),
      uerName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}uer_name']),
      userId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}user_id']),
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      functionName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}function_name']),
      logDateTime: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}log_date_time']),
      syncFrequency: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}sync_frequency']),
      logDescription: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}log_description']),
      documentNo: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}document_no']),
      deviceId: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}device_id']),
      logCode: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}log_code']),
      logSeverity: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}log_severity']),
      exportDateTime: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}export_date_time']),
      exportStatus: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}export_status']),
      syncError: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}sync_error']),
    );
  }
  factory ApplicationLoggerData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return ApplicationLoggerData(
      tenantId: serializer.fromJson<int>(json['tenantId']),
      uerName: serializer.fromJson<String>(json['uerName']),
      userId: serializer.fromJson<int>(json['userId']),
      id: serializer.fromJson<int>(json['id']),
      functionName: serializer.fromJson<String>(json['functionName']),
      logDateTime: serializer.fromJson<DateTime>(json['logDateTime']),
      syncFrequency: serializer.fromJson<String>(json['syncFrequency']),
      logDescription: serializer.fromJson<String>(json['logDescription']),
      documentNo: serializer.fromJson<String>(json['documentNo']),
      deviceId: serializer.fromJson<String>(json['deviceId']),
      logCode: serializer.fromJson<String>(json['logCode']),
      logSeverity: serializer.fromJson<String>(json['logSeverity']),
      exportDateTime: serializer.fromJson<DateTime>(json['exportDateTime']),
      exportStatus: serializer.fromJson<String>(json['exportStatus']),
      syncError: serializer.fromJson<String>(json['syncError']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'tenantId': serializer.toJson<int>(tenantId),
      'uerName': serializer.toJson<String>(uerName),
      'userId': serializer.toJson<int>(userId),
      'id': serializer.toJson<int>(id),
      'functionName': serializer.toJson<String>(functionName),
      'logDateTime': serializer.toJson<DateTime>(logDateTime),
      'syncFrequency': serializer.toJson<String>(syncFrequency),
      'logDescription': serializer.toJson<String>(logDescription),
      'documentNo': serializer.toJson<String>(documentNo),
      'deviceId': serializer.toJson<String>(deviceId),
      'logCode': serializer.toJson<String>(logCode),
      'logSeverity': serializer.toJson<String>(logSeverity),
      'exportDateTime': serializer.toJson<DateTime>(exportDateTime),
      'exportStatus': serializer.toJson<String>(exportStatus),
      'syncError': serializer.toJson<String>(syncError),
    };
  }

  @override
  ApplicationLoggerCompanion createCompanion(bool nullToAbsent) {
    return ApplicationLoggerCompanion(
      tenantId: tenantId == null && nullToAbsent
          ? const Value.absent()
          : Value(tenantId),
      uerName: uerName == null && nullToAbsent
          ? const Value.absent()
          : Value(uerName),
      userId:
          userId == null && nullToAbsent ? const Value.absent() : Value(userId),
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      functionName: functionName == null && nullToAbsent
          ? const Value.absent()
          : Value(functionName),
      logDateTime: logDateTime == null && nullToAbsent
          ? const Value.absent()
          : Value(logDateTime),
      syncFrequency: syncFrequency == null && nullToAbsent
          ? const Value.absent()
          : Value(syncFrequency),
      logDescription: logDescription == null && nullToAbsent
          ? const Value.absent()
          : Value(logDescription),
      documentNo: documentNo == null && nullToAbsent
          ? const Value.absent()
          : Value(documentNo),
      deviceId: deviceId == null && nullToAbsent
          ? const Value.absent()
          : Value(deviceId),
      logCode: logCode == null && nullToAbsent
          ? const Value.absent()
          : Value(logCode),
      logSeverity: logSeverity == null && nullToAbsent
          ? const Value.absent()
          : Value(logSeverity),
      exportDateTime: exportDateTime == null && nullToAbsent
          ? const Value.absent()
          : Value(exportDateTime),
      exportStatus: exportStatus == null && nullToAbsent
          ? const Value.absent()
          : Value(exportStatus),
      syncError: syncError == null && nullToAbsent
          ? const Value.absent()
          : Value(syncError),
    );
  }

  ApplicationLoggerData copyWith(
          {int tenantId,
          String uerName,
          int userId,
          int id,
          String functionName,
          DateTime logDateTime,
          String syncFrequency,
          String logDescription,
          String documentNo,
          String deviceId,
          String logCode,
          String logSeverity,
          DateTime exportDateTime,
          String exportStatus,
          String syncError}) =>
      ApplicationLoggerData(
        tenantId: tenantId ?? this.tenantId,
        uerName: uerName ?? this.uerName,
        userId: userId ?? this.userId,
        id: id ?? this.id,
        functionName: functionName ?? this.functionName,
        logDateTime: logDateTime ?? this.logDateTime,
        syncFrequency: syncFrequency ?? this.syncFrequency,
        logDescription: logDescription ?? this.logDescription,
        documentNo: documentNo ?? this.documentNo,
        deviceId: deviceId ?? this.deviceId,
        logCode: logCode ?? this.logCode,
        logSeverity: logSeverity ?? this.logSeverity,
        exportDateTime: exportDateTime ?? this.exportDateTime,
        exportStatus: exportStatus ?? this.exportStatus,
        syncError: syncError ?? this.syncError,
      );
  @override
  String toString() {
    return (StringBuffer('ApplicationLoggerData(')
          ..write('tenantId: $tenantId, ')
          ..write('uerName: $uerName, ')
          ..write('userId: $userId, ')
          ..write('id: $id, ')
          ..write('functionName: $functionName, ')
          ..write('logDateTime: $logDateTime, ')
          ..write('syncFrequency: $syncFrequency, ')
          ..write('logDescription: $logDescription, ')
          ..write('documentNo: $documentNo, ')
          ..write('deviceId: $deviceId, ')
          ..write('logCode: $logCode, ')
          ..write('logSeverity: $logSeverity, ')
          ..write('exportDateTime: $exportDateTime, ')
          ..write('exportStatus: $exportStatus, ')
          ..write('syncError: $syncError')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      tenantId.hashCode,
      $mrjc(
          uerName.hashCode,
          $mrjc(
              userId.hashCode,
              $mrjc(
                  id.hashCode,
                  $mrjc(
                      functionName.hashCode,
                      $mrjc(
                          logDateTime.hashCode,
                          $mrjc(
                              syncFrequency.hashCode,
                              $mrjc(
                                  logDescription.hashCode,
                                  $mrjc(
                                      documentNo.hashCode,
                                      $mrjc(
                                          deviceId.hashCode,
                                          $mrjc(
                                              logCode.hashCode,
                                              $mrjc(
                                                  logSeverity.hashCode,
                                                  $mrjc(
                                                      exportDateTime.hashCode,
                                                      $mrjc(
                                                          exportStatus.hashCode,
                                                          syncError
                                                              .hashCode)))))))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is ApplicationLoggerData &&
          other.tenantId == this.tenantId &&
          other.uerName == this.uerName &&
          other.userId == this.userId &&
          other.id == this.id &&
          other.functionName == this.functionName &&
          other.logDateTime == this.logDateTime &&
          other.syncFrequency == this.syncFrequency &&
          other.logDescription == this.logDescription &&
          other.documentNo == this.documentNo &&
          other.deviceId == this.deviceId &&
          other.logCode == this.logCode &&
          other.logSeverity == this.logSeverity &&
          other.exportDateTime == this.exportDateTime &&
          other.exportStatus == this.exportStatus &&
          other.syncError == this.syncError);
}

class ApplicationLoggerCompanion
    extends UpdateCompanion<ApplicationLoggerData> {
  final Value<int> tenantId;
  final Value<String> uerName;
  final Value<int> userId;
  final Value<int> id;
  final Value<String> functionName;
  final Value<DateTime> logDateTime;
  final Value<String> syncFrequency;
  final Value<String> logDescription;
  final Value<String> documentNo;
  final Value<String> deviceId;
  final Value<String> logCode;
  final Value<String> logSeverity;
  final Value<DateTime> exportDateTime;
  final Value<String> exportStatus;
  final Value<String> syncError;
  const ApplicationLoggerCompanion({
    this.tenantId = const Value.absent(),
    this.uerName = const Value.absent(),
    this.userId = const Value.absent(),
    this.id = const Value.absent(),
    this.functionName = const Value.absent(),
    this.logDateTime = const Value.absent(),
    this.syncFrequency = const Value.absent(),
    this.logDescription = const Value.absent(),
    this.documentNo = const Value.absent(),
    this.deviceId = const Value.absent(),
    this.logCode = const Value.absent(),
    this.logSeverity = const Value.absent(),
    this.exportDateTime = const Value.absent(),
    this.exportStatus = const Value.absent(),
    this.syncError = const Value.absent(),
  });
  ApplicationLoggerCompanion.insert({
    this.tenantId = const Value.absent(),
    this.uerName = const Value.absent(),
    this.userId = const Value.absent(),
    this.id = const Value.absent(),
    @required String functionName,
    @required DateTime logDateTime,
    @required String syncFrequency,
    @required String logDescription,
    @required String documentNo,
    @required String deviceId,
    @required String logCode,
    @required String logSeverity,
    this.exportDateTime = const Value.absent(),
    this.exportStatus = const Value.absent(),
    this.syncError = const Value.absent(),
  })  : functionName = Value(functionName),
        logDateTime = Value(logDateTime),
        syncFrequency = Value(syncFrequency),
        logDescription = Value(logDescription),
        documentNo = Value(documentNo),
        deviceId = Value(deviceId),
        logCode = Value(logCode),
        logSeverity = Value(logSeverity);
  ApplicationLoggerCompanion copyWith(
      {Value<int> tenantId,
      Value<String> uerName,
      Value<int> userId,
      Value<int> id,
      Value<String> functionName,
      Value<DateTime> logDateTime,
      Value<String> syncFrequency,
      Value<String> logDescription,
      Value<String> documentNo,
      Value<String> deviceId,
      Value<String> logCode,
      Value<String> logSeverity,
      Value<DateTime> exportDateTime,
      Value<String> exportStatus,
      Value<String> syncError}) {
    return ApplicationLoggerCompanion(
      tenantId: tenantId ?? this.tenantId,
      uerName: uerName ?? this.uerName,
      userId: userId ?? this.userId,
      id: id ?? this.id,
      functionName: functionName ?? this.functionName,
      logDateTime: logDateTime ?? this.logDateTime,
      syncFrequency: syncFrequency ?? this.syncFrequency,
      logDescription: logDescription ?? this.logDescription,
      documentNo: documentNo ?? this.documentNo,
      deviceId: deviceId ?? this.deviceId,
      logCode: logCode ?? this.logCode,
      logSeverity: logSeverity ?? this.logSeverity,
      exportDateTime: exportDateTime ?? this.exportDateTime,
      exportStatus: exportStatus ?? this.exportStatus,
      syncError: syncError ?? this.syncError,
    );
  }
}

class $ApplicationLoggerTable extends ApplicationLogger
    with TableInfo<$ApplicationLoggerTable, ApplicationLoggerData> {
  final GeneratedDatabase _db;
  final String _alias;
  $ApplicationLoggerTable(this._db, [this._alias]);
  final VerificationMeta _tenantIdMeta = const VerificationMeta('tenantId');
  GeneratedIntColumn _tenantId;
  @override
  GeneratedIntColumn get tenantId => _tenantId ??= _constructTenantId();
  GeneratedIntColumn _constructTenantId() {
    return GeneratedIntColumn(
      'tenant_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _uerNameMeta = const VerificationMeta('uerName');
  GeneratedTextColumn _uerName;
  @override
  GeneratedTextColumn get uerName => _uerName ??= _constructUerName();
  GeneratedTextColumn _constructUerName() {
    return GeneratedTextColumn(
      'uer_name',
      $tableName,
      true,
    );
  }

  final VerificationMeta _userIdMeta = const VerificationMeta('userId');
  GeneratedIntColumn _userId;
  @override
  GeneratedIntColumn get userId => _userId ??= _constructUserId();
  GeneratedIntColumn _constructUserId() {
    return GeneratedIntColumn(
      'user_id',
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

  final VerificationMeta _functionNameMeta =
      const VerificationMeta('functionName');
  GeneratedTextColumn _functionName;
  @override
  GeneratedTextColumn get functionName =>
      _functionName ??= _constructFunctionName();
  GeneratedTextColumn _constructFunctionName() {
    return GeneratedTextColumn(
      'function_name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _logDateTimeMeta =
      const VerificationMeta('logDateTime');
  GeneratedDateTimeColumn _logDateTime;
  @override
  GeneratedDateTimeColumn get logDateTime =>
      _logDateTime ??= _constructLogDateTime();
  GeneratedDateTimeColumn _constructLogDateTime() {
    return GeneratedDateTimeColumn(
      'log_date_time',
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

  final VerificationMeta _logDescriptionMeta =
      const VerificationMeta('logDescription');
  GeneratedTextColumn _logDescription;
  @override
  GeneratedTextColumn get logDescription =>
      _logDescription ??= _constructLogDescription();
  GeneratedTextColumn _constructLogDescription() {
    return GeneratedTextColumn(
      'log_description',
      $tableName,
      false,
    );
  }

  final VerificationMeta _documentNoMeta = const VerificationMeta('documentNo');
  GeneratedTextColumn _documentNo;
  @override
  GeneratedTextColumn get documentNo => _documentNo ??= _constructDocumentNo();
  GeneratedTextColumn _constructDocumentNo() {
    return GeneratedTextColumn(
      'document_no',
      $tableName,
      false,
    );
  }

  final VerificationMeta _deviceIdMeta = const VerificationMeta('deviceId');
  GeneratedTextColumn _deviceId;
  @override
  GeneratedTextColumn get deviceId => _deviceId ??= _constructDeviceId();
  GeneratedTextColumn _constructDeviceId() {
    return GeneratedTextColumn(
      'device_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _logCodeMeta = const VerificationMeta('logCode');
  GeneratedTextColumn _logCode;
  @override
  GeneratedTextColumn get logCode => _logCode ??= _constructLogCode();
  GeneratedTextColumn _constructLogCode() {
    return GeneratedTextColumn(
      'log_code',
      $tableName,
      false,
    );
  }

  final VerificationMeta _logSeverityMeta =
      const VerificationMeta('logSeverity');
  GeneratedTextColumn _logSeverity;
  @override
  GeneratedTextColumn get logSeverity =>
      _logSeverity ??= _constructLogSeverity();
  GeneratedTextColumn _constructLogSeverity() {
    return GeneratedTextColumn(
      'log_severity',
      $tableName,
      false,
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

  @override
  List<GeneratedColumn> get $columns => [
        tenantId,
        uerName,
        userId,
        id,
        functionName,
        logDateTime,
        syncFrequency,
        logDescription,
        documentNo,
        deviceId,
        logCode,
        logSeverity,
        exportDateTime,
        exportStatus,
        syncError
      ];
  @override
  $ApplicationLoggerTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'application_logger';
  @override
  final String actualTableName = 'application_logger';
  @override
  VerificationContext validateIntegrity(ApplicationLoggerCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.tenantId.present) {
      context.handle(_tenantIdMeta,
          tenantId.isAcceptableValue(d.tenantId.value, _tenantIdMeta));
    }
    if (d.uerName.present) {
      context.handle(_uerNameMeta,
          uerName.isAcceptableValue(d.uerName.value, _uerNameMeta));
    }
    if (d.userId.present) {
      context.handle(
          _userIdMeta, userId.isAcceptableValue(d.userId.value, _userIdMeta));
    }
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    }
    if (d.functionName.present) {
      context.handle(
          _functionNameMeta,
          functionName.isAcceptableValue(
              d.functionName.value, _functionNameMeta));
    } else if (isInserting) {
      context.missing(_functionNameMeta);
    }
    if (d.logDateTime.present) {
      context.handle(_logDateTimeMeta,
          logDateTime.isAcceptableValue(d.logDateTime.value, _logDateTimeMeta));
    } else if (isInserting) {
      context.missing(_logDateTimeMeta);
    }
    if (d.syncFrequency.present) {
      context.handle(
          _syncFrequencyMeta,
          syncFrequency.isAcceptableValue(
              d.syncFrequency.value, _syncFrequencyMeta));
    } else if (isInserting) {
      context.missing(_syncFrequencyMeta);
    }
    if (d.logDescription.present) {
      context.handle(
          _logDescriptionMeta,
          logDescription.isAcceptableValue(
              d.logDescription.value, _logDescriptionMeta));
    } else if (isInserting) {
      context.missing(_logDescriptionMeta);
    }
    if (d.documentNo.present) {
      context.handle(_documentNoMeta,
          documentNo.isAcceptableValue(d.documentNo.value, _documentNoMeta));
    } else if (isInserting) {
      context.missing(_documentNoMeta);
    }
    if (d.deviceId.present) {
      context.handle(_deviceIdMeta,
          deviceId.isAcceptableValue(d.deviceId.value, _deviceIdMeta));
    } else if (isInserting) {
      context.missing(_deviceIdMeta);
    }
    if (d.logCode.present) {
      context.handle(_logCodeMeta,
          logCode.isAcceptableValue(d.logCode.value, _logCodeMeta));
    } else if (isInserting) {
      context.missing(_logCodeMeta);
    }
    if (d.logSeverity.present) {
      context.handle(_logSeverityMeta,
          logSeverity.isAcceptableValue(d.logSeverity.value, _logSeverityMeta));
    } else if (isInserting) {
      context.missing(_logSeverityMeta);
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
    if (d.syncError.present) {
      context.handle(_syncErrorMeta,
          syncError.isAcceptableValue(d.syncError.value, _syncErrorMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ApplicationLoggerData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return ApplicationLoggerData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(ApplicationLoggerCompanion d) {
    final map = <String, Variable>{};
    if (d.tenantId.present) {
      map['tenant_id'] = Variable<int, IntType>(d.tenantId.value);
    }
    if (d.uerName.present) {
      map['uer_name'] = Variable<String, StringType>(d.uerName.value);
    }
    if (d.userId.present) {
      map['user_id'] = Variable<int, IntType>(d.userId.value);
    }
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.functionName.present) {
      map['function_name'] = Variable<String, StringType>(d.functionName.value);
    }
    if (d.logDateTime.present) {
      map['log_date_time'] =
          Variable<DateTime, DateTimeType>(d.logDateTime.value);
    }
    if (d.syncFrequency.present) {
      map['sync_frequency'] =
          Variable<String, StringType>(d.syncFrequency.value);
    }
    if (d.logDescription.present) {
      map['log_description'] =
          Variable<String, StringType>(d.logDescription.value);
    }
    if (d.documentNo.present) {
      map['document_no'] = Variable<String, StringType>(d.documentNo.value);
    }
    if (d.deviceId.present) {
      map['device_id'] = Variable<String, StringType>(d.deviceId.value);
    }
    if (d.logCode.present) {
      map['log_code'] = Variable<String, StringType>(d.logCode.value);
    }
    if (d.logSeverity.present) {
      map['log_severity'] = Variable<String, StringType>(d.logSeverity.value);
    }
    if (d.exportDateTime.present) {
      map['export_date_time'] =
          Variable<DateTime, DateTimeType>(d.exportDateTime.value);
    }
    if (d.exportStatus.present) {
      map['export_status'] = Variable<String, StringType>(d.exportStatus.value);
    }
    if (d.syncError.present) {
      map['sync_error'] = Variable<String, StringType>(d.syncError.value);
    }
    return map;
  }

  @override
  $ApplicationLoggerTable createAlias(String alias) {
    return $ApplicationLoggerTable(_db, alias);
  }
}

class TenantData extends DataClass implements Insertable<TenantData> {
  final int tenantId;
  final String tenantName;
  final int tenantState;
  TenantData(
      {@required this.tenantId,
      @required this.tenantName,
      @required this.tenantState});
  factory TenantData.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return TenantData(
      tenantId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}tenant_id']),
      tenantName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}tenant_name']),
      tenantState: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}tenant_state']),
    );
  }
  factory TenantData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return TenantData(
      tenantId: serializer.fromJson<int>(json['tenantId']),
      tenantName: serializer.fromJson<String>(json['tenantName']),
      tenantState: serializer.fromJson<int>(json['tenantState']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'tenantId': serializer.toJson<int>(tenantId),
      'tenantName': serializer.toJson<String>(tenantName),
      'tenantState': serializer.toJson<int>(tenantState),
    };
  }

  @override
  TenantCompanion createCompanion(bool nullToAbsent) {
    return TenantCompanion(
      tenantId: tenantId == null && nullToAbsent
          ? const Value.absent()
          : Value(tenantId),
      tenantName: tenantName == null && nullToAbsent
          ? const Value.absent()
          : Value(tenantName),
      tenantState: tenantState == null && nullToAbsent
          ? const Value.absent()
          : Value(tenantState),
    );
  }

  TenantData copyWith({int tenantId, String tenantName, int tenantState}) =>
      TenantData(
        tenantId: tenantId ?? this.tenantId,
        tenantName: tenantName ?? this.tenantName,
        tenantState: tenantState ?? this.tenantState,
      );
  @override
  String toString() {
    return (StringBuffer('TenantData(')
          ..write('tenantId: $tenantId, ')
          ..write('tenantName: $tenantName, ')
          ..write('tenantState: $tenantState')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      tenantId.hashCode, $mrjc(tenantName.hashCode, tenantState.hashCode)));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is TenantData &&
          other.tenantId == this.tenantId &&
          other.tenantName == this.tenantName &&
          other.tenantState == this.tenantState);
}

class TenantCompanion extends UpdateCompanion<TenantData> {
  final Value<int> tenantId;
  final Value<String> tenantName;
  final Value<int> tenantState;
  const TenantCompanion({
    this.tenantId = const Value.absent(),
    this.tenantName = const Value.absent(),
    this.tenantState = const Value.absent(),
  });
  TenantCompanion.insert({
    @required int tenantId,
    @required String tenantName,
    @required int tenantState,
  })  : tenantId = Value(tenantId),
        tenantName = Value(tenantName),
        tenantState = Value(tenantState);
  TenantCompanion copyWith(
      {Value<int> tenantId, Value<String> tenantName, Value<int> tenantState}) {
    return TenantCompanion(
      tenantId: tenantId ?? this.tenantId,
      tenantName: tenantName ?? this.tenantName,
      tenantState: tenantState ?? this.tenantState,
    );
  }
}

class $TenantTable extends Tenant with TableInfo<$TenantTable, TenantData> {
  final GeneratedDatabase _db;
  final String _alias;
  $TenantTable(this._db, [this._alias]);
  final VerificationMeta _tenantIdMeta = const VerificationMeta('tenantId');
  GeneratedIntColumn _tenantId;
  @override
  GeneratedIntColumn get tenantId => _tenantId ??= _constructTenantId();
  GeneratedIntColumn _constructTenantId() {
    return GeneratedIntColumn(
      'tenant_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _tenantNameMeta = const VerificationMeta('tenantName');
  GeneratedTextColumn _tenantName;
  @override
  GeneratedTextColumn get tenantName => _tenantName ??= _constructTenantName();
  GeneratedTextColumn _constructTenantName() {
    return GeneratedTextColumn('tenant_name', $tableName, false,
        minTextLength: 1, maxTextLength: 100);
  }

  final VerificationMeta _tenantStateMeta =
      const VerificationMeta('tenantState');
  GeneratedIntColumn _tenantState;
  @override
  GeneratedIntColumn get tenantState =>
      _tenantState ??= _constructTenantState();
  GeneratedIntColumn _constructTenantState() {
    return GeneratedIntColumn(
      'tenant_state',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [tenantId, tenantName, tenantState];
  @override
  $TenantTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'tenant';
  @override
  final String actualTableName = 'tenant';
  @override
  VerificationContext validateIntegrity(TenantCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.tenantId.present) {
      context.handle(_tenantIdMeta,
          tenantId.isAcceptableValue(d.tenantId.value, _tenantIdMeta));
    } else if (isInserting) {
      context.missing(_tenantIdMeta);
    }
    if (d.tenantName.present) {
      context.handle(_tenantNameMeta,
          tenantName.isAcceptableValue(d.tenantName.value, _tenantNameMeta));
    } else if (isInserting) {
      context.missing(_tenantNameMeta);
    }
    if (d.tenantState.present) {
      context.handle(_tenantStateMeta,
          tenantState.isAcceptableValue(d.tenantState.value, _tenantStateMeta));
    } else if (isInserting) {
      context.missing(_tenantStateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {tenantId};
  @override
  TenantData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return TenantData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TenantCompanion d) {
    final map = <String, Variable>{};
    if (d.tenantId.present) {
      map['tenant_id'] = Variable<int, IntType>(d.tenantId.value);
    }
    if (d.tenantName.present) {
      map['tenant_name'] = Variable<String, StringType>(d.tenantName.value);
    }
    if (d.tenantState.present) {
      map['tenant_state'] = Variable<int, IntType>(d.tenantState.value);
    }
    return map;
  }

  @override
  $TenantTable createAlias(String alias) {
    return $TenantTable(_db, alias);
  }
}

class NonGlobalSettingData extends DataClass
    implements Insertable<NonGlobalSettingData> {
  final int id;
  final String parentCode;
  final String code;
  final String value;
  final String settingType;
  final String deviceId;
  final String userName;
  final String screen;
  final bool isApply;
  final DateTime expiredDateTime;
  final String syncError;
  NonGlobalSettingData(
      {@required this.id,
      @required this.parentCode,
      @required this.code,
      @required this.value,
      @required this.settingType,
      this.deviceId,
      @required this.userName,
      @required this.screen,
      @required this.isApply,
      this.expiredDateTime,
      this.syncError});
  factory NonGlobalSettingData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return NonGlobalSettingData(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      parentCode: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}parent_code']),
      code: stringType.mapFromDatabaseResponse(data['${effectivePrefix}code']),
      value:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}value']),
      settingType: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}setting_type']),
      deviceId: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}device_id']),
      userName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}user_name']),
      screen:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}screen']),
      isApply:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}is_apply']),
      expiredDateTime: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}expired_date_time']),
      syncError: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}sync_error']),
    );
  }
  factory NonGlobalSettingData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return NonGlobalSettingData(
      id: serializer.fromJson<int>(json['id']),
      parentCode: serializer.fromJson<String>(json['parentCode']),
      code: serializer.fromJson<String>(json['code']),
      value: serializer.fromJson<String>(json['value']),
      settingType: serializer.fromJson<String>(json['settingType']),
      deviceId: serializer.fromJson<String>(json['deviceId']),
      userName: serializer.fromJson<String>(json['userName']),
      screen: serializer.fromJson<String>(json['screen']),
      isApply: serializer.fromJson<bool>(json['isApply']),
      expiredDateTime: serializer.fromJson<DateTime>(json['expiredDateTime']),
      syncError: serializer.fromJson<String>(json['syncError']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'parentCode': serializer.toJson<String>(parentCode),
      'code': serializer.toJson<String>(code),
      'value': serializer.toJson<String>(value),
      'settingType': serializer.toJson<String>(settingType),
      'deviceId': serializer.toJson<String>(deviceId),
      'userName': serializer.toJson<String>(userName),
      'screen': serializer.toJson<String>(screen),
      'isApply': serializer.toJson<bool>(isApply),
      'expiredDateTime': serializer.toJson<DateTime>(expiredDateTime),
      'syncError': serializer.toJson<String>(syncError),
    };
  }

  @override
  NonGlobalSettingCompanion createCompanion(bool nullToAbsent) {
    return NonGlobalSettingCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      parentCode: parentCode == null && nullToAbsent
          ? const Value.absent()
          : Value(parentCode),
      code: code == null && nullToAbsent ? const Value.absent() : Value(code),
      value:
          value == null && nullToAbsent ? const Value.absent() : Value(value),
      settingType: settingType == null && nullToAbsent
          ? const Value.absent()
          : Value(settingType),
      deviceId: deviceId == null && nullToAbsent
          ? const Value.absent()
          : Value(deviceId),
      userName: userName == null && nullToAbsent
          ? const Value.absent()
          : Value(userName),
      screen:
          screen == null && nullToAbsent ? const Value.absent() : Value(screen),
      isApply: isApply == null && nullToAbsent
          ? const Value.absent()
          : Value(isApply),
      expiredDateTime: expiredDateTime == null && nullToAbsent
          ? const Value.absent()
          : Value(expiredDateTime),
      syncError: syncError == null && nullToAbsent
          ? const Value.absent()
          : Value(syncError),
    );
  }

  NonGlobalSettingData copyWith(
          {int id,
          String parentCode,
          String code,
          String value,
          String settingType,
          String deviceId,
          String userName,
          String screen,
          bool isApply,
          DateTime expiredDateTime,
          String syncError}) =>
      NonGlobalSettingData(
        id: id ?? this.id,
        parentCode: parentCode ?? this.parentCode,
        code: code ?? this.code,
        value: value ?? this.value,
        settingType: settingType ?? this.settingType,
        deviceId: deviceId ?? this.deviceId,
        userName: userName ?? this.userName,
        screen: screen ?? this.screen,
        isApply: isApply ?? this.isApply,
        expiredDateTime: expiredDateTime ?? this.expiredDateTime,
        syncError: syncError ?? this.syncError,
      );
  @override
  String toString() {
    return (StringBuffer('NonGlobalSettingData(')
          ..write('id: $id, ')
          ..write('parentCode: $parentCode, ')
          ..write('code: $code, ')
          ..write('value: $value, ')
          ..write('settingType: $settingType, ')
          ..write('deviceId: $deviceId, ')
          ..write('userName: $userName, ')
          ..write('screen: $screen, ')
          ..write('isApply: $isApply, ')
          ..write('expiredDateTime: $expiredDateTime, ')
          ..write('syncError: $syncError')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          parentCode.hashCode,
          $mrjc(
              code.hashCode,
              $mrjc(
                  value.hashCode,
                  $mrjc(
                      settingType.hashCode,
                      $mrjc(
                          deviceId.hashCode,
                          $mrjc(
                              userName.hashCode,
                              $mrjc(
                                  screen.hashCode,
                                  $mrjc(
                                      isApply.hashCode,
                                      $mrjc(expiredDateTime.hashCode,
                                          syncError.hashCode)))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is NonGlobalSettingData &&
          other.id == this.id &&
          other.parentCode == this.parentCode &&
          other.code == this.code &&
          other.value == this.value &&
          other.settingType == this.settingType &&
          other.deviceId == this.deviceId &&
          other.userName == this.userName &&
          other.screen == this.screen &&
          other.isApply == this.isApply &&
          other.expiredDateTime == this.expiredDateTime &&
          other.syncError == this.syncError);
}

class NonGlobalSettingCompanion extends UpdateCompanion<NonGlobalSettingData> {
  final Value<int> id;
  final Value<String> parentCode;
  final Value<String> code;
  final Value<String> value;
  final Value<String> settingType;
  final Value<String> deviceId;
  final Value<String> userName;
  final Value<String> screen;
  final Value<bool> isApply;
  final Value<DateTime> expiredDateTime;
  final Value<String> syncError;
  const NonGlobalSettingCompanion({
    this.id = const Value.absent(),
    this.parentCode = const Value.absent(),
    this.code = const Value.absent(),
    this.value = const Value.absent(),
    this.settingType = const Value.absent(),
    this.deviceId = const Value.absent(),
    this.userName = const Value.absent(),
    this.screen = const Value.absent(),
    this.isApply = const Value.absent(),
    this.expiredDateTime = const Value.absent(),
    this.syncError = const Value.absent(),
  });
  NonGlobalSettingCompanion.insert({
    @required int id,
    @required String parentCode,
    @required String code,
    @required String value,
    @required String settingType,
    this.deviceId = const Value.absent(),
    @required String userName,
    @required String screen,
    this.isApply = const Value.absent(),
    this.expiredDateTime = const Value.absent(),
    this.syncError = const Value.absent(),
  })  : id = Value(id),
        parentCode = Value(parentCode),
        code = Value(code),
        value = Value(value),
        settingType = Value(settingType),
        userName = Value(userName),
        screen = Value(screen);
  NonGlobalSettingCompanion copyWith(
      {Value<int> id,
      Value<String> parentCode,
      Value<String> code,
      Value<String> value,
      Value<String> settingType,
      Value<String> deviceId,
      Value<String> userName,
      Value<String> screen,
      Value<bool> isApply,
      Value<DateTime> expiredDateTime,
      Value<String> syncError}) {
    return NonGlobalSettingCompanion(
      id: id ?? this.id,
      parentCode: parentCode ?? this.parentCode,
      code: code ?? this.code,
      value: value ?? this.value,
      settingType: settingType ?? this.settingType,
      deviceId: deviceId ?? this.deviceId,
      userName: userName ?? this.userName,
      screen: screen ?? this.screen,
      isApply: isApply ?? this.isApply,
      expiredDateTime: expiredDateTime ?? this.expiredDateTime,
      syncError: syncError ?? this.syncError,
    );
  }
}

class $NonGlobalSettingTable extends NonGlobalSetting
    with TableInfo<$NonGlobalSettingTable, NonGlobalSettingData> {
  final GeneratedDatabase _db;
  final String _alias;
  $NonGlobalSettingTable(this._db, [this._alias]);
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

  final VerificationMeta _parentCodeMeta = const VerificationMeta('parentCode');
  GeneratedTextColumn _parentCode;
  @override
  GeneratedTextColumn get parentCode => _parentCode ??= _constructParentCode();
  GeneratedTextColumn _constructParentCode() {
    return GeneratedTextColumn(
      'parent_code',
      $tableName,
      false,
    );
  }

  final VerificationMeta _codeMeta = const VerificationMeta('code');
  GeneratedTextColumn _code;
  @override
  GeneratedTextColumn get code => _code ??= _constructCode();
  GeneratedTextColumn _constructCode() {
    return GeneratedTextColumn(
      'code',
      $tableName,
      false,
    );
  }

  final VerificationMeta _valueMeta = const VerificationMeta('value');
  GeneratedTextColumn _value;
  @override
  GeneratedTextColumn get value => _value ??= _constructValue();
  GeneratedTextColumn _constructValue() {
    return GeneratedTextColumn(
      'value',
      $tableName,
      false,
    );
  }

  final VerificationMeta _settingTypeMeta =
      const VerificationMeta('settingType');
  GeneratedTextColumn _settingType;
  @override
  GeneratedTextColumn get settingType =>
      _settingType ??= _constructSettingType();
  GeneratedTextColumn _constructSettingType() {
    return GeneratedTextColumn(
      'setting_type',
      $tableName,
      false,
    );
  }

  final VerificationMeta _deviceIdMeta = const VerificationMeta('deviceId');
  GeneratedTextColumn _deviceId;
  @override
  GeneratedTextColumn get deviceId => _deviceId ??= _constructDeviceId();
  GeneratedTextColumn _constructDeviceId() {
    return GeneratedTextColumn(
      'device_id',
      $tableName,
      true,
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
      false,
    );
  }

  final VerificationMeta _screenMeta = const VerificationMeta('screen');
  GeneratedTextColumn _screen;
  @override
  GeneratedTextColumn get screen => _screen ??= _constructScreen();
  GeneratedTextColumn _constructScreen() {
    return GeneratedTextColumn(
      'screen',
      $tableName,
      false,
    );
  }

  final VerificationMeta _isApplyMeta = const VerificationMeta('isApply');
  GeneratedBoolColumn _isApply;
  @override
  GeneratedBoolColumn get isApply => _isApply ??= _constructIsApply();
  GeneratedBoolColumn _constructIsApply() {
    return GeneratedBoolColumn('is_apply', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _expiredDateTimeMeta =
      const VerificationMeta('expiredDateTime');
  GeneratedDateTimeColumn _expiredDateTime;
  @override
  GeneratedDateTimeColumn get expiredDateTime =>
      _expiredDateTime ??= _constructExpiredDateTime();
  GeneratedDateTimeColumn _constructExpiredDateTime() {
    return GeneratedDateTimeColumn(
      'expired_date_time',
      $tableName,
      true,
    );
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

  @override
  List<GeneratedColumn> get $columns => [
        id,
        parentCode,
        code,
        value,
        settingType,
        deviceId,
        userName,
        screen,
        isApply,
        expiredDateTime,
        syncError
      ];
  @override
  $NonGlobalSettingTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'non_global_setting';
  @override
  final String actualTableName = 'non_global_setting';
  @override
  VerificationContext validateIntegrity(NonGlobalSettingCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (d.parentCode.present) {
      context.handle(_parentCodeMeta,
          parentCode.isAcceptableValue(d.parentCode.value, _parentCodeMeta));
    } else if (isInserting) {
      context.missing(_parentCodeMeta);
    }
    if (d.code.present) {
      context.handle(
          _codeMeta, code.isAcceptableValue(d.code.value, _codeMeta));
    } else if (isInserting) {
      context.missing(_codeMeta);
    }
    if (d.value.present) {
      context.handle(
          _valueMeta, value.isAcceptableValue(d.value.value, _valueMeta));
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    if (d.settingType.present) {
      context.handle(_settingTypeMeta,
          settingType.isAcceptableValue(d.settingType.value, _settingTypeMeta));
    } else if (isInserting) {
      context.missing(_settingTypeMeta);
    }
    if (d.deviceId.present) {
      context.handle(_deviceIdMeta,
          deviceId.isAcceptableValue(d.deviceId.value, _deviceIdMeta));
    }
    if (d.userName.present) {
      context.handle(_userNameMeta,
          userName.isAcceptableValue(d.userName.value, _userNameMeta));
    } else if (isInserting) {
      context.missing(_userNameMeta);
    }
    if (d.screen.present) {
      context.handle(
          _screenMeta, screen.isAcceptableValue(d.screen.value, _screenMeta));
    } else if (isInserting) {
      context.missing(_screenMeta);
    }
    if (d.isApply.present) {
      context.handle(_isApplyMeta,
          isApply.isAcceptableValue(d.isApply.value, _isApplyMeta));
    }
    if (d.expiredDateTime.present) {
      context.handle(
          _expiredDateTimeMeta,
          expiredDateTime.isAcceptableValue(
              d.expiredDateTime.value, _expiredDateTimeMeta));
    }
    if (d.syncError.present) {
      context.handle(_syncErrorMeta,
          syncError.isAcceptableValue(d.syncError.value, _syncErrorMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  NonGlobalSettingData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return NonGlobalSettingData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(NonGlobalSettingCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.parentCode.present) {
      map['parent_code'] = Variable<String, StringType>(d.parentCode.value);
    }
    if (d.code.present) {
      map['code'] = Variable<String, StringType>(d.code.value);
    }
    if (d.value.present) {
      map['value'] = Variable<String, StringType>(d.value.value);
    }
    if (d.settingType.present) {
      map['setting_type'] = Variable<String, StringType>(d.settingType.value);
    }
    if (d.deviceId.present) {
      map['device_id'] = Variable<String, StringType>(d.deviceId.value);
    }
    if (d.userName.present) {
      map['user_name'] = Variable<String, StringType>(d.userName.value);
    }
    if (d.screen.present) {
      map['screen'] = Variable<String, StringType>(d.screen.value);
    }
    if (d.isApply.present) {
      map['is_apply'] = Variable<bool, BoolType>(d.isApply.value);
    }
    if (d.expiredDateTime.present) {
      map['expired_date_time'] =
          Variable<DateTime, DateTimeType>(d.expiredDateTime.value);
    }
    if (d.syncError.present) {
      map['sync_error'] = Variable<String, StringType>(d.syncError.value);
    }
    return map;
  }

  @override
  $NonGlobalSettingTable createAlias(String alias) {
    return $NonGlobalSettingTable(_db, alias);
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
  $PreferenceTable _preference;
  $PreferenceTable get preference => _preference ??= $PreferenceTable(this);
  $MobileDeviceTable _mobileDevice;
  $MobileDeviceTable get mobileDevice =>
      _mobileDevice ??= $MobileDeviceTable(this);
  $BusinessRuleTable _businessRule;
  $BusinessRuleTable get businessRule =>
      _businessRule ??= $BusinessRuleTable(this);
  $ApplicationLoggerTable _applicationLogger;
  $ApplicationLoggerTable get applicationLogger =>
      _applicationLogger ??= $ApplicationLoggerTable(this);
  $TenantTable _tenant;
  $TenantTable get tenant => _tenant ??= $TenantTable(this);
  $NonGlobalSettingTable _nonGlobalSetting;
  $NonGlobalSettingTable get nonGlobalSetting =>
      _nonGlobalSetting ??= $NonGlobalSettingTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        users,
        communication,
        backgroundJobSchedule,
        backgroundJobLogs,
        preference,
        mobileDevice,
        businessRule,
        applicationLogger,
        tenant,
        nonGlobalSetting
      ];
}
