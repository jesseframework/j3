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
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
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
  final int nid;
  BackgroundJobScheduleData(
      {@required this.id,
      @required this.jobName,
      @required this.startDateTime,
      @required this.syncFrequency,
      @required this.enableJob,
      @required this.nid});
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
      nid: intType.mapFromDatabaseResponse(data['${effectivePrefix}nid']),
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
      nid: serializer.fromJson<int>(json['nid']),
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
      'nid': serializer.toJson<int>(nid),
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
      nid: nid == null && nullToAbsent ? const Value.absent() : Value(nid),
    );
  }

  BackgroundJobScheduleData copyWith(
          {int id,
          String jobName,
          DateTime startDateTime,
          String syncFrequency,
          bool enableJob,
          int nid}) =>
      BackgroundJobScheduleData(
        id: id ?? this.id,
        jobName: jobName ?? this.jobName,
        startDateTime: startDateTime ?? this.startDateTime,
        syncFrequency: syncFrequency ?? this.syncFrequency,
        enableJob: enableJob ?? this.enableJob,
        nid: nid ?? this.nid,
      );
  @override
  String toString() {
    return (StringBuffer('BackgroundJobScheduleData(')
          ..write('id: $id, ')
          ..write('jobName: $jobName, ')
          ..write('startDateTime: $startDateTime, ')
          ..write('syncFrequency: $syncFrequency, ')
          ..write('enableJob: $enableJob, ')
          ..write('nid: $nid')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          jobName.hashCode,
          $mrjc(
              startDateTime.hashCode,
              $mrjc(syncFrequency.hashCode,
                  $mrjc(enableJob.hashCode, nid.hashCode))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is BackgroundJobScheduleData &&
          other.id == this.id &&
          other.jobName == this.jobName &&
          other.startDateTime == this.startDateTime &&
          other.syncFrequency == this.syncFrequency &&
          other.enableJob == this.enableJob &&
          other.nid == this.nid);
}

class BackgroundJobScheduleCompanion
    extends UpdateCompanion<BackgroundJobScheduleData> {
  final Value<int> id;
  final Value<String> jobName;
  final Value<DateTime> startDateTime;
  final Value<String> syncFrequency;
  final Value<bool> enableJob;
  final Value<int> nid;
  const BackgroundJobScheduleCompanion({
    this.id = const Value.absent(),
    this.jobName = const Value.absent(),
    this.startDateTime = const Value.absent(),
    this.syncFrequency = const Value.absent(),
    this.enableJob = const Value.absent(),
    this.nid = const Value.absent(),
  });
  BackgroundJobScheduleCompanion.insert({
    @required int id,
    @required String jobName,
    @required DateTime startDateTime,
    @required String syncFrequency,
    this.enableJob = const Value.absent(),
    @required int nid,
  })  : id = Value(id),
        jobName = Value(jobName),
        startDateTime = Value(startDateTime),
        syncFrequency = Value(syncFrequency),
        nid = Value(nid);
  BackgroundJobScheduleCompanion copyWith(
      {Value<int> id,
      Value<String> jobName,
      Value<DateTime> startDateTime,
      Value<String> syncFrequency,
      Value<bool> enableJob,
      Value<int> nid}) {
    return BackgroundJobScheduleCompanion(
      id: id ?? this.id,
      jobName: jobName ?? this.jobName,
      startDateTime: startDateTime ?? this.startDateTime,
      syncFrequency: syncFrequency ?? this.syncFrequency,
      enableJob: enableJob ?? this.enableJob,
      nid: nid ?? this.nid,
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

  final VerificationMeta _nidMeta = const VerificationMeta('nid');
  GeneratedIntColumn _nid;
  @override
  GeneratedIntColumn get nid => _nid ??= _constructNid();
  GeneratedIntColumn _constructNid() {
    return GeneratedIntColumn(
      'nid',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, jobName, startDateTime, syncFrequency, enableJob, nid];
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
    if (d.nid.present) {
      context.handle(_nidMeta, nid.isAcceptableValue(d.nid.value, _nidMeta));
    } else if (isInserting) {
      context.missing(_nidMeta);
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
    if (d.nid.present) {
      map['nid'] = Variable<int, IntType>(d.nid.value);
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

class PrefrenceData extends DataClass implements Insertable<PrefrenceData> {
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
  final String prefrenceName;
  final String value;
  final String description;
  final String domain;
  PrefrenceData(
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
      this.prefrenceName,
      @required this.value,
      this.description,
      this.domain});
  factory PrefrenceData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    return PrefrenceData(
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
      prefrenceName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}prefrence_name']),
      value:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}value']),
      description: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      domain:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}domain']),
    );
  }
  factory PrefrenceData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return PrefrenceData(
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
      prefrenceName: serializer.fromJson<String>(json['prefrenceName']),
      value: serializer.fromJson<String>(json['value']),
      description: serializer.fromJson<String>(json['description']),
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
      'prefrenceName': serializer.toJson<String>(prefrenceName),
      'value': serializer.toJson<String>(value),
      'description': serializer.toJson<String>(description),
      'domain': serializer.toJson<String>(domain),
    };
  }

  @override
  PrefrenceCompanion createCompanion(bool nullToAbsent) {
    return PrefrenceCompanion(
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
      prefrenceName: prefrenceName == null && nullToAbsent
          ? const Value.absent()
          : Value(prefrenceName),
      value:
          value == null && nullToAbsent ? const Value.absent() : Value(value),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      domain:
          domain == null && nullToAbsent ? const Value.absent() : Value(domain),
    );
  }

  PrefrenceData copyWith(
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
          String prefrenceName,
          String value,
          String description,
          String domain}) =>
      PrefrenceData(
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
        prefrenceName: prefrenceName ?? this.prefrenceName,
        value: value ?? this.value,
        description: description ?? this.description,
        domain: domain ?? this.domain,
      );
  @override
  String toString() {
    return (StringBuffer('PrefrenceData(')
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
          ..write('prefrenceName: $prefrenceName, ')
          ..write('value: $value, ')
          ..write('description: $description, ')
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
                                                                  prefrenceName
                                                                      .hashCode,
                                                                  $mrjc(
                                                                      value
                                                                          .hashCode,
                                                                      $mrjc(
                                                                          description
                                                                              .hashCode,
                                                                          domain
                                                                              .hashCode)))))))))))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is PrefrenceData &&
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
          other.prefrenceName == this.prefrenceName &&
          other.value == this.value &&
          other.description == this.description &&
          other.domain == this.domain);
}

class PrefrenceCompanion extends UpdateCompanion<PrefrenceData> {
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
  final Value<String> prefrenceName;
  final Value<String> value;
  final Value<String> description;
  final Value<String> domain;
  const PrefrenceCompanion({
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
    this.prefrenceName = const Value.absent(),
    this.value = const Value.absent(),
    this.description = const Value.absent(),
    this.domain = const Value.absent(),
  });
  PrefrenceCompanion.insert({
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
    this.prefrenceName = const Value.absent(),
    @required String value,
    this.description = const Value.absent(),
    this.domain = const Value.absent(),
  })  : code = Value(code),
        value = Value(value);
  PrefrenceCompanion copyWith(
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
      Value<String> prefrenceName,
      Value<String> value,
      Value<String> description,
      Value<String> domain}) {
    return PrefrenceCompanion(
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
      prefrenceName: prefrenceName ?? this.prefrenceName,
      value: value ?? this.value,
      description: description ?? this.description,
      domain: domain ?? this.domain,
    );
  }
}

class $PrefrenceTable extends Prefrence
    with TableInfo<$PrefrenceTable, PrefrenceData> {
  final GeneratedDatabase _db;
  final String _alias;
  $PrefrenceTable(this._db, [this._alias]);
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

  final VerificationMeta _prefrenceNameMeta =
      const VerificationMeta('prefrenceName');
  GeneratedTextColumn _prefrenceName;
  @override
  GeneratedTextColumn get prefrenceName =>
      _prefrenceName ??= _constructPrefrenceName();
  GeneratedTextColumn _constructPrefrenceName() {
    return GeneratedTextColumn(
      'prefrence_name',
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
        prefrenceName,
        value,
        description,
        domain
      ];
  @override
  $PrefrenceTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'prefrence';
  @override
  final String actualTableName = 'prefrence';
  @override
  VerificationContext validateIntegrity(PrefrenceCompanion d,
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
    if (d.prefrenceName.present) {
      context.handle(
          _prefrenceNameMeta,
          prefrenceName.isAcceptableValue(
              d.prefrenceName.value, _prefrenceNameMeta));
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
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  PrefrenceData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return PrefrenceData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(PrefrenceCompanion d) {
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
    if (d.prefrenceName.present) {
      map['prefrence_name'] =
          Variable<String, StringType>(d.prefrenceName.value);
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
    return map;
  }

  @override
  $PrefrenceTable createAlias(String alias) {
    return $PrefrenceTable(_db, alias);
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
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
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

class Tenant extends DataClass implements Insertable<Tenant> {
  final int id;
  final String tenant;
  Tenant({@required this.id, this.tenant});
  factory Tenant.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Tenant(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      tenant:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}tenant']),
    );
  }
  factory Tenant.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Tenant(
      id: serializer.fromJson<int>(json['id']),
      tenant: serializer.fromJson<String>(json['tenant']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'tenant': serializer.toJson<String>(tenant),
    };
  }

  @override
  TenantsCompanion createCompanion(bool nullToAbsent) {
    return TenantsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      tenant:
          tenant == null && nullToAbsent ? const Value.absent() : Value(tenant),
    );
  }

  Tenant copyWith({int id, String tenant}) => Tenant(
        id: id ?? this.id,
        tenant: tenant ?? this.tenant,
      );
  @override
  String toString() {
    return (StringBuffer('Tenant(')
          ..write('id: $id, ')
          ..write('tenant: $tenant')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode, tenant.hashCode));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Tenant && other.id == this.id && other.tenant == this.tenant);
}

class TenantsCompanion extends UpdateCompanion<Tenant> {
  final Value<int> id;
  final Value<String> tenant;
  const TenantsCompanion({
    this.id = const Value.absent(),
    this.tenant = const Value.absent(),
  });
  TenantsCompanion.insert({
    @required int id,
    this.tenant = const Value.absent(),
  }) : id = Value(id);
  TenantsCompanion copyWith({Value<int> id, Value<String> tenant}) {
    return TenantsCompanion(
      id: id ?? this.id,
      tenant: tenant ?? this.tenant,
    );
  }
}

class $TenantsTable extends Tenants with TableInfo<$TenantsTable, Tenant> {
  final GeneratedDatabase _db;
  final String _alias;
  $TenantsTable(this._db, [this._alias]);
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

  final VerificationMeta _tenantMeta = const VerificationMeta('tenant');
  GeneratedTextColumn _tenant;
  @override
  GeneratedTextColumn get tenant => _tenant ??= _constructTenant();
  GeneratedTextColumn _constructTenant() {
    return GeneratedTextColumn(
      'tenant',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, tenant];
  @override
  $TenantsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'tenants';
  @override
  final String actualTableName = 'tenants';
  @override
  VerificationContext validateIntegrity(TenantsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (d.tenant.present) {
      context.handle(
          _tenantMeta, tenant.isAcceptableValue(d.tenant.value, _tenantMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  Tenant map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Tenant.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TenantsCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.tenant.present) {
      map['tenant'] = Variable<String, StringType>(d.tenant.value);
    }
    return map;
  }

  @override
  $TenantsTable createAlias(String alias) {
    return $TenantsTable(_db, alias);
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
  $PrefrenceTable _prefrence;
  $PrefrenceTable get prefrence => _prefrence ??= $PrefrenceTable(this);
  $MobileDeviceTable _mobileDevice;
  $MobileDeviceTable get mobileDevice =>
      _mobileDevice ??= $MobileDeviceTable(this);
  $TenantsTable _tenants;
  $TenantsTable get tenants => _tenants ??= $TenantsTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        users,
        communication,
        backgroundJobSchedule,
        backgroundJobLogs,
        prefrence,
        mobileDevice,
        tenants
      ];
}
