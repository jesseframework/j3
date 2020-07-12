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
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || tenantId != null) {
      map['tenant_id'] = Variable<int>(tenantId);
    }
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || userName != null) {
      map['user_name'] = Variable<String>(userName);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || surname != null) {
      map['surname'] = Variable<String>(surname);
    }
    if (!nullToAbsent || emailAddress != null) {
      map['email_address'] = Variable<String>(emailAddress);
    }
    if (!nullToAbsent || isActive != null) {
      map['is_active'] = Variable<bool>(isActive);
    }
    if (!nullToAbsent || fullName != null) {
      map['full_name'] = Variable<String>(fullName);
    }
    if (!nullToAbsent || mobileHash != null) {
      map['mobile_hash'] = Variable<String>(mobileHash);
    }
    if (!nullToAbsent || enableOfflineLogin != null) {
      map['enable_offline_login'] = Variable<bool>(enableOfflineLogin);
    }
    if (!nullToAbsent || firebaseToken != null) {
      map['firebase_token'] = Variable<String>(firebaseToken);
    }
    if (!nullToAbsent || creationTime != null) {
      map['creation_time'] = Variable<DateTime>(creationTime);
    }
    if (!nullToAbsent || lastLoginTime != null) {
      map['last_login_time'] = Variable<DateTime>(lastLoginTime);
    }
    return map;
  }

  UsersCompanion toCompanion(bool nullToAbsent) {
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
    this.id = const Value.absent(),
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
  })  : userName = Value(userName),
        name = Value(name),
        surname = Value(surname),
        emailAddress = Value(emailAddress),
        fullName = Value(fullName);
  static Insertable<User> custom({
    Expression<int> tenantId,
    Expression<int> id,
    Expression<String> userName,
    Expression<String> name,
    Expression<String> surname,
    Expression<String> emailAddress,
    Expression<bool> isActive,
    Expression<String> fullName,
    Expression<String> mobileHash,
    Expression<bool> enableOfflineLogin,
    Expression<String> firebaseToken,
    Expression<DateTime> creationTime,
    Expression<DateTime> lastLoginTime,
  }) {
    return RawValuesInsertable({
      if (tenantId != null) 'tenant_id': tenantId,
      if (id != null) 'id': id,
      if (userName != null) 'user_name': userName,
      if (name != null) 'name': name,
      if (surname != null) 'surname': surname,
      if (emailAddress != null) 'email_address': emailAddress,
      if (isActive != null) 'is_active': isActive,
      if (fullName != null) 'full_name': fullName,
      if (mobileHash != null) 'mobile_hash': mobileHash,
      if (enableOfflineLogin != null)
        'enable_offline_login': enableOfflineLogin,
      if (firebaseToken != null) 'firebase_token': firebaseToken,
      if (creationTime != null) 'creation_time': creationTime,
      if (lastLoginTime != null) 'last_login_time': lastLoginTime,
    });
  }

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

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (tenantId.present) {
      map['tenant_id'] = Variable<int>(tenantId.value);
    }
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (userName.present) {
      map['user_name'] = Variable<String>(userName.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (surname.present) {
      map['surname'] = Variable<String>(surname.value);
    }
    if (emailAddress.present) {
      map['email_address'] = Variable<String>(emailAddress.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (fullName.present) {
      map['full_name'] = Variable<String>(fullName.value);
    }
    if (mobileHash.present) {
      map['mobile_hash'] = Variable<String>(mobileHash.value);
    }
    if (enableOfflineLogin.present) {
      map['enable_offline_login'] = Variable<bool>(enableOfflineLogin.value);
    }
    if (firebaseToken.present) {
      map['firebase_token'] = Variable<String>(firebaseToken.value);
    }
    if (creationTime.present) {
      map['creation_time'] = Variable<DateTime>(creationTime.value);
    }
    if (lastLoginTime.present) {
      map['last_login_time'] = Variable<DateTime>(lastLoginTime.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsersCompanion(')
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
  VerificationContext validateIntegrity(Insertable<User> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('tenant_id')) {
      context.handle(_tenantIdMeta,
          tenantId.isAcceptableOrUnknown(data['tenant_id'], _tenantIdMeta));
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('user_name')) {
      context.handle(_userNameMeta,
          userName.isAcceptableOrUnknown(data['user_name'], _userNameMeta));
    } else if (isInserting) {
      context.missing(_userNameMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name'], _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('surname')) {
      context.handle(_surnameMeta,
          surname.isAcceptableOrUnknown(data['surname'], _surnameMeta));
    } else if (isInserting) {
      context.missing(_surnameMeta);
    }
    if (data.containsKey('email_address')) {
      context.handle(
          _emailAddressMeta,
          emailAddress.isAcceptableOrUnknown(
              data['email_address'], _emailAddressMeta));
    } else if (isInserting) {
      context.missing(_emailAddressMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(_isActiveMeta,
          isActive.isAcceptableOrUnknown(data['is_active'], _isActiveMeta));
    }
    if (data.containsKey('full_name')) {
      context.handle(_fullNameMeta,
          fullName.isAcceptableOrUnknown(data['full_name'], _fullNameMeta));
    } else if (isInserting) {
      context.missing(_fullNameMeta);
    }
    if (data.containsKey('mobile_hash')) {
      context.handle(
          _mobileHashMeta,
          mobileHash.isAcceptableOrUnknown(
              data['mobile_hash'], _mobileHashMeta));
    }
    if (data.containsKey('enable_offline_login')) {
      context.handle(
          _enableOfflineLoginMeta,
          enableOfflineLogin.isAcceptableOrUnknown(
              data['enable_offline_login'], _enableOfflineLoginMeta));
    }
    if (data.containsKey('firebase_token')) {
      context.handle(
          _firebaseTokenMeta,
          firebaseToken.isAcceptableOrUnknown(
              data['firebase_token'], _firebaseTokenMeta));
    }
    if (data.containsKey('creation_time')) {
      context.handle(
          _creationTimeMeta,
          creationTime.isAcceptableOrUnknown(
              data['creation_time'], _creationTimeMeta));
    }
    if (data.containsKey('last_login_time')) {
      context.handle(
          _lastLoginTimeMeta,
          lastLoginTime.isAcceptableOrUnknown(
              data['last_login_time'], _lastLoginTimeMeta));
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
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || creationTime != null) {
      map['creation_time'] = Variable<DateTime>(creationTime);
    }
    if (!nullToAbsent || deleteTime != null) {
      map['delete_time'] = Variable<DateTime>(deleteTime);
    }
    if (!nullToAbsent || createUserId != null) {
      map['create_user_id'] = Variable<int>(createUserId);
    }
    if (!nullToAbsent || creatorUser != null) {
      map['creator_user'] = Variable<String>(creatorUser);
    }
    if (!nullToAbsent || lastModifierUser != null) {
      map['last_modifier_user'] = Variable<String>(lastModifierUser);
    }
    if (!nullToAbsent || lastModifierUserId != null) {
      map['last_modifier_user_id'] = Variable<int>(lastModifierUserId);
    }
    if (!nullToAbsent || deleteUserId != null) {
      map['delete_user_id'] = Variable<int>(deleteUserId);
    }
    if (!nullToAbsent || deleterUserId != null) {
      map['deleter_user_id'] = Variable<String>(deleterUserId);
    }
    if (!nullToAbsent || isDeleted != null) {
      map['is_deleted'] = Variable<bool>(isDeleted);
    }
    if (!nullToAbsent || importDateTime != null) {
      map['import_date_time'] = Variable<DateTime>(importDateTime);
    }
    if (!nullToAbsent || exportDateTime != null) {
      map['export_date_time'] = Variable<DateTime>(exportDateTime);
    }
    if (!nullToAbsent || exportStatus != null) {
      map['export_status'] = Variable<String>(exportStatus);
    }
    if (!nullToAbsent || importStatus != null) {
      map['import_status'] = Variable<String>(importStatus);
    }
    if (!nullToAbsent || syncError != null) {
      map['sync_error'] = Variable<String>(syncError);
    }
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || serverUrl != null) {
      map['server_url'] = Variable<String>(serverUrl);
    }
    if (!nullToAbsent || userName != null) {
      map['user_name'] = Variable<String>(userName);
    }
    if (!nullToAbsent || newPasskey != null) {
      map['new_passkey'] = Variable<String>(newPasskey);
    }
    if (!nullToAbsent || confirmPasskey != null) {
      map['confirm_passkey'] = Variable<String>(confirmPasskey);
    }
    if (!nullToAbsent || syncFrequency != null) {
      map['sync_frequency'] = Variable<String>(syncFrequency);
    }
    if (!nullToAbsent || communicationType != null) {
      map['communication_type'] = Variable<String>(communicationType);
    }
    if (!nullToAbsent || typeofErp != null) {
      map['typeof_erp'] = Variable<String>(typeofErp);
    }
    return map;
  }

  CommunicationCompanion toCompanion(bool nullToAbsent) {
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
  static Insertable<CommunicationData> custom({
    Expression<DateTime> creationTime,
    Expression<DateTime> deleteTime,
    Expression<int> createUserId,
    Expression<String> creatorUser,
    Expression<String> lastModifierUser,
    Expression<int> lastModifierUserId,
    Expression<int> deleteUserId,
    Expression<String> deleterUserId,
    Expression<bool> isDeleted,
    Expression<DateTime> importDateTime,
    Expression<DateTime> exportDateTime,
    Expression<String> exportStatus,
    Expression<String> importStatus,
    Expression<String> syncError,
    Expression<int> id,
    Expression<String> serverUrl,
    Expression<String> userName,
    Expression<String> newPasskey,
    Expression<String> confirmPasskey,
    Expression<String> syncFrequency,
    Expression<String> communicationType,
    Expression<String> typeofErp,
  }) {
    return RawValuesInsertable({
      if (creationTime != null) 'creation_time': creationTime,
      if (deleteTime != null) 'delete_time': deleteTime,
      if (createUserId != null) 'create_user_id': createUserId,
      if (creatorUser != null) 'creator_user': creatorUser,
      if (lastModifierUser != null) 'last_modifier_user': lastModifierUser,
      if (lastModifierUserId != null)
        'last_modifier_user_id': lastModifierUserId,
      if (deleteUserId != null) 'delete_user_id': deleteUserId,
      if (deleterUserId != null) 'deleter_user_id': deleterUserId,
      if (isDeleted != null) 'is_deleted': isDeleted,
      if (importDateTime != null) 'import_date_time': importDateTime,
      if (exportDateTime != null) 'export_date_time': exportDateTime,
      if (exportStatus != null) 'export_status': exportStatus,
      if (importStatus != null) 'import_status': importStatus,
      if (syncError != null) 'sync_error': syncError,
      if (id != null) 'id': id,
      if (serverUrl != null) 'server_url': serverUrl,
      if (userName != null) 'user_name': userName,
      if (newPasskey != null) 'new_passkey': newPasskey,
      if (confirmPasskey != null) 'confirm_passkey': confirmPasskey,
      if (syncFrequency != null) 'sync_frequency': syncFrequency,
      if (communicationType != null) 'communication_type': communicationType,
      if (typeofErp != null) 'typeof_erp': typeofErp,
    });
  }

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

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (creationTime.present) {
      map['creation_time'] = Variable<DateTime>(creationTime.value);
    }
    if (deleteTime.present) {
      map['delete_time'] = Variable<DateTime>(deleteTime.value);
    }
    if (createUserId.present) {
      map['create_user_id'] = Variable<int>(createUserId.value);
    }
    if (creatorUser.present) {
      map['creator_user'] = Variable<String>(creatorUser.value);
    }
    if (lastModifierUser.present) {
      map['last_modifier_user'] = Variable<String>(lastModifierUser.value);
    }
    if (lastModifierUserId.present) {
      map['last_modifier_user_id'] = Variable<int>(lastModifierUserId.value);
    }
    if (deleteUserId.present) {
      map['delete_user_id'] = Variable<int>(deleteUserId.value);
    }
    if (deleterUserId.present) {
      map['deleter_user_id'] = Variable<String>(deleterUserId.value);
    }
    if (isDeleted.present) {
      map['is_deleted'] = Variable<bool>(isDeleted.value);
    }
    if (importDateTime.present) {
      map['import_date_time'] = Variable<DateTime>(importDateTime.value);
    }
    if (exportDateTime.present) {
      map['export_date_time'] = Variable<DateTime>(exportDateTime.value);
    }
    if (exportStatus.present) {
      map['export_status'] = Variable<String>(exportStatus.value);
    }
    if (importStatus.present) {
      map['import_status'] = Variable<String>(importStatus.value);
    }
    if (syncError.present) {
      map['sync_error'] = Variable<String>(syncError.value);
    }
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (serverUrl.present) {
      map['server_url'] = Variable<String>(serverUrl.value);
    }
    if (userName.present) {
      map['user_name'] = Variable<String>(userName.value);
    }
    if (newPasskey.present) {
      map['new_passkey'] = Variable<String>(newPasskey.value);
    }
    if (confirmPasskey.present) {
      map['confirm_passkey'] = Variable<String>(confirmPasskey.value);
    }
    if (syncFrequency.present) {
      map['sync_frequency'] = Variable<String>(syncFrequency.value);
    }
    if (communicationType.present) {
      map['communication_type'] = Variable<String>(communicationType.value);
    }
    if (typeofErp.present) {
      map['typeof_erp'] = Variable<String>(typeofErp.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CommunicationCompanion(')
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
  VerificationContext validateIntegrity(Insertable<CommunicationData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('creation_time')) {
      context.handle(
          _creationTimeMeta,
          creationTime.isAcceptableOrUnknown(
              data['creation_time'], _creationTimeMeta));
    }
    if (data.containsKey('delete_time')) {
      context.handle(
          _deleteTimeMeta,
          deleteTime.isAcceptableOrUnknown(
              data['delete_time'], _deleteTimeMeta));
    }
    if (data.containsKey('create_user_id')) {
      context.handle(
          _createUserIdMeta,
          createUserId.isAcceptableOrUnknown(
              data['create_user_id'], _createUserIdMeta));
    }
    if (data.containsKey('creator_user')) {
      context.handle(
          _creatorUserMeta,
          creatorUser.isAcceptableOrUnknown(
              data['creator_user'], _creatorUserMeta));
    }
    if (data.containsKey('last_modifier_user')) {
      context.handle(
          _lastModifierUserMeta,
          lastModifierUser.isAcceptableOrUnknown(
              data['last_modifier_user'], _lastModifierUserMeta));
    }
    if (data.containsKey('last_modifier_user_id')) {
      context.handle(
          _lastModifierUserIdMeta,
          lastModifierUserId.isAcceptableOrUnknown(
              data['last_modifier_user_id'], _lastModifierUserIdMeta));
    }
    if (data.containsKey('delete_user_id')) {
      context.handle(
          _deleteUserIdMeta,
          deleteUserId.isAcceptableOrUnknown(
              data['delete_user_id'], _deleteUserIdMeta));
    }
    if (data.containsKey('deleter_user_id')) {
      context.handle(
          _deleterUserIdMeta,
          deleterUserId.isAcceptableOrUnknown(
              data['deleter_user_id'], _deleterUserIdMeta));
    }
    if (data.containsKey('is_deleted')) {
      context.handle(_isDeletedMeta,
          isDeleted.isAcceptableOrUnknown(data['is_deleted'], _isDeletedMeta));
    }
    if (data.containsKey('import_date_time')) {
      context.handle(
          _importDateTimeMeta,
          importDateTime.isAcceptableOrUnknown(
              data['import_date_time'], _importDateTimeMeta));
    }
    if (data.containsKey('export_date_time')) {
      context.handle(
          _exportDateTimeMeta,
          exportDateTime.isAcceptableOrUnknown(
              data['export_date_time'], _exportDateTimeMeta));
    }
    if (data.containsKey('export_status')) {
      context.handle(
          _exportStatusMeta,
          exportStatus.isAcceptableOrUnknown(
              data['export_status'], _exportStatusMeta));
    }
    if (data.containsKey('import_status')) {
      context.handle(
          _importStatusMeta,
          importStatus.isAcceptableOrUnknown(
              data['import_status'], _importStatusMeta));
    }
    if (data.containsKey('sync_error')) {
      context.handle(_syncErrorMeta,
          syncError.isAcceptableOrUnknown(data['sync_error'], _syncErrorMeta));
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('server_url')) {
      context.handle(_serverUrlMeta,
          serverUrl.isAcceptableOrUnknown(data['server_url'], _serverUrlMeta));
    } else if (isInserting) {
      context.missing(_serverUrlMeta);
    }
    if (data.containsKey('user_name')) {
      context.handle(_userNameMeta,
          userName.isAcceptableOrUnknown(data['user_name'], _userNameMeta));
    }
    if (data.containsKey('new_passkey')) {
      context.handle(
          _newPasskeyMeta,
          newPasskey.isAcceptableOrUnknown(
              data['new_passkey'], _newPasskeyMeta));
    }
    if (data.containsKey('confirm_passkey')) {
      context.handle(
          _confirmPasskeyMeta,
          confirmPasskey.isAcceptableOrUnknown(
              data['confirm_passkey'], _confirmPasskeyMeta));
    }
    if (data.containsKey('sync_frequency')) {
      context.handle(
          _syncFrequencyMeta,
          syncFrequency.isAcceptableOrUnknown(
              data['sync_frequency'], _syncFrequencyMeta));
    } else if (isInserting) {
      context.missing(_syncFrequencyMeta);
    }
    if (data.containsKey('communication_type')) {
      context.handle(
          _communicationTypeMeta,
          communicationType.isAcceptableOrUnknown(
              data['communication_type'], _communicationTypeMeta));
    } else if (isInserting) {
      context.missing(_communicationTypeMeta);
    }
    if (data.containsKey('typeof_erp')) {
      context.handle(_typeofErpMeta,
          typeofErp.isAcceptableOrUnknown(data['typeof_erp'], _typeofErpMeta));
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
  final DateTime lastRun;
  final String jobStatus;
  BackgroundJobScheduleData(
      {@required this.id,
      @required this.jobName,
      @required this.startDateTime,
      @required this.syncFrequency,
      @required this.enableJob,
      @required this.lastRun,
      @required this.jobStatus});
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
      lastRun: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}last_run']),
      jobStatus: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}job_status']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || jobName != null) {
      map['job_name'] = Variable<String>(jobName);
    }
    if (!nullToAbsent || startDateTime != null) {
      map['start_date_time'] = Variable<DateTime>(startDateTime);
    }
    if (!nullToAbsent || syncFrequency != null) {
      map['sync_frequency'] = Variable<String>(syncFrequency);
    }
    if (!nullToAbsent || enableJob != null) {
      map['enable_job'] = Variable<bool>(enableJob);
    }
    if (!nullToAbsent || lastRun != null) {
      map['last_run'] = Variable<DateTime>(lastRun);
    }
    if (!nullToAbsent || jobStatus != null) {
      map['job_status'] = Variable<String>(jobStatus);
    }
    return map;
  }

  BackgroundJobScheduleCompanion toCompanion(bool nullToAbsent) {
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
      lastRun: lastRun == null && nullToAbsent
          ? const Value.absent()
          : Value(lastRun),
      jobStatus: jobStatus == null && nullToAbsent
          ? const Value.absent()
          : Value(jobStatus),
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
      lastRun: serializer.fromJson<DateTime>(json['lastRun']),
      jobStatus: serializer.fromJson<String>(json['jobStatus']),
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
      'lastRun': serializer.toJson<DateTime>(lastRun),
      'jobStatus': serializer.toJson<String>(jobStatus),
    };
  }

  BackgroundJobScheduleData copyWith(
          {int id,
          String jobName,
          DateTime startDateTime,
          String syncFrequency,
          bool enableJob,
          DateTime lastRun,
          String jobStatus}) =>
      BackgroundJobScheduleData(
        id: id ?? this.id,
        jobName: jobName ?? this.jobName,
        startDateTime: startDateTime ?? this.startDateTime,
        syncFrequency: syncFrequency ?? this.syncFrequency,
        enableJob: enableJob ?? this.enableJob,
        lastRun: lastRun ?? this.lastRun,
        jobStatus: jobStatus ?? this.jobStatus,
      );
  @override
  String toString() {
    return (StringBuffer('BackgroundJobScheduleData(')
          ..write('id: $id, ')
          ..write('jobName: $jobName, ')
          ..write('startDateTime: $startDateTime, ')
          ..write('syncFrequency: $syncFrequency, ')
          ..write('enableJob: $enableJob, ')
          ..write('lastRun: $lastRun, ')
          ..write('jobStatus: $jobStatus')
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
              $mrjc(
                  syncFrequency.hashCode,
                  $mrjc(enableJob.hashCode,
                      $mrjc(lastRun.hashCode, jobStatus.hashCode)))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is BackgroundJobScheduleData &&
          other.id == this.id &&
          other.jobName == this.jobName &&
          other.startDateTime == this.startDateTime &&
          other.syncFrequency == this.syncFrequency &&
          other.enableJob == this.enableJob &&
          other.lastRun == this.lastRun &&
          other.jobStatus == this.jobStatus);
}

class BackgroundJobScheduleCompanion
    extends UpdateCompanion<BackgroundJobScheduleData> {
  final Value<int> id;
  final Value<String> jobName;
  final Value<DateTime> startDateTime;
  final Value<String> syncFrequency;
  final Value<bool> enableJob;
  final Value<DateTime> lastRun;
  final Value<String> jobStatus;
  const BackgroundJobScheduleCompanion({
    this.id = const Value.absent(),
    this.jobName = const Value.absent(),
    this.startDateTime = const Value.absent(),
    this.syncFrequency = const Value.absent(),
    this.enableJob = const Value.absent(),
    this.lastRun = const Value.absent(),
    this.jobStatus = const Value.absent(),
  });
  BackgroundJobScheduleCompanion.insert({
    this.id = const Value.absent(),
    @required String jobName,
    @required DateTime startDateTime,
    @required String syncFrequency,
    this.enableJob = const Value.absent(),
    @required DateTime lastRun,
    @required String jobStatus,
  })  : jobName = Value(jobName),
        startDateTime = Value(startDateTime),
        syncFrequency = Value(syncFrequency),
        lastRun = Value(lastRun),
        jobStatus = Value(jobStatus);
  static Insertable<BackgroundJobScheduleData> custom({
    Expression<int> id,
    Expression<String> jobName,
    Expression<DateTime> startDateTime,
    Expression<String> syncFrequency,
    Expression<bool> enableJob,
    Expression<DateTime> lastRun,
    Expression<String> jobStatus,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (jobName != null) 'job_name': jobName,
      if (startDateTime != null) 'start_date_time': startDateTime,
      if (syncFrequency != null) 'sync_frequency': syncFrequency,
      if (enableJob != null) 'enable_job': enableJob,
      if (lastRun != null) 'last_run': lastRun,
      if (jobStatus != null) 'job_status': jobStatus,
    });
  }

  BackgroundJobScheduleCompanion copyWith(
      {Value<int> id,
      Value<String> jobName,
      Value<DateTime> startDateTime,
      Value<String> syncFrequency,
      Value<bool> enableJob,
      Value<DateTime> lastRun,
      Value<String> jobStatus}) {
    return BackgroundJobScheduleCompanion(
      id: id ?? this.id,
      jobName: jobName ?? this.jobName,
      startDateTime: startDateTime ?? this.startDateTime,
      syncFrequency: syncFrequency ?? this.syncFrequency,
      enableJob: enableJob ?? this.enableJob,
      lastRun: lastRun ?? this.lastRun,
      jobStatus: jobStatus ?? this.jobStatus,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (jobName.present) {
      map['job_name'] = Variable<String>(jobName.value);
    }
    if (startDateTime.present) {
      map['start_date_time'] = Variable<DateTime>(startDateTime.value);
    }
    if (syncFrequency.present) {
      map['sync_frequency'] = Variable<String>(syncFrequency.value);
    }
    if (enableJob.present) {
      map['enable_job'] = Variable<bool>(enableJob.value);
    }
    if (lastRun.present) {
      map['last_run'] = Variable<DateTime>(lastRun.value);
    }
    if (jobStatus.present) {
      map['job_status'] = Variable<String>(jobStatus.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BackgroundJobScheduleCompanion(')
          ..write('id: $id, ')
          ..write('jobName: $jobName, ')
          ..write('startDateTime: $startDateTime, ')
          ..write('syncFrequency: $syncFrequency, ')
          ..write('enableJob: $enableJob, ')
          ..write('lastRun: $lastRun, ')
          ..write('jobStatus: $jobStatus')
          ..write(')'))
        .toString();
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

  @override
  List<GeneratedColumn> get $columns => [
        id,
        jobName,
        startDateTime,
        syncFrequency,
        enableJob,
        lastRun,
        jobStatus
      ];
  @override
  $BackgroundJobScheduleTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'background_job_schedule';
  @override
  final String actualTableName = 'background_job_schedule';
  @override
  VerificationContext validateIntegrity(
      Insertable<BackgroundJobScheduleData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('job_name')) {
      context.handle(_jobNameMeta,
          jobName.isAcceptableOrUnknown(data['job_name'], _jobNameMeta));
    } else if (isInserting) {
      context.missing(_jobNameMeta);
    }
    if (data.containsKey('start_date_time')) {
      context.handle(
          _startDateTimeMeta,
          startDateTime.isAcceptableOrUnknown(
              data['start_date_time'], _startDateTimeMeta));
    } else if (isInserting) {
      context.missing(_startDateTimeMeta);
    }
    if (data.containsKey('sync_frequency')) {
      context.handle(
          _syncFrequencyMeta,
          syncFrequency.isAcceptableOrUnknown(
              data['sync_frequency'], _syncFrequencyMeta));
    } else if (isInserting) {
      context.missing(_syncFrequencyMeta);
    }
    if (data.containsKey('enable_job')) {
      context.handle(_enableJobMeta,
          enableJob.isAcceptableOrUnknown(data['enable_job'], _enableJobMeta));
    }
    if (data.containsKey('last_run')) {
      context.handle(_lastRunMeta,
          lastRun.isAcceptableOrUnknown(data['last_run'], _lastRunMeta));
    } else if (isInserting) {
      context.missing(_lastRunMeta);
    }
    if (data.containsKey('job_status')) {
      context.handle(_jobStatusMeta,
          jobStatus.isAcceptableOrUnknown(data['job_status'], _jobStatusMeta));
    } else if (isInserting) {
      context.missing(_jobStatusMeta);
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
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || jobName != null) {
      map['job_name'] = Variable<String>(jobName);
    }
    if (!nullToAbsent || lastRun != null) {
      map['last_run'] = Variable<DateTime>(lastRun);
    }
    if (!nullToAbsent || jobStatus != null) {
      map['job_status'] = Variable<String>(jobStatus);
    }
    if (!nullToAbsent || jobDescription != null) {
      map['job_description'] = Variable<String>(jobDescription);
    }
    return map;
  }

  BackgroundJobLogsCompanion toCompanion(bool nullToAbsent) {
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
    this.id = const Value.absent(),
    @required String jobName,
    @required DateTime lastRun,
    @required String jobStatus,
    @required String jobDescription,
  })  : jobName = Value(jobName),
        lastRun = Value(lastRun),
        jobStatus = Value(jobStatus),
        jobDescription = Value(jobDescription);
  static Insertable<BackgroundJobLog> custom({
    Expression<int> id,
    Expression<String> jobName,
    Expression<DateTime> lastRun,
    Expression<String> jobStatus,
    Expression<String> jobDescription,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (jobName != null) 'job_name': jobName,
      if (lastRun != null) 'last_run': lastRun,
      if (jobStatus != null) 'job_status': jobStatus,
      if (jobDescription != null) 'job_description': jobDescription,
    });
  }

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

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (jobName.present) {
      map['job_name'] = Variable<String>(jobName.value);
    }
    if (lastRun.present) {
      map['last_run'] = Variable<DateTime>(lastRun.value);
    }
    if (jobStatus.present) {
      map['job_status'] = Variable<String>(jobStatus.value);
    }
    if (jobDescription.present) {
      map['job_description'] = Variable<String>(jobDescription.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BackgroundJobLogsCompanion(')
          ..write('id: $id, ')
          ..write('jobName: $jobName, ')
          ..write('lastRun: $lastRun, ')
          ..write('jobStatus: $jobStatus, ')
          ..write('jobDescription: $jobDescription')
          ..write(')'))
        .toString();
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
  VerificationContext validateIntegrity(Insertable<BackgroundJobLog> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('job_name')) {
      context.handle(_jobNameMeta,
          jobName.isAcceptableOrUnknown(data['job_name'], _jobNameMeta));
    } else if (isInserting) {
      context.missing(_jobNameMeta);
    }
    if (data.containsKey('last_run')) {
      context.handle(_lastRunMeta,
          lastRun.isAcceptableOrUnknown(data['last_run'], _lastRunMeta));
    } else if (isInserting) {
      context.missing(_lastRunMeta);
    }
    if (data.containsKey('job_status')) {
      context.handle(_jobStatusMeta,
          jobStatus.isAcceptableOrUnknown(data['job_status'], _jobStatusMeta));
    } else if (isInserting) {
      context.missing(_jobStatusMeta);
    }
    if (data.containsKey('job_description')) {
      context.handle(
          _jobDescriptionMeta,
          jobDescription.isAcceptableOrUnknown(
              data['job_description'], _jobDescriptionMeta));
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
  final String syncError;
  final DateTime expiredDateTime;
  final String dataType;
  final String dataValue;
  final String groups;
  PreferenceData(
      {@required this.id,
      @required this.tenantId,
      @required this.code,
      this.preferenceName,
      @required this.value,
      this.description,
      this.domain,
      @required this.isGlobal,
      this.syncError,
      this.expiredDateTime,
      this.dataType,
      this.dataValue,
      this.groups});
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
      syncError: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}sync_error']),
      expiredDateTime: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}expired_date_time']),
      dataType: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}data_type']),
      dataValue: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}data_value']),
      groups:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}groups']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || tenantId != null) {
      map['tenant_id'] = Variable<int>(tenantId);
    }
    if (!nullToAbsent || code != null) {
      map['code'] = Variable<String>(code);
    }
    if (!nullToAbsent || preferenceName != null) {
      map['preference_name'] = Variable<String>(preferenceName);
    }
    if (!nullToAbsent || value != null) {
      map['value'] = Variable<String>(value);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || domain != null) {
      map['domain'] = Variable<String>(domain);
    }
    if (!nullToAbsent || isGlobal != null) {
      map['is_global'] = Variable<bool>(isGlobal);
    }
    if (!nullToAbsent || syncError != null) {
      map['sync_error'] = Variable<String>(syncError);
    }
    if (!nullToAbsent || expiredDateTime != null) {
      map['expired_date_time'] = Variable<DateTime>(expiredDateTime);
    }
    if (!nullToAbsent || dataType != null) {
      map['data_type'] = Variable<String>(dataType);
    }
    if (!nullToAbsent || dataValue != null) {
      map['data_value'] = Variable<String>(dataValue);
    }
    if (!nullToAbsent || groups != null) {
      map['groups'] = Variable<String>(groups);
    }
    return map;
  }

  PreferenceCompanion toCompanion(bool nullToAbsent) {
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
      syncError: syncError == null && nullToAbsent
          ? const Value.absent()
          : Value(syncError),
      expiredDateTime: expiredDateTime == null && nullToAbsent
          ? const Value.absent()
          : Value(expiredDateTime),
      dataType: dataType == null && nullToAbsent
          ? const Value.absent()
          : Value(dataType),
      dataValue: dataValue == null && nullToAbsent
          ? const Value.absent()
          : Value(dataValue),
      groups:
          groups == null && nullToAbsent ? const Value.absent() : Value(groups),
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
      syncError: serializer.fromJson<String>(json['syncError']),
      expiredDateTime: serializer.fromJson<DateTime>(json['expiredDateTime']),
      dataType: serializer.fromJson<String>(json['dataType']),
      dataValue: serializer.fromJson<String>(json['dataValue']),
      groups: serializer.fromJson<String>(json['groups']),
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
      'syncError': serializer.toJson<String>(syncError),
      'expiredDateTime': serializer.toJson<DateTime>(expiredDateTime),
      'dataType': serializer.toJson<String>(dataType),
      'dataValue': serializer.toJson<String>(dataValue),
      'groups': serializer.toJson<String>(groups),
    };
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
          String syncError,
          DateTime expiredDateTime,
          String dataType,
          String dataValue,
          String groups}) =>
      PreferenceData(
        id: id ?? this.id,
        tenantId: tenantId ?? this.tenantId,
        code: code ?? this.code,
        preferenceName: preferenceName ?? this.preferenceName,
        value: value ?? this.value,
        description: description ?? this.description,
        domain: domain ?? this.domain,
        isGlobal: isGlobal ?? this.isGlobal,
        syncError: syncError ?? this.syncError,
        expiredDateTime: expiredDateTime ?? this.expiredDateTime,
        dataType: dataType ?? this.dataType,
        dataValue: dataValue ?? this.dataValue,
        groups: groups ?? this.groups,
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
          ..write('syncError: $syncError, ')
          ..write('expiredDateTime: $expiredDateTime, ')
          ..write('dataType: $dataType, ')
          ..write('dataValue: $dataValue, ')
          ..write('groups: $groups')
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
                                      syncError.hashCode,
                                      $mrjc(
                                          expiredDateTime.hashCode,
                                          $mrjc(
                                              dataType.hashCode,
                                              $mrjc(dataValue.hashCode,
                                                  groups.hashCode)))))))))))));
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
          other.syncError == this.syncError &&
          other.expiredDateTime == this.expiredDateTime &&
          other.dataType == this.dataType &&
          other.dataValue == this.dataValue &&
          other.groups == this.groups);
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
  final Value<String> syncError;
  final Value<DateTime> expiredDateTime;
  final Value<String> dataType;
  final Value<String> dataValue;
  final Value<String> groups;
  const PreferenceCompanion({
    this.id = const Value.absent(),
    this.tenantId = const Value.absent(),
    this.code = const Value.absent(),
    this.preferenceName = const Value.absent(),
    this.value = const Value.absent(),
    this.description = const Value.absent(),
    this.domain = const Value.absent(),
    this.isGlobal = const Value.absent(),
    this.syncError = const Value.absent(),
    this.expiredDateTime = const Value.absent(),
    this.dataType = const Value.absent(),
    this.dataValue = const Value.absent(),
    this.groups = const Value.absent(),
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
    this.syncError = const Value.absent(),
    this.expiredDateTime = const Value.absent(),
    this.dataType = const Value.absent(),
    this.dataValue = const Value.absent(),
    this.groups = const Value.absent(),
  })  : tenantId = Value(tenantId),
        code = Value(code),
        value = Value(value);
  static Insertable<PreferenceData> custom({
    Expression<int> id,
    Expression<int> tenantId,
    Expression<String> code,
    Expression<String> preferenceName,
    Expression<String> value,
    Expression<String> description,
    Expression<String> domain,
    Expression<bool> isGlobal,
    Expression<String> syncError,
    Expression<DateTime> expiredDateTime,
    Expression<String> dataType,
    Expression<String> dataValue,
    Expression<String> groups,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (tenantId != null) 'tenant_id': tenantId,
      if (code != null) 'code': code,
      if (preferenceName != null) 'preference_name': preferenceName,
      if (value != null) 'value': value,
      if (description != null) 'description': description,
      if (domain != null) 'domain': domain,
      if (isGlobal != null) 'is_global': isGlobal,
      if (syncError != null) 'sync_error': syncError,
      if (expiredDateTime != null) 'expired_date_time': expiredDateTime,
      if (dataType != null) 'data_type': dataType,
      if (dataValue != null) 'data_value': dataValue,
      if (groups != null) 'groups': groups,
    });
  }

  PreferenceCompanion copyWith(
      {Value<int> id,
      Value<int> tenantId,
      Value<String> code,
      Value<String> preferenceName,
      Value<String> value,
      Value<String> description,
      Value<String> domain,
      Value<bool> isGlobal,
      Value<String> syncError,
      Value<DateTime> expiredDateTime,
      Value<String> dataType,
      Value<String> dataValue,
      Value<String> groups}) {
    return PreferenceCompanion(
      id: id ?? this.id,
      tenantId: tenantId ?? this.tenantId,
      code: code ?? this.code,
      preferenceName: preferenceName ?? this.preferenceName,
      value: value ?? this.value,
      description: description ?? this.description,
      domain: domain ?? this.domain,
      isGlobal: isGlobal ?? this.isGlobal,
      syncError: syncError ?? this.syncError,
      expiredDateTime: expiredDateTime ?? this.expiredDateTime,
      dataType: dataType ?? this.dataType,
      dataValue: dataValue ?? this.dataValue,
      groups: groups ?? this.groups,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (tenantId.present) {
      map['tenant_id'] = Variable<int>(tenantId.value);
    }
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (preferenceName.present) {
      map['preference_name'] = Variable<String>(preferenceName.value);
    }
    if (value.present) {
      map['value'] = Variable<String>(value.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (domain.present) {
      map['domain'] = Variable<String>(domain.value);
    }
    if (isGlobal.present) {
      map['is_global'] = Variable<bool>(isGlobal.value);
    }
    if (syncError.present) {
      map['sync_error'] = Variable<String>(syncError.value);
    }
    if (expiredDateTime.present) {
      map['expired_date_time'] = Variable<DateTime>(expiredDateTime.value);
    }
    if (dataType.present) {
      map['data_type'] = Variable<String>(dataType.value);
    }
    if (dataValue.present) {
      map['data_value'] = Variable<String>(dataValue.value);
    }
    if (groups.present) {
      map['groups'] = Variable<String>(groups.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PreferenceCompanion(')
          ..write('id: $id, ')
          ..write('tenantId: $tenantId, ')
          ..write('code: $code, ')
          ..write('preferenceName: $preferenceName, ')
          ..write('value: $value, ')
          ..write('description: $description, ')
          ..write('domain: $domain, ')
          ..write('isGlobal: $isGlobal, ')
          ..write('syncError: $syncError, ')
          ..write('expiredDateTime: $expiredDateTime, ')
          ..write('dataType: $dataType, ')
          ..write('dataValue: $dataValue, ')
          ..write('groups: $groups')
          ..write(')'))
        .toString();
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
    return GeneratedIntColumn(
      'id',
      $tableName,
      false,
    );
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

  final VerificationMeta _dataTypeMeta = const VerificationMeta('dataType');
  GeneratedTextColumn _dataType;
  @override
  GeneratedTextColumn get dataType => _dataType ??= _constructDataType();
  GeneratedTextColumn _constructDataType() {
    return GeneratedTextColumn(
      'data_type',
      $tableName,
      true,
    );
  }

  final VerificationMeta _dataValueMeta = const VerificationMeta('dataValue');
  GeneratedTextColumn _dataValue;
  @override
  GeneratedTextColumn get dataValue => _dataValue ??= _constructDataValue();
  GeneratedTextColumn _constructDataValue() {
    return GeneratedTextColumn(
      'data_value',
      $tableName,
      true,
    );
  }

  final VerificationMeta _groupsMeta = const VerificationMeta('groups');
  GeneratedTextColumn _groups;
  @override
  GeneratedTextColumn get groups => _groups ??= _constructGroups();
  GeneratedTextColumn _constructGroups() {
    return GeneratedTextColumn(
      'groups',
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
        syncError,
        expiredDateTime,
        dataType,
        dataValue,
        groups
      ];
  @override
  $PreferenceTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'preference';
  @override
  final String actualTableName = 'preference';
  @override
  VerificationContext validateIntegrity(Insertable<PreferenceData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('tenant_id')) {
      context.handle(_tenantIdMeta,
          tenantId.isAcceptableOrUnknown(data['tenant_id'], _tenantIdMeta));
    } else if (isInserting) {
      context.missing(_tenantIdMeta);
    }
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code'], _codeMeta));
    } else if (isInserting) {
      context.missing(_codeMeta);
    }
    if (data.containsKey('preference_name')) {
      context.handle(
          _preferenceNameMeta,
          preferenceName.isAcceptableOrUnknown(
              data['preference_name'], _preferenceNameMeta));
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value'], _valueMeta));
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description'], _descriptionMeta));
    }
    if (data.containsKey('domain')) {
      context.handle(_domainMeta,
          domain.isAcceptableOrUnknown(data['domain'], _domainMeta));
    }
    if (data.containsKey('is_global')) {
      context.handle(_isGlobalMeta,
          isGlobal.isAcceptableOrUnknown(data['is_global'], _isGlobalMeta));
    }
    if (data.containsKey('sync_error')) {
      context.handle(_syncErrorMeta,
          syncError.isAcceptableOrUnknown(data['sync_error'], _syncErrorMeta));
    }
    if (data.containsKey('expired_date_time')) {
      context.handle(
          _expiredDateTimeMeta,
          expiredDateTime.isAcceptableOrUnknown(
              data['expired_date_time'], _expiredDateTimeMeta));
    }
    if (data.containsKey('data_type')) {
      context.handle(_dataTypeMeta,
          dataType.isAcceptableOrUnknown(data['data_type'], _dataTypeMeta));
    }
    if (data.containsKey('data_value')) {
      context.handle(_dataValueMeta,
          dataValue.isAcceptableOrUnknown(data['data_value'], _dataValueMeta));
    }
    if (data.containsKey('groups')) {
      context.handle(_groupsMeta,
          groups.isAcceptableOrUnknown(data['groups'], _groupsMeta));
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
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || creationTime != null) {
      map['creation_time'] = Variable<DateTime>(creationTime);
    }
    if (!nullToAbsent || deleteTime != null) {
      map['delete_time'] = Variable<DateTime>(deleteTime);
    }
    if (!nullToAbsent || createUserId != null) {
      map['create_user_id'] = Variable<int>(createUserId);
    }
    if (!nullToAbsent || creatorUser != null) {
      map['creator_user'] = Variable<String>(creatorUser);
    }
    if (!nullToAbsent || lastModifierUser != null) {
      map['last_modifier_user'] = Variable<String>(lastModifierUser);
    }
    if (!nullToAbsent || lastModifierUserId != null) {
      map['last_modifier_user_id'] = Variable<int>(lastModifierUserId);
    }
    if (!nullToAbsent || deleteUserId != null) {
      map['delete_user_id'] = Variable<int>(deleteUserId);
    }
    if (!nullToAbsent || deleterUserId != null) {
      map['deleter_user_id'] = Variable<String>(deleterUserId);
    }
    if (!nullToAbsent || isDeleted != null) {
      map['is_deleted'] = Variable<bool>(isDeleted);
    }
    if (!nullToAbsent || importDateTime != null) {
      map['import_date_time'] = Variable<DateTime>(importDateTime);
    }
    if (!nullToAbsent || exportDateTime != null) {
      map['export_date_time'] = Variable<DateTime>(exportDateTime);
    }
    if (!nullToAbsent || exportStatus != null) {
      map['export_status'] = Variable<String>(exportStatus);
    }
    if (!nullToAbsent || importStatus != null) {
      map['import_status'] = Variable<String>(importStatus);
    }
    if (!nullToAbsent || syncError != null) {
      map['sync_error'] = Variable<String>(syncError);
    }
    if (!nullToAbsent || deviceId != null) {
      map['device_id'] = Variable<String>(deviceId);
    }
    if (!nullToAbsent || deviceName != null) {
      map['device_name'] = Variable<String>(deviceName);
    }
    if (!nullToAbsent || versionRelease != null) {
      map['version_release'] = Variable<String>(versionRelease);
    }
    if (!nullToAbsent || versionEnvrement != null) {
      map['version_envrement'] = Variable<String>(versionEnvrement);
    }
    if (!nullToAbsent || bootLoader != null) {
      map['boot_loader'] = Variable<String>(bootLoader);
    }
    if (!nullToAbsent || manufacture != null) {
      map['manufacture'] = Variable<String>(manufacture);
    }
    if (!nullToAbsent || model != null) {
      map['model'] = Variable<String>(model);
    }
    if (!nullToAbsent || sdkNumber != null) {
      map['sdk_number'] = Variable<int>(sdkNumber);
    }
    if (!nullToAbsent || hardware != null) {
      map['hardware'] = Variable<String>(hardware);
    }
    if (!nullToAbsent || deviceHost != null) {
      map['device_host'] = Variable<String>(deviceHost);
    }
    if (!nullToAbsent || deviceTime != null) {
      map['device_time'] = Variable<DateTime>(deviceTime);
    }
    if (!nullToAbsent || deviceSerial != null) {
      map['device_serial'] = Variable<String>(deviceSerial);
    }
    if (!nullToAbsent || deviceMac != null) {
      map['device_mac'] = Variable<String>(deviceMac);
    }
    if (!nullToAbsent || deviceIp != null) {
      map['device_ip'] = Variable<String>(deviceIp);
    }
    if (!nullToAbsent || deviceMode != null) {
      map['device_mode'] = Variable<String>(deviceMode);
    }
    if (!nullToAbsent || activationDate != null) {
      map['activation_date'] = Variable<DateTime>(activationDate);
    }
    if (!nullToAbsent || expirationDate != null) {
      map['expiration_date'] = Variable<DateTime>(expirationDate);
    }
    if (!nullToAbsent || deviceStatus != null) {
      map['device_status'] = Variable<int>(deviceStatus);
    }
    if (!nullToAbsent || companyName != null) {
      map['company_name'] = Variable<String>(companyName);
    }
    if (!nullToAbsent || deviceNickName != null) {
      map['device_nick_name'] = Variable<String>(deviceNickName);
    }
    if (!nullToAbsent || latitude != null) {
      map['latitude'] = Variable<double>(latitude);
    }
    if (!nullToAbsent || longitude != null) {
      map['longitude'] = Variable<double>(longitude);
    }
    return map;
  }

  MobileDeviceCompanion toCompanion(bool nullToAbsent) {
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
  static Insertable<MobileDeviceData> custom({
    Expression<DateTime> creationTime,
    Expression<DateTime> deleteTime,
    Expression<int> createUserId,
    Expression<String> creatorUser,
    Expression<String> lastModifierUser,
    Expression<int> lastModifierUserId,
    Expression<int> deleteUserId,
    Expression<String> deleterUserId,
    Expression<bool> isDeleted,
    Expression<DateTime> importDateTime,
    Expression<DateTime> exportDateTime,
    Expression<String> exportStatus,
    Expression<String> importStatus,
    Expression<String> syncError,
    Expression<String> deviceId,
    Expression<String> deviceName,
    Expression<String> versionRelease,
    Expression<String> versionEnvrement,
    Expression<String> bootLoader,
    Expression<String> manufacture,
    Expression<String> model,
    Expression<int> sdkNumber,
    Expression<String> hardware,
    Expression<String> deviceHost,
    Expression<DateTime> deviceTime,
    Expression<String> deviceSerial,
    Expression<String> deviceMac,
    Expression<String> deviceIp,
    Expression<String> deviceMode,
    Expression<DateTime> activationDate,
    Expression<DateTime> expirationDate,
    Expression<int> deviceStatus,
    Expression<String> companyName,
    Expression<String> deviceNickName,
    Expression<double> latitude,
    Expression<double> longitude,
  }) {
    return RawValuesInsertable({
      if (creationTime != null) 'creation_time': creationTime,
      if (deleteTime != null) 'delete_time': deleteTime,
      if (createUserId != null) 'create_user_id': createUserId,
      if (creatorUser != null) 'creator_user': creatorUser,
      if (lastModifierUser != null) 'last_modifier_user': lastModifierUser,
      if (lastModifierUserId != null)
        'last_modifier_user_id': lastModifierUserId,
      if (deleteUserId != null) 'delete_user_id': deleteUserId,
      if (deleterUserId != null) 'deleter_user_id': deleterUserId,
      if (isDeleted != null) 'is_deleted': isDeleted,
      if (importDateTime != null) 'import_date_time': importDateTime,
      if (exportDateTime != null) 'export_date_time': exportDateTime,
      if (exportStatus != null) 'export_status': exportStatus,
      if (importStatus != null) 'import_status': importStatus,
      if (syncError != null) 'sync_error': syncError,
      if (deviceId != null) 'device_id': deviceId,
      if (deviceName != null) 'device_name': deviceName,
      if (versionRelease != null) 'version_release': versionRelease,
      if (versionEnvrement != null) 'version_envrement': versionEnvrement,
      if (bootLoader != null) 'boot_loader': bootLoader,
      if (manufacture != null) 'manufacture': manufacture,
      if (model != null) 'model': model,
      if (sdkNumber != null) 'sdk_number': sdkNumber,
      if (hardware != null) 'hardware': hardware,
      if (deviceHost != null) 'device_host': deviceHost,
      if (deviceTime != null) 'device_time': deviceTime,
      if (deviceSerial != null) 'device_serial': deviceSerial,
      if (deviceMac != null) 'device_mac': deviceMac,
      if (deviceIp != null) 'device_ip': deviceIp,
      if (deviceMode != null) 'device_mode': deviceMode,
      if (activationDate != null) 'activation_date': activationDate,
      if (expirationDate != null) 'expiration_date': expirationDate,
      if (deviceStatus != null) 'device_status': deviceStatus,
      if (companyName != null) 'company_name': companyName,
      if (deviceNickName != null) 'device_nick_name': deviceNickName,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
    });
  }

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

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (creationTime.present) {
      map['creation_time'] = Variable<DateTime>(creationTime.value);
    }
    if (deleteTime.present) {
      map['delete_time'] = Variable<DateTime>(deleteTime.value);
    }
    if (createUserId.present) {
      map['create_user_id'] = Variable<int>(createUserId.value);
    }
    if (creatorUser.present) {
      map['creator_user'] = Variable<String>(creatorUser.value);
    }
    if (lastModifierUser.present) {
      map['last_modifier_user'] = Variable<String>(lastModifierUser.value);
    }
    if (lastModifierUserId.present) {
      map['last_modifier_user_id'] = Variable<int>(lastModifierUserId.value);
    }
    if (deleteUserId.present) {
      map['delete_user_id'] = Variable<int>(deleteUserId.value);
    }
    if (deleterUserId.present) {
      map['deleter_user_id'] = Variable<String>(deleterUserId.value);
    }
    if (isDeleted.present) {
      map['is_deleted'] = Variable<bool>(isDeleted.value);
    }
    if (importDateTime.present) {
      map['import_date_time'] = Variable<DateTime>(importDateTime.value);
    }
    if (exportDateTime.present) {
      map['export_date_time'] = Variable<DateTime>(exportDateTime.value);
    }
    if (exportStatus.present) {
      map['export_status'] = Variable<String>(exportStatus.value);
    }
    if (importStatus.present) {
      map['import_status'] = Variable<String>(importStatus.value);
    }
    if (syncError.present) {
      map['sync_error'] = Variable<String>(syncError.value);
    }
    if (deviceId.present) {
      map['device_id'] = Variable<String>(deviceId.value);
    }
    if (deviceName.present) {
      map['device_name'] = Variable<String>(deviceName.value);
    }
    if (versionRelease.present) {
      map['version_release'] = Variable<String>(versionRelease.value);
    }
    if (versionEnvrement.present) {
      map['version_envrement'] = Variable<String>(versionEnvrement.value);
    }
    if (bootLoader.present) {
      map['boot_loader'] = Variable<String>(bootLoader.value);
    }
    if (manufacture.present) {
      map['manufacture'] = Variable<String>(manufacture.value);
    }
    if (model.present) {
      map['model'] = Variable<String>(model.value);
    }
    if (sdkNumber.present) {
      map['sdk_number'] = Variable<int>(sdkNumber.value);
    }
    if (hardware.present) {
      map['hardware'] = Variable<String>(hardware.value);
    }
    if (deviceHost.present) {
      map['device_host'] = Variable<String>(deviceHost.value);
    }
    if (deviceTime.present) {
      map['device_time'] = Variable<DateTime>(deviceTime.value);
    }
    if (deviceSerial.present) {
      map['device_serial'] = Variable<String>(deviceSerial.value);
    }
    if (deviceMac.present) {
      map['device_mac'] = Variable<String>(deviceMac.value);
    }
    if (deviceIp.present) {
      map['device_ip'] = Variable<String>(deviceIp.value);
    }
    if (deviceMode.present) {
      map['device_mode'] = Variable<String>(deviceMode.value);
    }
    if (activationDate.present) {
      map['activation_date'] = Variable<DateTime>(activationDate.value);
    }
    if (expirationDate.present) {
      map['expiration_date'] = Variable<DateTime>(expirationDate.value);
    }
    if (deviceStatus.present) {
      map['device_status'] = Variable<int>(deviceStatus.value);
    }
    if (companyName.present) {
      map['company_name'] = Variable<String>(companyName.value);
    }
    if (deviceNickName.present) {
      map['device_nick_name'] = Variable<String>(deviceNickName.value);
    }
    if (latitude.present) {
      map['latitude'] = Variable<double>(latitude.value);
    }
    if (longitude.present) {
      map['longitude'] = Variable<double>(longitude.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MobileDeviceCompanion(')
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
  VerificationContext validateIntegrity(Insertable<MobileDeviceData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('creation_time')) {
      context.handle(
          _creationTimeMeta,
          creationTime.isAcceptableOrUnknown(
              data['creation_time'], _creationTimeMeta));
    }
    if (data.containsKey('delete_time')) {
      context.handle(
          _deleteTimeMeta,
          deleteTime.isAcceptableOrUnknown(
              data['delete_time'], _deleteTimeMeta));
    }
    if (data.containsKey('create_user_id')) {
      context.handle(
          _createUserIdMeta,
          createUserId.isAcceptableOrUnknown(
              data['create_user_id'], _createUserIdMeta));
    }
    if (data.containsKey('creator_user')) {
      context.handle(
          _creatorUserMeta,
          creatorUser.isAcceptableOrUnknown(
              data['creator_user'], _creatorUserMeta));
    }
    if (data.containsKey('last_modifier_user')) {
      context.handle(
          _lastModifierUserMeta,
          lastModifierUser.isAcceptableOrUnknown(
              data['last_modifier_user'], _lastModifierUserMeta));
    }
    if (data.containsKey('last_modifier_user_id')) {
      context.handle(
          _lastModifierUserIdMeta,
          lastModifierUserId.isAcceptableOrUnknown(
              data['last_modifier_user_id'], _lastModifierUserIdMeta));
    }
    if (data.containsKey('delete_user_id')) {
      context.handle(
          _deleteUserIdMeta,
          deleteUserId.isAcceptableOrUnknown(
              data['delete_user_id'], _deleteUserIdMeta));
    }
    if (data.containsKey('deleter_user_id')) {
      context.handle(
          _deleterUserIdMeta,
          deleterUserId.isAcceptableOrUnknown(
              data['deleter_user_id'], _deleterUserIdMeta));
    }
    if (data.containsKey('is_deleted')) {
      context.handle(_isDeletedMeta,
          isDeleted.isAcceptableOrUnknown(data['is_deleted'], _isDeletedMeta));
    }
    if (data.containsKey('import_date_time')) {
      context.handle(
          _importDateTimeMeta,
          importDateTime.isAcceptableOrUnknown(
              data['import_date_time'], _importDateTimeMeta));
    }
    if (data.containsKey('export_date_time')) {
      context.handle(
          _exportDateTimeMeta,
          exportDateTime.isAcceptableOrUnknown(
              data['export_date_time'], _exportDateTimeMeta));
    }
    if (data.containsKey('export_status')) {
      context.handle(
          _exportStatusMeta,
          exportStatus.isAcceptableOrUnknown(
              data['export_status'], _exportStatusMeta));
    }
    if (data.containsKey('import_status')) {
      context.handle(
          _importStatusMeta,
          importStatus.isAcceptableOrUnknown(
              data['import_status'], _importStatusMeta));
    }
    if (data.containsKey('sync_error')) {
      context.handle(_syncErrorMeta,
          syncError.isAcceptableOrUnknown(data['sync_error'], _syncErrorMeta));
    }
    if (data.containsKey('device_id')) {
      context.handle(_deviceIdMeta,
          deviceId.isAcceptableOrUnknown(data['device_id'], _deviceIdMeta));
    }
    if (data.containsKey('device_name')) {
      context.handle(
          _deviceNameMeta,
          deviceName.isAcceptableOrUnknown(
              data['device_name'], _deviceNameMeta));
    }
    if (data.containsKey('version_release')) {
      context.handle(
          _versionReleaseMeta,
          versionRelease.isAcceptableOrUnknown(
              data['version_release'], _versionReleaseMeta));
    }
    if (data.containsKey('version_envrement')) {
      context.handle(
          _versionEnvrementMeta,
          versionEnvrement.isAcceptableOrUnknown(
              data['version_envrement'], _versionEnvrementMeta));
    }
    if (data.containsKey('boot_loader')) {
      context.handle(
          _bootLoaderMeta,
          bootLoader.isAcceptableOrUnknown(
              data['boot_loader'], _bootLoaderMeta));
    }
    if (data.containsKey('manufacture')) {
      context.handle(
          _manufactureMeta,
          manufacture.isAcceptableOrUnknown(
              data['manufacture'], _manufactureMeta));
    }
    if (data.containsKey('model')) {
      context.handle(
          _modelMeta, model.isAcceptableOrUnknown(data['model'], _modelMeta));
    }
    if (data.containsKey('sdk_number')) {
      context.handle(_sdkNumberMeta,
          sdkNumber.isAcceptableOrUnknown(data['sdk_number'], _sdkNumberMeta));
    }
    if (data.containsKey('hardware')) {
      context.handle(_hardwareMeta,
          hardware.isAcceptableOrUnknown(data['hardware'], _hardwareMeta));
    }
    if (data.containsKey('device_host')) {
      context.handle(
          _deviceHostMeta,
          deviceHost.isAcceptableOrUnknown(
              data['device_host'], _deviceHostMeta));
    }
    if (data.containsKey('device_time')) {
      context.handle(
          _deviceTimeMeta,
          deviceTime.isAcceptableOrUnknown(
              data['device_time'], _deviceTimeMeta));
    }
    if (data.containsKey('device_serial')) {
      context.handle(
          _deviceSerialMeta,
          deviceSerial.isAcceptableOrUnknown(
              data['device_serial'], _deviceSerialMeta));
    }
    if (data.containsKey('device_mac')) {
      context.handle(_deviceMacMeta,
          deviceMac.isAcceptableOrUnknown(data['device_mac'], _deviceMacMeta));
    }
    if (data.containsKey('device_ip')) {
      context.handle(_deviceIpMeta,
          deviceIp.isAcceptableOrUnknown(data['device_ip'], _deviceIpMeta));
    }
    if (data.containsKey('device_mode')) {
      context.handle(
          _deviceModeMeta,
          deviceMode.isAcceptableOrUnknown(
              data['device_mode'], _deviceModeMeta));
    }
    if (data.containsKey('activation_date')) {
      context.handle(
          _activationDateMeta,
          activationDate.isAcceptableOrUnknown(
              data['activation_date'], _activationDateMeta));
    }
    if (data.containsKey('expiration_date')) {
      context.handle(
          _expirationDateMeta,
          expirationDate.isAcceptableOrUnknown(
              data['expiration_date'], _expirationDateMeta));
    }
    if (data.containsKey('device_status')) {
      context.handle(
          _deviceStatusMeta,
          deviceStatus.isAcceptableOrUnknown(
              data['device_status'], _deviceStatusMeta));
    }
    if (data.containsKey('company_name')) {
      context.handle(
          _companyNameMeta,
          companyName.isAcceptableOrUnknown(
              data['company_name'], _companyNameMeta));
    }
    if (data.containsKey('device_nick_name')) {
      context.handle(
          _deviceNickNameMeta,
          deviceNickName.isAcceptableOrUnknown(
              data['device_nick_name'], _deviceNickNameMeta));
    }
    if (data.containsKey('latitude')) {
      context.handle(_latitudeMeta,
          latitude.isAcceptableOrUnknown(data['latitude'], _latitudeMeta));
    }
    if (data.containsKey('longitude')) {
      context.handle(_longitudeMeta,
          longitude.isAcceptableOrUnknown(data['longitude'], _longitudeMeta));
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
  $MobileDeviceTable createAlias(String alias) {
    return $MobileDeviceTable(_db, alias);
  }
}

class BusinessRuleData extends DataClass
    implements Insertable<BusinessRuleData> {
  final String code;
  final String ruleName;
  final String value;
  final String description;
  final bool isGlobalRule;
  final String deviceRule;
  final String userRule;
  final String domain;
  final DateTime expiredDateTime;
  final String syncError;
  final String dataType;
  final String dataValue;
  final String groups;
  BusinessRuleData(
      {@required this.code,
      this.ruleName,
      @required this.value,
      this.description,
      @required this.isGlobalRule,
      this.deviceRule,
      this.userRule,
      this.domain,
      this.expiredDateTime,
      this.syncError,
      this.dataType,
      this.dataValue,
      this.groups});
  factory BusinessRuleData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return BusinessRuleData(
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
      expiredDateTime: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}expired_date_time']),
      syncError: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}sync_error']),
      dataType: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}data_type']),
      dataValue: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}data_value']),
      groups:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}groups']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || code != null) {
      map['code'] = Variable<String>(code);
    }
    if (!nullToAbsent || ruleName != null) {
      map['rule_name'] = Variable<String>(ruleName);
    }
    if (!nullToAbsent || value != null) {
      map['value'] = Variable<String>(value);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || isGlobalRule != null) {
      map['is_global_rule'] = Variable<bool>(isGlobalRule);
    }
    if (!nullToAbsent || deviceRule != null) {
      map['device_rule'] = Variable<String>(deviceRule);
    }
    if (!nullToAbsent || userRule != null) {
      map['user_rule'] = Variable<String>(userRule);
    }
    if (!nullToAbsent || domain != null) {
      map['domain'] = Variable<String>(domain);
    }
    if (!nullToAbsent || expiredDateTime != null) {
      map['expired_date_time'] = Variable<DateTime>(expiredDateTime);
    }
    if (!nullToAbsent || syncError != null) {
      map['sync_error'] = Variable<String>(syncError);
    }
    if (!nullToAbsent || dataType != null) {
      map['data_type'] = Variable<String>(dataType);
    }
    if (!nullToAbsent || dataValue != null) {
      map['data_value'] = Variable<String>(dataValue);
    }
    if (!nullToAbsent || groups != null) {
      map['groups'] = Variable<String>(groups);
    }
    return map;
  }

  BusinessRuleCompanion toCompanion(bool nullToAbsent) {
    return BusinessRuleCompanion(
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
      expiredDateTime: expiredDateTime == null && nullToAbsent
          ? const Value.absent()
          : Value(expiredDateTime),
      syncError: syncError == null && nullToAbsent
          ? const Value.absent()
          : Value(syncError),
      dataType: dataType == null && nullToAbsent
          ? const Value.absent()
          : Value(dataType),
      dataValue: dataValue == null && nullToAbsent
          ? const Value.absent()
          : Value(dataValue),
      groups:
          groups == null && nullToAbsent ? const Value.absent() : Value(groups),
    );
  }

  factory BusinessRuleData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return BusinessRuleData(
      code: serializer.fromJson<String>(json['code']),
      ruleName: serializer.fromJson<String>(json['ruleName']),
      value: serializer.fromJson<String>(json['value']),
      description: serializer.fromJson<String>(json['description']),
      isGlobalRule: serializer.fromJson<bool>(json['isGlobalRule']),
      deviceRule: serializer.fromJson<String>(json['deviceRule']),
      userRule: serializer.fromJson<String>(json['userRule']),
      domain: serializer.fromJson<String>(json['domain']),
      expiredDateTime: serializer.fromJson<DateTime>(json['expiredDateTime']),
      syncError: serializer.fromJson<String>(json['syncError']),
      dataType: serializer.fromJson<String>(json['dataType']),
      dataValue: serializer.fromJson<String>(json['dataValue']),
      groups: serializer.fromJson<String>(json['groups']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'code': serializer.toJson<String>(code),
      'ruleName': serializer.toJson<String>(ruleName),
      'value': serializer.toJson<String>(value),
      'description': serializer.toJson<String>(description),
      'isGlobalRule': serializer.toJson<bool>(isGlobalRule),
      'deviceRule': serializer.toJson<String>(deviceRule),
      'userRule': serializer.toJson<String>(userRule),
      'domain': serializer.toJson<String>(domain),
      'expiredDateTime': serializer.toJson<DateTime>(expiredDateTime),
      'syncError': serializer.toJson<String>(syncError),
      'dataType': serializer.toJson<String>(dataType),
      'dataValue': serializer.toJson<String>(dataValue),
      'groups': serializer.toJson<String>(groups),
    };
  }

  BusinessRuleData copyWith(
          {String code,
          String ruleName,
          String value,
          String description,
          bool isGlobalRule,
          String deviceRule,
          String userRule,
          String domain,
          DateTime expiredDateTime,
          String syncError,
          String dataType,
          String dataValue,
          String groups}) =>
      BusinessRuleData(
        code: code ?? this.code,
        ruleName: ruleName ?? this.ruleName,
        value: value ?? this.value,
        description: description ?? this.description,
        isGlobalRule: isGlobalRule ?? this.isGlobalRule,
        deviceRule: deviceRule ?? this.deviceRule,
        userRule: userRule ?? this.userRule,
        domain: domain ?? this.domain,
        expiredDateTime: expiredDateTime ?? this.expiredDateTime,
        syncError: syncError ?? this.syncError,
        dataType: dataType ?? this.dataType,
        dataValue: dataValue ?? this.dataValue,
        groups: groups ?? this.groups,
      );
  @override
  String toString() {
    return (StringBuffer('BusinessRuleData(')
          ..write('code: $code, ')
          ..write('ruleName: $ruleName, ')
          ..write('value: $value, ')
          ..write('description: $description, ')
          ..write('isGlobalRule: $isGlobalRule, ')
          ..write('deviceRule: $deviceRule, ')
          ..write('userRule: $userRule, ')
          ..write('domain: $domain, ')
          ..write('expiredDateTime: $expiredDateTime, ')
          ..write('syncError: $syncError, ')
          ..write('dataType: $dataType, ')
          ..write('dataValue: $dataValue, ')
          ..write('groups: $groups')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      code.hashCode,
      $mrjc(
          ruleName.hashCode,
          $mrjc(
              value.hashCode,
              $mrjc(
                  description.hashCode,
                  $mrjc(
                      isGlobalRule.hashCode,
                      $mrjc(
                          deviceRule.hashCode,
                          $mrjc(
                              userRule.hashCode,
                              $mrjc(
                                  domain.hashCode,
                                  $mrjc(
                                      expiredDateTime.hashCode,
                                      $mrjc(
                                          syncError.hashCode,
                                          $mrjc(
                                              dataType.hashCode,
                                              $mrjc(dataValue.hashCode,
                                                  groups.hashCode)))))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is BusinessRuleData &&
          other.code == this.code &&
          other.ruleName == this.ruleName &&
          other.value == this.value &&
          other.description == this.description &&
          other.isGlobalRule == this.isGlobalRule &&
          other.deviceRule == this.deviceRule &&
          other.userRule == this.userRule &&
          other.domain == this.domain &&
          other.expiredDateTime == this.expiredDateTime &&
          other.syncError == this.syncError &&
          other.dataType == this.dataType &&
          other.dataValue == this.dataValue &&
          other.groups == this.groups);
}

class BusinessRuleCompanion extends UpdateCompanion<BusinessRuleData> {
  final Value<String> code;
  final Value<String> ruleName;
  final Value<String> value;
  final Value<String> description;
  final Value<bool> isGlobalRule;
  final Value<String> deviceRule;
  final Value<String> userRule;
  final Value<String> domain;
  final Value<DateTime> expiredDateTime;
  final Value<String> syncError;
  final Value<String> dataType;
  final Value<String> dataValue;
  final Value<String> groups;
  const BusinessRuleCompanion({
    this.code = const Value.absent(),
    this.ruleName = const Value.absent(),
    this.value = const Value.absent(),
    this.description = const Value.absent(),
    this.isGlobalRule = const Value.absent(),
    this.deviceRule = const Value.absent(),
    this.userRule = const Value.absent(),
    this.domain = const Value.absent(),
    this.expiredDateTime = const Value.absent(),
    this.syncError = const Value.absent(),
    this.dataType = const Value.absent(),
    this.dataValue = const Value.absent(),
    this.groups = const Value.absent(),
  });
  BusinessRuleCompanion.insert({
    @required String code,
    this.ruleName = const Value.absent(),
    @required String value,
    this.description = const Value.absent(),
    this.isGlobalRule = const Value.absent(),
    this.deviceRule = const Value.absent(),
    this.userRule = const Value.absent(),
    this.domain = const Value.absent(),
    this.expiredDateTime = const Value.absent(),
    this.syncError = const Value.absent(),
    this.dataType = const Value.absent(),
    this.dataValue = const Value.absent(),
    this.groups = const Value.absent(),
  })  : code = Value(code),
        value = Value(value);
  static Insertable<BusinessRuleData> custom({
    Expression<String> code,
    Expression<String> ruleName,
    Expression<String> value,
    Expression<String> description,
    Expression<bool> isGlobalRule,
    Expression<String> deviceRule,
    Expression<String> userRule,
    Expression<String> domain,
    Expression<DateTime> expiredDateTime,
    Expression<String> syncError,
    Expression<String> dataType,
    Expression<String> dataValue,
    Expression<String> groups,
  }) {
    return RawValuesInsertable({
      if (code != null) 'code': code,
      if (ruleName != null) 'rule_name': ruleName,
      if (value != null) 'value': value,
      if (description != null) 'description': description,
      if (isGlobalRule != null) 'is_global_rule': isGlobalRule,
      if (deviceRule != null) 'device_rule': deviceRule,
      if (userRule != null) 'user_rule': userRule,
      if (domain != null) 'domain': domain,
      if (expiredDateTime != null) 'expired_date_time': expiredDateTime,
      if (syncError != null) 'sync_error': syncError,
      if (dataType != null) 'data_type': dataType,
      if (dataValue != null) 'data_value': dataValue,
      if (groups != null) 'groups': groups,
    });
  }

  BusinessRuleCompanion copyWith(
      {Value<String> code,
      Value<String> ruleName,
      Value<String> value,
      Value<String> description,
      Value<bool> isGlobalRule,
      Value<String> deviceRule,
      Value<String> userRule,
      Value<String> domain,
      Value<DateTime> expiredDateTime,
      Value<String> syncError,
      Value<String> dataType,
      Value<String> dataValue,
      Value<String> groups}) {
    return BusinessRuleCompanion(
      code: code ?? this.code,
      ruleName: ruleName ?? this.ruleName,
      value: value ?? this.value,
      description: description ?? this.description,
      isGlobalRule: isGlobalRule ?? this.isGlobalRule,
      deviceRule: deviceRule ?? this.deviceRule,
      userRule: userRule ?? this.userRule,
      domain: domain ?? this.domain,
      expiredDateTime: expiredDateTime ?? this.expiredDateTime,
      syncError: syncError ?? this.syncError,
      dataType: dataType ?? this.dataType,
      dataValue: dataValue ?? this.dataValue,
      groups: groups ?? this.groups,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (ruleName.present) {
      map['rule_name'] = Variable<String>(ruleName.value);
    }
    if (value.present) {
      map['value'] = Variable<String>(value.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (isGlobalRule.present) {
      map['is_global_rule'] = Variable<bool>(isGlobalRule.value);
    }
    if (deviceRule.present) {
      map['device_rule'] = Variable<String>(deviceRule.value);
    }
    if (userRule.present) {
      map['user_rule'] = Variable<String>(userRule.value);
    }
    if (domain.present) {
      map['domain'] = Variable<String>(domain.value);
    }
    if (expiredDateTime.present) {
      map['expired_date_time'] = Variable<DateTime>(expiredDateTime.value);
    }
    if (syncError.present) {
      map['sync_error'] = Variable<String>(syncError.value);
    }
    if (dataType.present) {
      map['data_type'] = Variable<String>(dataType.value);
    }
    if (dataValue.present) {
      map['data_value'] = Variable<String>(dataValue.value);
    }
    if (groups.present) {
      map['groups'] = Variable<String>(groups.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BusinessRuleCompanion(')
          ..write('code: $code, ')
          ..write('ruleName: $ruleName, ')
          ..write('value: $value, ')
          ..write('description: $description, ')
          ..write('isGlobalRule: $isGlobalRule, ')
          ..write('deviceRule: $deviceRule, ')
          ..write('userRule: $userRule, ')
          ..write('domain: $domain, ')
          ..write('expiredDateTime: $expiredDateTime, ')
          ..write('syncError: $syncError, ')
          ..write('dataType: $dataType, ')
          ..write('dataValue: $dataValue, ')
          ..write('groups: $groups')
          ..write(')'))
        .toString();
  }
}

class $BusinessRuleTable extends BusinessRule
    with TableInfo<$BusinessRuleTable, BusinessRuleData> {
  final GeneratedDatabase _db;
  final String _alias;
  $BusinessRuleTable(this._db, [this._alias]);
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

  final VerificationMeta _dataTypeMeta = const VerificationMeta('dataType');
  GeneratedTextColumn _dataType;
  @override
  GeneratedTextColumn get dataType => _dataType ??= _constructDataType();
  GeneratedTextColumn _constructDataType() {
    return GeneratedTextColumn(
      'data_type',
      $tableName,
      true,
    );
  }

  final VerificationMeta _dataValueMeta = const VerificationMeta('dataValue');
  GeneratedTextColumn _dataValue;
  @override
  GeneratedTextColumn get dataValue => _dataValue ??= _constructDataValue();
  GeneratedTextColumn _constructDataValue() {
    return GeneratedTextColumn(
      'data_value',
      $tableName,
      true,
    );
  }

  final VerificationMeta _groupsMeta = const VerificationMeta('groups');
  GeneratedTextColumn _groups;
  @override
  GeneratedTextColumn get groups => _groups ??= _constructGroups();
  GeneratedTextColumn _constructGroups() {
    return GeneratedTextColumn(
      'groups',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        code,
        ruleName,
        value,
        description,
        isGlobalRule,
        deviceRule,
        userRule,
        domain,
        expiredDateTime,
        syncError,
        dataType,
        dataValue,
        groups
      ];
  @override
  $BusinessRuleTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'business_rule';
  @override
  final String actualTableName = 'business_rule';
  @override
  VerificationContext validateIntegrity(Insertable<BusinessRuleData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code'], _codeMeta));
    } else if (isInserting) {
      context.missing(_codeMeta);
    }
    if (data.containsKey('rule_name')) {
      context.handle(_ruleNameMeta,
          ruleName.isAcceptableOrUnknown(data['rule_name'], _ruleNameMeta));
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value'], _valueMeta));
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description'], _descriptionMeta));
    }
    if (data.containsKey('is_global_rule')) {
      context.handle(
          _isGlobalRuleMeta,
          isGlobalRule.isAcceptableOrUnknown(
              data['is_global_rule'], _isGlobalRuleMeta));
    }
    if (data.containsKey('device_rule')) {
      context.handle(
          _deviceRuleMeta,
          deviceRule.isAcceptableOrUnknown(
              data['device_rule'], _deviceRuleMeta));
    }
    if (data.containsKey('user_rule')) {
      context.handle(_userRuleMeta,
          userRule.isAcceptableOrUnknown(data['user_rule'], _userRuleMeta));
    }
    if (data.containsKey('domain')) {
      context.handle(_domainMeta,
          domain.isAcceptableOrUnknown(data['domain'], _domainMeta));
    }
    if (data.containsKey('expired_date_time')) {
      context.handle(
          _expiredDateTimeMeta,
          expiredDateTime.isAcceptableOrUnknown(
              data['expired_date_time'], _expiredDateTimeMeta));
    }
    if (data.containsKey('sync_error')) {
      context.handle(_syncErrorMeta,
          syncError.isAcceptableOrUnknown(data['sync_error'], _syncErrorMeta));
    }
    if (data.containsKey('data_type')) {
      context.handle(_dataTypeMeta,
          dataType.isAcceptableOrUnknown(data['data_type'], _dataTypeMeta));
    }
    if (data.containsKey('data_value')) {
      context.handle(_dataValueMeta,
          dataValue.isAcceptableOrUnknown(data['data_value'], _dataValueMeta));
    }
    if (data.containsKey('groups')) {
      context.handle(_groupsMeta,
          groups.isAcceptableOrUnknown(data['groups'], _groupsMeta));
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
  $BusinessRuleTable createAlias(String alias) {
    return $BusinessRuleTable(_db, alias);
  }
}

class NonGlobalBusinessRuleData extends DataClass
    implements Insertable<NonGlobalBusinessRuleData> {
  final String code;
  final String parentCode;
  final String ruleName;
  final String value;
  final String description;
  final String deviceRule;
  final String userRule;
  final String domain;
  final String deviceId;
  final String userName;
  final String screen;
  final bool isApply;
  final String syncError;
  final DateTime expiredDateTime;
  final String dataType;
  final String dataValue;
  final String groups;
  NonGlobalBusinessRuleData(
      {@required this.code,
      @required this.parentCode,
      this.ruleName,
      @required this.value,
      this.description,
      this.deviceRule,
      this.userRule,
      this.domain,
      this.deviceId,
      this.userName,
      this.screen,
      @required this.isApply,
      this.syncError,
      this.expiredDateTime,
      this.dataType,
      this.dataValue,
      this.groups});
  factory NonGlobalBusinessRuleData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return NonGlobalBusinessRuleData(
      code: stringType.mapFromDatabaseResponse(data['${effectivePrefix}code']),
      parentCode: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}parent_code']),
      ruleName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}rule_name']),
      value:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}value']),
      description: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      deviceRule: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}device_rule']),
      userRule: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}user_rule']),
      domain:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}domain']),
      deviceId: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}device_id']),
      userName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}user_name']),
      screen:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}screen']),
      isApply:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}is_apply']),
      syncError: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}sync_error']),
      expiredDateTime: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}expired_date_time']),
      dataType: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}data_type']),
      dataValue: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}data_value']),
      groups:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}groups']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || code != null) {
      map['code'] = Variable<String>(code);
    }
    if (!nullToAbsent || parentCode != null) {
      map['parent_code'] = Variable<String>(parentCode);
    }
    if (!nullToAbsent || ruleName != null) {
      map['rule_name'] = Variable<String>(ruleName);
    }
    if (!nullToAbsent || value != null) {
      map['value'] = Variable<String>(value);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || deviceRule != null) {
      map['device_rule'] = Variable<String>(deviceRule);
    }
    if (!nullToAbsent || userRule != null) {
      map['user_rule'] = Variable<String>(userRule);
    }
    if (!nullToAbsent || domain != null) {
      map['domain'] = Variable<String>(domain);
    }
    if (!nullToAbsent || deviceId != null) {
      map['device_id'] = Variable<String>(deviceId);
    }
    if (!nullToAbsent || userName != null) {
      map['user_name'] = Variable<String>(userName);
    }
    if (!nullToAbsent || screen != null) {
      map['screen'] = Variable<String>(screen);
    }
    if (!nullToAbsent || isApply != null) {
      map['is_apply'] = Variable<bool>(isApply);
    }
    if (!nullToAbsent || syncError != null) {
      map['sync_error'] = Variable<String>(syncError);
    }
    if (!nullToAbsent || expiredDateTime != null) {
      map['expired_date_time'] = Variable<DateTime>(expiredDateTime);
    }
    if (!nullToAbsent || dataType != null) {
      map['data_type'] = Variable<String>(dataType);
    }
    if (!nullToAbsent || dataValue != null) {
      map['data_value'] = Variable<String>(dataValue);
    }
    if (!nullToAbsent || groups != null) {
      map['groups'] = Variable<String>(groups);
    }
    return map;
  }

  NonGlobalBusinessRuleCompanion toCompanion(bool nullToAbsent) {
    return NonGlobalBusinessRuleCompanion(
      code: code == null && nullToAbsent ? const Value.absent() : Value(code),
      parentCode: parentCode == null && nullToAbsent
          ? const Value.absent()
          : Value(parentCode),
      ruleName: ruleName == null && nullToAbsent
          ? const Value.absent()
          : Value(ruleName),
      value:
          value == null && nullToAbsent ? const Value.absent() : Value(value),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      deviceRule: deviceRule == null && nullToAbsent
          ? const Value.absent()
          : Value(deviceRule),
      userRule: userRule == null && nullToAbsent
          ? const Value.absent()
          : Value(userRule),
      domain:
          domain == null && nullToAbsent ? const Value.absent() : Value(domain),
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
      syncError: syncError == null && nullToAbsent
          ? const Value.absent()
          : Value(syncError),
      expiredDateTime: expiredDateTime == null && nullToAbsent
          ? const Value.absent()
          : Value(expiredDateTime),
      dataType: dataType == null && nullToAbsent
          ? const Value.absent()
          : Value(dataType),
      dataValue: dataValue == null && nullToAbsent
          ? const Value.absent()
          : Value(dataValue),
      groups:
          groups == null && nullToAbsent ? const Value.absent() : Value(groups),
    );
  }

  factory NonGlobalBusinessRuleData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return NonGlobalBusinessRuleData(
      code: serializer.fromJson<String>(json['code']),
      parentCode: serializer.fromJson<String>(json['parentCode']),
      ruleName: serializer.fromJson<String>(json['ruleName']),
      value: serializer.fromJson<String>(json['value']),
      description: serializer.fromJson<String>(json['description']),
      deviceRule: serializer.fromJson<String>(json['deviceRule']),
      userRule: serializer.fromJson<String>(json['userRule']),
      domain: serializer.fromJson<String>(json['domain']),
      deviceId: serializer.fromJson<String>(json['deviceId']),
      userName: serializer.fromJson<String>(json['userName']),
      screen: serializer.fromJson<String>(json['screen']),
      isApply: serializer.fromJson<bool>(json['isApply']),
      syncError: serializer.fromJson<String>(json['syncError']),
      expiredDateTime: serializer.fromJson<DateTime>(json['expiredDateTime']),
      dataType: serializer.fromJson<String>(json['dataType']),
      dataValue: serializer.fromJson<String>(json['dataValue']),
      groups: serializer.fromJson<String>(json['groups']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'code': serializer.toJson<String>(code),
      'parentCode': serializer.toJson<String>(parentCode),
      'ruleName': serializer.toJson<String>(ruleName),
      'value': serializer.toJson<String>(value),
      'description': serializer.toJson<String>(description),
      'deviceRule': serializer.toJson<String>(deviceRule),
      'userRule': serializer.toJson<String>(userRule),
      'domain': serializer.toJson<String>(domain),
      'deviceId': serializer.toJson<String>(deviceId),
      'userName': serializer.toJson<String>(userName),
      'screen': serializer.toJson<String>(screen),
      'isApply': serializer.toJson<bool>(isApply),
      'syncError': serializer.toJson<String>(syncError),
      'expiredDateTime': serializer.toJson<DateTime>(expiredDateTime),
      'dataType': serializer.toJson<String>(dataType),
      'dataValue': serializer.toJson<String>(dataValue),
      'groups': serializer.toJson<String>(groups),
    };
  }

  NonGlobalBusinessRuleData copyWith(
          {String code,
          String parentCode,
          String ruleName,
          String value,
          String description,
          String deviceRule,
          String userRule,
          String domain,
          String deviceId,
          String userName,
          String screen,
          bool isApply,
          String syncError,
          DateTime expiredDateTime,
          String dataType,
          String dataValue,
          String groups}) =>
      NonGlobalBusinessRuleData(
        code: code ?? this.code,
        parentCode: parentCode ?? this.parentCode,
        ruleName: ruleName ?? this.ruleName,
        value: value ?? this.value,
        description: description ?? this.description,
        deviceRule: deviceRule ?? this.deviceRule,
        userRule: userRule ?? this.userRule,
        domain: domain ?? this.domain,
        deviceId: deviceId ?? this.deviceId,
        userName: userName ?? this.userName,
        screen: screen ?? this.screen,
        isApply: isApply ?? this.isApply,
        syncError: syncError ?? this.syncError,
        expiredDateTime: expiredDateTime ?? this.expiredDateTime,
        dataType: dataType ?? this.dataType,
        dataValue: dataValue ?? this.dataValue,
        groups: groups ?? this.groups,
      );
  @override
  String toString() {
    return (StringBuffer('NonGlobalBusinessRuleData(')
          ..write('code: $code, ')
          ..write('parentCode: $parentCode, ')
          ..write('ruleName: $ruleName, ')
          ..write('value: $value, ')
          ..write('description: $description, ')
          ..write('deviceRule: $deviceRule, ')
          ..write('userRule: $userRule, ')
          ..write('domain: $domain, ')
          ..write('deviceId: $deviceId, ')
          ..write('userName: $userName, ')
          ..write('screen: $screen, ')
          ..write('isApply: $isApply, ')
          ..write('syncError: $syncError, ')
          ..write('expiredDateTime: $expiredDateTime, ')
          ..write('dataType: $dataType, ')
          ..write('dataValue: $dataValue, ')
          ..write('groups: $groups')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      code.hashCode,
      $mrjc(
          parentCode.hashCode,
          $mrjc(
              ruleName.hashCode,
              $mrjc(
                  value.hashCode,
                  $mrjc(
                      description.hashCode,
                      $mrjc(
                          deviceRule.hashCode,
                          $mrjc(
                              userRule.hashCode,
                              $mrjc(
                                  domain.hashCode,
                                  $mrjc(
                                      deviceId.hashCode,
                                      $mrjc(
                                          userName.hashCode,
                                          $mrjc(
                                              screen.hashCode,
                                              $mrjc(
                                                  isApply.hashCode,
                                                  $mrjc(
                                                      syncError.hashCode,
                                                      $mrjc(
                                                          expiredDateTime
                                                              .hashCode,
                                                          $mrjc(
                                                              dataType.hashCode,
                                                              $mrjc(
                                                                  dataValue
                                                                      .hashCode,
                                                                  groups
                                                                      .hashCode)))))))))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is NonGlobalBusinessRuleData &&
          other.code == this.code &&
          other.parentCode == this.parentCode &&
          other.ruleName == this.ruleName &&
          other.value == this.value &&
          other.description == this.description &&
          other.deviceRule == this.deviceRule &&
          other.userRule == this.userRule &&
          other.domain == this.domain &&
          other.deviceId == this.deviceId &&
          other.userName == this.userName &&
          other.screen == this.screen &&
          other.isApply == this.isApply &&
          other.syncError == this.syncError &&
          other.expiredDateTime == this.expiredDateTime &&
          other.dataType == this.dataType &&
          other.dataValue == this.dataValue &&
          other.groups == this.groups);
}

class NonGlobalBusinessRuleCompanion
    extends UpdateCompanion<NonGlobalBusinessRuleData> {
  final Value<String> code;
  final Value<String> parentCode;
  final Value<String> ruleName;
  final Value<String> value;
  final Value<String> description;
  final Value<String> deviceRule;
  final Value<String> userRule;
  final Value<String> domain;
  final Value<String> deviceId;
  final Value<String> userName;
  final Value<String> screen;
  final Value<bool> isApply;
  final Value<String> syncError;
  final Value<DateTime> expiredDateTime;
  final Value<String> dataType;
  final Value<String> dataValue;
  final Value<String> groups;
  const NonGlobalBusinessRuleCompanion({
    this.code = const Value.absent(),
    this.parentCode = const Value.absent(),
    this.ruleName = const Value.absent(),
    this.value = const Value.absent(),
    this.description = const Value.absent(),
    this.deviceRule = const Value.absent(),
    this.userRule = const Value.absent(),
    this.domain = const Value.absent(),
    this.deviceId = const Value.absent(),
    this.userName = const Value.absent(),
    this.screen = const Value.absent(),
    this.isApply = const Value.absent(),
    this.syncError = const Value.absent(),
    this.expiredDateTime = const Value.absent(),
    this.dataType = const Value.absent(),
    this.dataValue = const Value.absent(),
    this.groups = const Value.absent(),
  });
  NonGlobalBusinessRuleCompanion.insert({
    @required String code,
    @required String parentCode,
    this.ruleName = const Value.absent(),
    @required String value,
    this.description = const Value.absent(),
    this.deviceRule = const Value.absent(),
    this.userRule = const Value.absent(),
    this.domain = const Value.absent(),
    this.deviceId = const Value.absent(),
    this.userName = const Value.absent(),
    this.screen = const Value.absent(),
    this.isApply = const Value.absent(),
    this.syncError = const Value.absent(),
    this.expiredDateTime = const Value.absent(),
    this.dataType = const Value.absent(),
    this.dataValue = const Value.absent(),
    this.groups = const Value.absent(),
  })  : code = Value(code),
        parentCode = Value(parentCode),
        value = Value(value);
  static Insertable<NonGlobalBusinessRuleData> custom({
    Expression<String> code,
    Expression<String> parentCode,
    Expression<String> ruleName,
    Expression<String> value,
    Expression<String> description,
    Expression<String> deviceRule,
    Expression<String> userRule,
    Expression<String> domain,
    Expression<String> deviceId,
    Expression<String> userName,
    Expression<String> screen,
    Expression<bool> isApply,
    Expression<String> syncError,
    Expression<DateTime> expiredDateTime,
    Expression<String> dataType,
    Expression<String> dataValue,
    Expression<String> groups,
  }) {
    return RawValuesInsertable({
      if (code != null) 'code': code,
      if (parentCode != null) 'parent_code': parentCode,
      if (ruleName != null) 'rule_name': ruleName,
      if (value != null) 'value': value,
      if (description != null) 'description': description,
      if (deviceRule != null) 'device_rule': deviceRule,
      if (userRule != null) 'user_rule': userRule,
      if (domain != null) 'domain': domain,
      if (deviceId != null) 'device_id': deviceId,
      if (userName != null) 'user_name': userName,
      if (screen != null) 'screen': screen,
      if (isApply != null) 'is_apply': isApply,
      if (syncError != null) 'sync_error': syncError,
      if (expiredDateTime != null) 'expired_date_time': expiredDateTime,
      if (dataType != null) 'data_type': dataType,
      if (dataValue != null) 'data_value': dataValue,
      if (groups != null) 'groups': groups,
    });
  }

  NonGlobalBusinessRuleCompanion copyWith(
      {Value<String> code,
      Value<String> parentCode,
      Value<String> ruleName,
      Value<String> value,
      Value<String> description,
      Value<String> deviceRule,
      Value<String> userRule,
      Value<String> domain,
      Value<String> deviceId,
      Value<String> userName,
      Value<String> screen,
      Value<bool> isApply,
      Value<String> syncError,
      Value<DateTime> expiredDateTime,
      Value<String> dataType,
      Value<String> dataValue,
      Value<String> groups}) {
    return NonGlobalBusinessRuleCompanion(
      code: code ?? this.code,
      parentCode: parentCode ?? this.parentCode,
      ruleName: ruleName ?? this.ruleName,
      value: value ?? this.value,
      description: description ?? this.description,
      deviceRule: deviceRule ?? this.deviceRule,
      userRule: userRule ?? this.userRule,
      domain: domain ?? this.domain,
      deviceId: deviceId ?? this.deviceId,
      userName: userName ?? this.userName,
      screen: screen ?? this.screen,
      isApply: isApply ?? this.isApply,
      syncError: syncError ?? this.syncError,
      expiredDateTime: expiredDateTime ?? this.expiredDateTime,
      dataType: dataType ?? this.dataType,
      dataValue: dataValue ?? this.dataValue,
      groups: groups ?? this.groups,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (parentCode.present) {
      map['parent_code'] = Variable<String>(parentCode.value);
    }
    if (ruleName.present) {
      map['rule_name'] = Variable<String>(ruleName.value);
    }
    if (value.present) {
      map['value'] = Variable<String>(value.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (deviceRule.present) {
      map['device_rule'] = Variable<String>(deviceRule.value);
    }
    if (userRule.present) {
      map['user_rule'] = Variable<String>(userRule.value);
    }
    if (domain.present) {
      map['domain'] = Variable<String>(domain.value);
    }
    if (deviceId.present) {
      map['device_id'] = Variable<String>(deviceId.value);
    }
    if (userName.present) {
      map['user_name'] = Variable<String>(userName.value);
    }
    if (screen.present) {
      map['screen'] = Variable<String>(screen.value);
    }
    if (isApply.present) {
      map['is_apply'] = Variable<bool>(isApply.value);
    }
    if (syncError.present) {
      map['sync_error'] = Variable<String>(syncError.value);
    }
    if (expiredDateTime.present) {
      map['expired_date_time'] = Variable<DateTime>(expiredDateTime.value);
    }
    if (dataType.present) {
      map['data_type'] = Variable<String>(dataType.value);
    }
    if (dataValue.present) {
      map['data_value'] = Variable<String>(dataValue.value);
    }
    if (groups.present) {
      map['groups'] = Variable<String>(groups.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NonGlobalBusinessRuleCompanion(')
          ..write('code: $code, ')
          ..write('parentCode: $parentCode, ')
          ..write('ruleName: $ruleName, ')
          ..write('value: $value, ')
          ..write('description: $description, ')
          ..write('deviceRule: $deviceRule, ')
          ..write('userRule: $userRule, ')
          ..write('domain: $domain, ')
          ..write('deviceId: $deviceId, ')
          ..write('userName: $userName, ')
          ..write('screen: $screen, ')
          ..write('isApply: $isApply, ')
          ..write('syncError: $syncError, ')
          ..write('expiredDateTime: $expiredDateTime, ')
          ..write('dataType: $dataType, ')
          ..write('dataValue: $dataValue, ')
          ..write('groups: $groups')
          ..write(')'))
        .toString();
  }
}

class $NonGlobalBusinessRuleTable extends NonGlobalBusinessRule
    with TableInfo<$NonGlobalBusinessRuleTable, NonGlobalBusinessRuleData> {
  final GeneratedDatabase _db;
  final String _alias;
  $NonGlobalBusinessRuleTable(this._db, [this._alias]);
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
      true,
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
      true,
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

  final VerificationMeta _dataTypeMeta = const VerificationMeta('dataType');
  GeneratedTextColumn _dataType;
  @override
  GeneratedTextColumn get dataType => _dataType ??= _constructDataType();
  GeneratedTextColumn _constructDataType() {
    return GeneratedTextColumn(
      'data_type',
      $tableName,
      true,
    );
  }

  final VerificationMeta _dataValueMeta = const VerificationMeta('dataValue');
  GeneratedTextColumn _dataValue;
  @override
  GeneratedTextColumn get dataValue => _dataValue ??= _constructDataValue();
  GeneratedTextColumn _constructDataValue() {
    return GeneratedTextColumn(
      'data_value',
      $tableName,
      true,
    );
  }

  final VerificationMeta _groupsMeta = const VerificationMeta('groups');
  GeneratedTextColumn _groups;
  @override
  GeneratedTextColumn get groups => _groups ??= _constructGroups();
  GeneratedTextColumn _constructGroups() {
    return GeneratedTextColumn(
      'groups',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        code,
        parentCode,
        ruleName,
        value,
        description,
        deviceRule,
        userRule,
        domain,
        deviceId,
        userName,
        screen,
        isApply,
        syncError,
        expiredDateTime,
        dataType,
        dataValue,
        groups
      ];
  @override
  $NonGlobalBusinessRuleTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'non_global_business_rule';
  @override
  final String actualTableName = 'non_global_business_rule';
  @override
  VerificationContext validateIntegrity(
      Insertable<NonGlobalBusinessRuleData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code'], _codeMeta));
    } else if (isInserting) {
      context.missing(_codeMeta);
    }
    if (data.containsKey('parent_code')) {
      context.handle(
          _parentCodeMeta,
          parentCode.isAcceptableOrUnknown(
              data['parent_code'], _parentCodeMeta));
    } else if (isInserting) {
      context.missing(_parentCodeMeta);
    }
    if (data.containsKey('rule_name')) {
      context.handle(_ruleNameMeta,
          ruleName.isAcceptableOrUnknown(data['rule_name'], _ruleNameMeta));
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value'], _valueMeta));
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description'], _descriptionMeta));
    }
    if (data.containsKey('device_rule')) {
      context.handle(
          _deviceRuleMeta,
          deviceRule.isAcceptableOrUnknown(
              data['device_rule'], _deviceRuleMeta));
    }
    if (data.containsKey('user_rule')) {
      context.handle(_userRuleMeta,
          userRule.isAcceptableOrUnknown(data['user_rule'], _userRuleMeta));
    }
    if (data.containsKey('domain')) {
      context.handle(_domainMeta,
          domain.isAcceptableOrUnknown(data['domain'], _domainMeta));
    }
    if (data.containsKey('device_id')) {
      context.handle(_deviceIdMeta,
          deviceId.isAcceptableOrUnknown(data['device_id'], _deviceIdMeta));
    }
    if (data.containsKey('user_name')) {
      context.handle(_userNameMeta,
          userName.isAcceptableOrUnknown(data['user_name'], _userNameMeta));
    }
    if (data.containsKey('screen')) {
      context.handle(_screenMeta,
          screen.isAcceptableOrUnknown(data['screen'], _screenMeta));
    }
    if (data.containsKey('is_apply')) {
      context.handle(_isApplyMeta,
          isApply.isAcceptableOrUnknown(data['is_apply'], _isApplyMeta));
    }
    if (data.containsKey('sync_error')) {
      context.handle(_syncErrorMeta,
          syncError.isAcceptableOrUnknown(data['sync_error'], _syncErrorMeta));
    }
    if (data.containsKey('expired_date_time')) {
      context.handle(
          _expiredDateTimeMeta,
          expiredDateTime.isAcceptableOrUnknown(
              data['expired_date_time'], _expiredDateTimeMeta));
    }
    if (data.containsKey('data_type')) {
      context.handle(_dataTypeMeta,
          dataType.isAcceptableOrUnknown(data['data_type'], _dataTypeMeta));
    }
    if (data.containsKey('data_value')) {
      context.handle(_dataValueMeta,
          dataValue.isAcceptableOrUnknown(data['data_value'], _dataValueMeta));
    }
    if (data.containsKey('groups')) {
      context.handle(_groupsMeta,
          groups.isAcceptableOrUnknown(data['groups'], _groupsMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {code};
  @override
  NonGlobalBusinessRuleData map(Map<String, dynamic> data,
      {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return NonGlobalBusinessRuleData.fromData(data, _db,
        prefix: effectivePrefix);
  }

  @override
  $NonGlobalBusinessRuleTable createAlias(String alias) {
    return $NonGlobalBusinessRuleTable(_db, alias);
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
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || tenantId != null) {
      map['tenant_id'] = Variable<int>(tenantId);
    }
    if (!nullToAbsent || uerName != null) {
      map['uer_name'] = Variable<String>(uerName);
    }
    if (!nullToAbsent || userId != null) {
      map['user_id'] = Variable<int>(userId);
    }
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || functionName != null) {
      map['function_name'] = Variable<String>(functionName);
    }
    if (!nullToAbsent || logDateTime != null) {
      map['log_date_time'] = Variable<DateTime>(logDateTime);
    }
    if (!nullToAbsent || syncFrequency != null) {
      map['sync_frequency'] = Variable<String>(syncFrequency);
    }
    if (!nullToAbsent || logDescription != null) {
      map['log_description'] = Variable<String>(logDescription);
    }
    if (!nullToAbsent || documentNo != null) {
      map['document_no'] = Variable<String>(documentNo);
    }
    if (!nullToAbsent || deviceId != null) {
      map['device_id'] = Variable<String>(deviceId);
    }
    if (!nullToAbsent || logCode != null) {
      map['log_code'] = Variable<String>(logCode);
    }
    if (!nullToAbsent || logSeverity != null) {
      map['log_severity'] = Variable<String>(logSeverity);
    }
    if (!nullToAbsent || exportDateTime != null) {
      map['export_date_time'] = Variable<DateTime>(exportDateTime);
    }
    if (!nullToAbsent || exportStatus != null) {
      map['export_status'] = Variable<String>(exportStatus);
    }
    if (!nullToAbsent || syncError != null) {
      map['sync_error'] = Variable<String>(syncError);
    }
    return map;
  }

  ApplicationLoggerCompanion toCompanion(bool nullToAbsent) {
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
  static Insertable<ApplicationLoggerData> custom({
    Expression<int> tenantId,
    Expression<String> uerName,
    Expression<int> userId,
    Expression<int> id,
    Expression<String> functionName,
    Expression<DateTime> logDateTime,
    Expression<String> syncFrequency,
    Expression<String> logDescription,
    Expression<String> documentNo,
    Expression<String> deviceId,
    Expression<String> logCode,
    Expression<String> logSeverity,
    Expression<DateTime> exportDateTime,
    Expression<String> exportStatus,
    Expression<String> syncError,
  }) {
    return RawValuesInsertable({
      if (tenantId != null) 'tenant_id': tenantId,
      if (uerName != null) 'uer_name': uerName,
      if (userId != null) 'user_id': userId,
      if (id != null) 'id': id,
      if (functionName != null) 'function_name': functionName,
      if (logDateTime != null) 'log_date_time': logDateTime,
      if (syncFrequency != null) 'sync_frequency': syncFrequency,
      if (logDescription != null) 'log_description': logDescription,
      if (documentNo != null) 'document_no': documentNo,
      if (deviceId != null) 'device_id': deviceId,
      if (logCode != null) 'log_code': logCode,
      if (logSeverity != null) 'log_severity': logSeverity,
      if (exportDateTime != null) 'export_date_time': exportDateTime,
      if (exportStatus != null) 'export_status': exportStatus,
      if (syncError != null) 'sync_error': syncError,
    });
  }

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

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (tenantId.present) {
      map['tenant_id'] = Variable<int>(tenantId.value);
    }
    if (uerName.present) {
      map['uer_name'] = Variable<String>(uerName.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<int>(userId.value);
    }
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (functionName.present) {
      map['function_name'] = Variable<String>(functionName.value);
    }
    if (logDateTime.present) {
      map['log_date_time'] = Variable<DateTime>(logDateTime.value);
    }
    if (syncFrequency.present) {
      map['sync_frequency'] = Variable<String>(syncFrequency.value);
    }
    if (logDescription.present) {
      map['log_description'] = Variable<String>(logDescription.value);
    }
    if (documentNo.present) {
      map['document_no'] = Variable<String>(documentNo.value);
    }
    if (deviceId.present) {
      map['device_id'] = Variable<String>(deviceId.value);
    }
    if (logCode.present) {
      map['log_code'] = Variable<String>(logCode.value);
    }
    if (logSeverity.present) {
      map['log_severity'] = Variable<String>(logSeverity.value);
    }
    if (exportDateTime.present) {
      map['export_date_time'] = Variable<DateTime>(exportDateTime.value);
    }
    if (exportStatus.present) {
      map['export_status'] = Variable<String>(exportStatus.value);
    }
    if (syncError.present) {
      map['sync_error'] = Variable<String>(syncError.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ApplicationLoggerCompanion(')
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
  VerificationContext validateIntegrity(
      Insertable<ApplicationLoggerData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('tenant_id')) {
      context.handle(_tenantIdMeta,
          tenantId.isAcceptableOrUnknown(data['tenant_id'], _tenantIdMeta));
    }
    if (data.containsKey('uer_name')) {
      context.handle(_uerNameMeta,
          uerName.isAcceptableOrUnknown(data['uer_name'], _uerNameMeta));
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id'], _userIdMeta));
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('function_name')) {
      context.handle(
          _functionNameMeta,
          functionName.isAcceptableOrUnknown(
              data['function_name'], _functionNameMeta));
    } else if (isInserting) {
      context.missing(_functionNameMeta);
    }
    if (data.containsKey('log_date_time')) {
      context.handle(
          _logDateTimeMeta,
          logDateTime.isAcceptableOrUnknown(
              data['log_date_time'], _logDateTimeMeta));
    } else if (isInserting) {
      context.missing(_logDateTimeMeta);
    }
    if (data.containsKey('sync_frequency')) {
      context.handle(
          _syncFrequencyMeta,
          syncFrequency.isAcceptableOrUnknown(
              data['sync_frequency'], _syncFrequencyMeta));
    } else if (isInserting) {
      context.missing(_syncFrequencyMeta);
    }
    if (data.containsKey('log_description')) {
      context.handle(
          _logDescriptionMeta,
          logDescription.isAcceptableOrUnknown(
              data['log_description'], _logDescriptionMeta));
    } else if (isInserting) {
      context.missing(_logDescriptionMeta);
    }
    if (data.containsKey('document_no')) {
      context.handle(
          _documentNoMeta,
          documentNo.isAcceptableOrUnknown(
              data['document_no'], _documentNoMeta));
    } else if (isInserting) {
      context.missing(_documentNoMeta);
    }
    if (data.containsKey('device_id')) {
      context.handle(_deviceIdMeta,
          deviceId.isAcceptableOrUnknown(data['device_id'], _deviceIdMeta));
    } else if (isInserting) {
      context.missing(_deviceIdMeta);
    }
    if (data.containsKey('log_code')) {
      context.handle(_logCodeMeta,
          logCode.isAcceptableOrUnknown(data['log_code'], _logCodeMeta));
    } else if (isInserting) {
      context.missing(_logCodeMeta);
    }
    if (data.containsKey('log_severity')) {
      context.handle(
          _logSeverityMeta,
          logSeverity.isAcceptableOrUnknown(
              data['log_severity'], _logSeverityMeta));
    } else if (isInserting) {
      context.missing(_logSeverityMeta);
    }
    if (data.containsKey('export_date_time')) {
      context.handle(
          _exportDateTimeMeta,
          exportDateTime.isAcceptableOrUnknown(
              data['export_date_time'], _exportDateTimeMeta));
    }
    if (data.containsKey('export_status')) {
      context.handle(
          _exportStatusMeta,
          exportStatus.isAcceptableOrUnknown(
              data['export_status'], _exportStatusMeta));
    }
    if (data.containsKey('sync_error')) {
      context.handle(_syncErrorMeta,
          syncError.isAcceptableOrUnknown(data['sync_error'], _syncErrorMeta));
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
  $ApplicationLoggerTable createAlias(String alias) {
    return $ApplicationLoggerTable(_db, alias);
  }
}

class TenantData extends DataClass implements Insertable<TenantData> {
  final int tenantId;
  final String tenantName;
  final int tenantState;
  final int userId;
  final String userName;
  TenantData(
      {@required this.tenantId,
      this.tenantName,
      this.tenantState,
      this.userId,
      this.userName});
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
      userId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}user_id']),
      userName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}user_name']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || tenantId != null) {
      map['tenant_id'] = Variable<int>(tenantId);
    }
    if (!nullToAbsent || tenantName != null) {
      map['tenant_name'] = Variable<String>(tenantName);
    }
    if (!nullToAbsent || tenantState != null) {
      map['tenant_state'] = Variable<int>(tenantState);
    }
    if (!nullToAbsent || userId != null) {
      map['user_id'] = Variable<int>(userId);
    }
    if (!nullToAbsent || userName != null) {
      map['user_name'] = Variable<String>(userName);
    }
    return map;
  }

  TenantCompanion toCompanion(bool nullToAbsent) {
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
      userId:
          userId == null && nullToAbsent ? const Value.absent() : Value(userId),
      userName: userName == null && nullToAbsent
          ? const Value.absent()
          : Value(userName),
    );
  }

  factory TenantData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return TenantData(
      tenantId: serializer.fromJson<int>(json['tenantId']),
      tenantName: serializer.fromJson<String>(json['tenantName']),
      tenantState: serializer.fromJson<int>(json['tenantState']),
      userId: serializer.fromJson<int>(json['userId']),
      userName: serializer.fromJson<String>(json['userName']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'tenantId': serializer.toJson<int>(tenantId),
      'tenantName': serializer.toJson<String>(tenantName),
      'tenantState': serializer.toJson<int>(tenantState),
      'userId': serializer.toJson<int>(userId),
      'userName': serializer.toJson<String>(userName),
    };
  }

  TenantData copyWith(
          {int tenantId,
          String tenantName,
          int tenantState,
          int userId,
          String userName}) =>
      TenantData(
        tenantId: tenantId ?? this.tenantId,
        tenantName: tenantName ?? this.tenantName,
        tenantState: tenantState ?? this.tenantState,
        userId: userId ?? this.userId,
        userName: userName ?? this.userName,
      );
  @override
  String toString() {
    return (StringBuffer('TenantData(')
          ..write('tenantId: $tenantId, ')
          ..write('tenantName: $tenantName, ')
          ..write('tenantState: $tenantState, ')
          ..write('userId: $userId, ')
          ..write('userName: $userName')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      tenantId.hashCode,
      $mrjc(
          tenantName.hashCode,
          $mrjc(tenantState.hashCode,
              $mrjc(userId.hashCode, userName.hashCode)))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is TenantData &&
          other.tenantId == this.tenantId &&
          other.tenantName == this.tenantName &&
          other.tenantState == this.tenantState &&
          other.userId == this.userId &&
          other.userName == this.userName);
}

class TenantCompanion extends UpdateCompanion<TenantData> {
  final Value<int> tenantId;
  final Value<String> tenantName;
  final Value<int> tenantState;
  final Value<int> userId;
  final Value<String> userName;
  const TenantCompanion({
    this.tenantId = const Value.absent(),
    this.tenantName = const Value.absent(),
    this.tenantState = const Value.absent(),
    this.userId = const Value.absent(),
    this.userName = const Value.absent(),
  });
  TenantCompanion.insert({
    this.tenantId = const Value.absent(),
    this.tenantName = const Value.absent(),
    this.tenantState = const Value.absent(),
    this.userId = const Value.absent(),
    this.userName = const Value.absent(),
  });
  static Insertable<TenantData> custom({
    Expression<int> tenantId,
    Expression<String> tenantName,
    Expression<int> tenantState,
    Expression<int> userId,
    Expression<String> userName,
  }) {
    return RawValuesInsertable({
      if (tenantId != null) 'tenant_id': tenantId,
      if (tenantName != null) 'tenant_name': tenantName,
      if (tenantState != null) 'tenant_state': tenantState,
      if (userId != null) 'user_id': userId,
      if (userName != null) 'user_name': userName,
    });
  }

  TenantCompanion copyWith(
      {Value<int> tenantId,
      Value<String> tenantName,
      Value<int> tenantState,
      Value<int> userId,
      Value<String> userName}) {
    return TenantCompanion(
      tenantId: tenantId ?? this.tenantId,
      tenantName: tenantName ?? this.tenantName,
      tenantState: tenantState ?? this.tenantState,
      userId: userId ?? this.userId,
      userName: userName ?? this.userName,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (tenantId.present) {
      map['tenant_id'] = Variable<int>(tenantId.value);
    }
    if (tenantName.present) {
      map['tenant_name'] = Variable<String>(tenantName.value);
    }
    if (tenantState.present) {
      map['tenant_state'] = Variable<int>(tenantState.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<int>(userId.value);
    }
    if (userName.present) {
      map['user_name'] = Variable<String>(userName.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TenantCompanion(')
          ..write('tenantId: $tenantId, ')
          ..write('tenantName: $tenantName, ')
          ..write('tenantState: $tenantState, ')
          ..write('userId: $userId, ')
          ..write('userName: $userName')
          ..write(')'))
        .toString();
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
    return GeneratedIntColumn('tenant_id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _tenantNameMeta = const VerificationMeta('tenantName');
  GeneratedTextColumn _tenantName;
  @override
  GeneratedTextColumn get tenantName => _tenantName ??= _constructTenantName();
  GeneratedTextColumn _constructTenantName() {
    return GeneratedTextColumn(
      'tenant_name',
      $tableName,
      true,
    );
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

  @override
  List<GeneratedColumn> get $columns =>
      [tenantId, tenantName, tenantState, userId, userName];
  @override
  $TenantTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'tenant';
  @override
  final String actualTableName = 'tenant';
  @override
  VerificationContext validateIntegrity(Insertable<TenantData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('tenant_id')) {
      context.handle(_tenantIdMeta,
          tenantId.isAcceptableOrUnknown(data['tenant_id'], _tenantIdMeta));
    }
    if (data.containsKey('tenant_name')) {
      context.handle(
          _tenantNameMeta,
          tenantName.isAcceptableOrUnknown(
              data['tenant_name'], _tenantNameMeta));
    }
    if (data.containsKey('tenant_state')) {
      context.handle(
          _tenantStateMeta,
          tenantState.isAcceptableOrUnknown(
              data['tenant_state'], _tenantStateMeta));
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id'], _userIdMeta));
    }
    if (data.containsKey('user_name')) {
      context.handle(_userNameMeta,
          userName.isAcceptableOrUnknown(data['user_name'], _userNameMeta));
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
  $TenantTable createAlias(String alias) {
    return $TenantTable(_db, alias);
  }
}

class NonGlobalPreferenceData extends DataClass
    implements Insertable<NonGlobalPreferenceData> {
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
  final String dataType;
  final String dataValue;
  final String groups;
  NonGlobalPreferenceData(
      {@required this.id,
      @required this.parentCode,
      @required this.code,
      @required this.value,
      this.settingType,
      this.deviceId,
      this.userName,
      this.screen,
      @required this.isApply,
      this.expiredDateTime,
      this.syncError,
      this.dataType,
      this.dataValue,
      this.groups});
  factory NonGlobalPreferenceData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return NonGlobalPreferenceData(
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
      dataType: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}data_type']),
      dataValue: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}data_value']),
      groups:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}groups']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || parentCode != null) {
      map['parent_code'] = Variable<String>(parentCode);
    }
    if (!nullToAbsent || code != null) {
      map['code'] = Variable<String>(code);
    }
    if (!nullToAbsent || value != null) {
      map['value'] = Variable<String>(value);
    }
    if (!nullToAbsent || settingType != null) {
      map['setting_type'] = Variable<String>(settingType);
    }
    if (!nullToAbsent || deviceId != null) {
      map['device_id'] = Variable<String>(deviceId);
    }
    if (!nullToAbsent || userName != null) {
      map['user_name'] = Variable<String>(userName);
    }
    if (!nullToAbsent || screen != null) {
      map['screen'] = Variable<String>(screen);
    }
    if (!nullToAbsent || isApply != null) {
      map['is_apply'] = Variable<bool>(isApply);
    }
    if (!nullToAbsent || expiredDateTime != null) {
      map['expired_date_time'] = Variable<DateTime>(expiredDateTime);
    }
    if (!nullToAbsent || syncError != null) {
      map['sync_error'] = Variable<String>(syncError);
    }
    if (!nullToAbsent || dataType != null) {
      map['data_type'] = Variable<String>(dataType);
    }
    if (!nullToAbsent || dataValue != null) {
      map['data_value'] = Variable<String>(dataValue);
    }
    if (!nullToAbsent || groups != null) {
      map['groups'] = Variable<String>(groups);
    }
    return map;
  }

  NonGlobalPreferenceCompanion toCompanion(bool nullToAbsent) {
    return NonGlobalPreferenceCompanion(
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
      dataType: dataType == null && nullToAbsent
          ? const Value.absent()
          : Value(dataType),
      dataValue: dataValue == null && nullToAbsent
          ? const Value.absent()
          : Value(dataValue),
      groups:
          groups == null && nullToAbsent ? const Value.absent() : Value(groups),
    );
  }

  factory NonGlobalPreferenceData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return NonGlobalPreferenceData(
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
      dataType: serializer.fromJson<String>(json['dataType']),
      dataValue: serializer.fromJson<String>(json['dataValue']),
      groups: serializer.fromJson<String>(json['groups']),
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
      'dataType': serializer.toJson<String>(dataType),
      'dataValue': serializer.toJson<String>(dataValue),
      'groups': serializer.toJson<String>(groups),
    };
  }

  NonGlobalPreferenceData copyWith(
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
          String syncError,
          String dataType,
          String dataValue,
          String groups}) =>
      NonGlobalPreferenceData(
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
        dataType: dataType ?? this.dataType,
        dataValue: dataValue ?? this.dataValue,
        groups: groups ?? this.groups,
      );
  @override
  String toString() {
    return (StringBuffer('NonGlobalPreferenceData(')
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
          ..write('syncError: $syncError, ')
          ..write('dataType: $dataType, ')
          ..write('dataValue: $dataValue, ')
          ..write('groups: $groups')
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
                                      $mrjc(
                                          expiredDateTime.hashCode,
                                          $mrjc(
                                              syncError.hashCode,
                                              $mrjc(
                                                  dataType.hashCode,
                                                  $mrjc(
                                                      dataValue.hashCode,
                                                      groups
                                                          .hashCode))))))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is NonGlobalPreferenceData &&
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
          other.syncError == this.syncError &&
          other.dataType == this.dataType &&
          other.dataValue == this.dataValue &&
          other.groups == this.groups);
}

class NonGlobalPreferenceCompanion
    extends UpdateCompanion<NonGlobalPreferenceData> {
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
  final Value<String> dataType;
  final Value<String> dataValue;
  final Value<String> groups;
  const NonGlobalPreferenceCompanion({
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
    this.dataType = const Value.absent(),
    this.dataValue = const Value.absent(),
    this.groups = const Value.absent(),
  });
  NonGlobalPreferenceCompanion.insert({
    this.id = const Value.absent(),
    @required String parentCode,
    @required String code,
    @required String value,
    this.settingType = const Value.absent(),
    this.deviceId = const Value.absent(),
    this.userName = const Value.absent(),
    this.screen = const Value.absent(),
    this.isApply = const Value.absent(),
    this.expiredDateTime = const Value.absent(),
    this.syncError = const Value.absent(),
    this.dataType = const Value.absent(),
    this.dataValue = const Value.absent(),
    this.groups = const Value.absent(),
  })  : parentCode = Value(parentCode),
        code = Value(code),
        value = Value(value);
  static Insertable<NonGlobalPreferenceData> custom({
    Expression<int> id,
    Expression<String> parentCode,
    Expression<String> code,
    Expression<String> value,
    Expression<String> settingType,
    Expression<String> deviceId,
    Expression<String> userName,
    Expression<String> screen,
    Expression<bool> isApply,
    Expression<DateTime> expiredDateTime,
    Expression<String> syncError,
    Expression<String> dataType,
    Expression<String> dataValue,
    Expression<String> groups,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (parentCode != null) 'parent_code': parentCode,
      if (code != null) 'code': code,
      if (value != null) 'value': value,
      if (settingType != null) 'setting_type': settingType,
      if (deviceId != null) 'device_id': deviceId,
      if (userName != null) 'user_name': userName,
      if (screen != null) 'screen': screen,
      if (isApply != null) 'is_apply': isApply,
      if (expiredDateTime != null) 'expired_date_time': expiredDateTime,
      if (syncError != null) 'sync_error': syncError,
      if (dataType != null) 'data_type': dataType,
      if (dataValue != null) 'data_value': dataValue,
      if (groups != null) 'groups': groups,
    });
  }

  NonGlobalPreferenceCompanion copyWith(
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
      Value<String> syncError,
      Value<String> dataType,
      Value<String> dataValue,
      Value<String> groups}) {
    return NonGlobalPreferenceCompanion(
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
      dataType: dataType ?? this.dataType,
      dataValue: dataValue ?? this.dataValue,
      groups: groups ?? this.groups,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (parentCode.present) {
      map['parent_code'] = Variable<String>(parentCode.value);
    }
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (value.present) {
      map['value'] = Variable<String>(value.value);
    }
    if (settingType.present) {
      map['setting_type'] = Variable<String>(settingType.value);
    }
    if (deviceId.present) {
      map['device_id'] = Variable<String>(deviceId.value);
    }
    if (userName.present) {
      map['user_name'] = Variable<String>(userName.value);
    }
    if (screen.present) {
      map['screen'] = Variable<String>(screen.value);
    }
    if (isApply.present) {
      map['is_apply'] = Variable<bool>(isApply.value);
    }
    if (expiredDateTime.present) {
      map['expired_date_time'] = Variable<DateTime>(expiredDateTime.value);
    }
    if (syncError.present) {
      map['sync_error'] = Variable<String>(syncError.value);
    }
    if (dataType.present) {
      map['data_type'] = Variable<String>(dataType.value);
    }
    if (dataValue.present) {
      map['data_value'] = Variable<String>(dataValue.value);
    }
    if (groups.present) {
      map['groups'] = Variable<String>(groups.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NonGlobalPreferenceCompanion(')
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
          ..write('syncError: $syncError, ')
          ..write('dataType: $dataType, ')
          ..write('dataValue: $dataValue, ')
          ..write('groups: $groups')
          ..write(')'))
        .toString();
  }
}

class $NonGlobalPreferenceTable extends NonGlobalPreference
    with TableInfo<$NonGlobalPreferenceTable, NonGlobalPreferenceData> {
  final GeneratedDatabase _db;
  final String _alias;
  $NonGlobalPreferenceTable(this._db, [this._alias]);
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

  final VerificationMeta _screenMeta = const VerificationMeta('screen');
  GeneratedTextColumn _screen;
  @override
  GeneratedTextColumn get screen => _screen ??= _constructScreen();
  GeneratedTextColumn _constructScreen() {
    return GeneratedTextColumn(
      'screen',
      $tableName,
      true,
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

  final VerificationMeta _dataTypeMeta = const VerificationMeta('dataType');
  GeneratedTextColumn _dataType;
  @override
  GeneratedTextColumn get dataType => _dataType ??= _constructDataType();
  GeneratedTextColumn _constructDataType() {
    return GeneratedTextColumn(
      'data_type',
      $tableName,
      true,
    );
  }

  final VerificationMeta _dataValueMeta = const VerificationMeta('dataValue');
  GeneratedTextColumn _dataValue;
  @override
  GeneratedTextColumn get dataValue => _dataValue ??= _constructDataValue();
  GeneratedTextColumn _constructDataValue() {
    return GeneratedTextColumn(
      'data_value',
      $tableName,
      true,
    );
  }

  final VerificationMeta _groupsMeta = const VerificationMeta('groups');
  GeneratedTextColumn _groups;
  @override
  GeneratedTextColumn get groups => _groups ??= _constructGroups();
  GeneratedTextColumn _constructGroups() {
    return GeneratedTextColumn(
      'groups',
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
        syncError,
        dataType,
        dataValue,
        groups
      ];
  @override
  $NonGlobalPreferenceTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'non_global_preference';
  @override
  final String actualTableName = 'non_global_preference';
  @override
  VerificationContext validateIntegrity(
      Insertable<NonGlobalPreferenceData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('parent_code')) {
      context.handle(
          _parentCodeMeta,
          parentCode.isAcceptableOrUnknown(
              data['parent_code'], _parentCodeMeta));
    } else if (isInserting) {
      context.missing(_parentCodeMeta);
    }
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code'], _codeMeta));
    } else if (isInserting) {
      context.missing(_codeMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value'], _valueMeta));
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    if (data.containsKey('setting_type')) {
      context.handle(
          _settingTypeMeta,
          settingType.isAcceptableOrUnknown(
              data['setting_type'], _settingTypeMeta));
    }
    if (data.containsKey('device_id')) {
      context.handle(_deviceIdMeta,
          deviceId.isAcceptableOrUnknown(data['device_id'], _deviceIdMeta));
    }
    if (data.containsKey('user_name')) {
      context.handle(_userNameMeta,
          userName.isAcceptableOrUnknown(data['user_name'], _userNameMeta));
    }
    if (data.containsKey('screen')) {
      context.handle(_screenMeta,
          screen.isAcceptableOrUnknown(data['screen'], _screenMeta));
    }
    if (data.containsKey('is_apply')) {
      context.handle(_isApplyMeta,
          isApply.isAcceptableOrUnknown(data['is_apply'], _isApplyMeta));
    }
    if (data.containsKey('expired_date_time')) {
      context.handle(
          _expiredDateTimeMeta,
          expiredDateTime.isAcceptableOrUnknown(
              data['expired_date_time'], _expiredDateTimeMeta));
    }
    if (data.containsKey('sync_error')) {
      context.handle(_syncErrorMeta,
          syncError.isAcceptableOrUnknown(data['sync_error'], _syncErrorMeta));
    }
    if (data.containsKey('data_type')) {
      context.handle(_dataTypeMeta,
          dataType.isAcceptableOrUnknown(data['data_type'], _dataTypeMeta));
    }
    if (data.containsKey('data_value')) {
      context.handle(_dataValueMeta,
          dataValue.isAcceptableOrUnknown(data['data_value'], _dataValueMeta));
    }
    if (data.containsKey('groups')) {
      context.handle(_groupsMeta,
          groups.isAcceptableOrUnknown(data['groups'], _groupsMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  NonGlobalPreferenceData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return NonGlobalPreferenceData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $NonGlobalPreferenceTable createAlias(String alias) {
    return $NonGlobalPreferenceTable(_db, alias);
  }
}

class DesktopData extends DataClass implements Insertable<DesktopData> {
  final int id;
  final String iconName;
  final String iconImages;
  final String navigationRoute;
  final String iconGroup;
  final bool isFavorit;
  final String userPermission;
  DesktopData(
      {@required this.id,
      @required this.iconName,
      @required this.iconImages,
      @required this.navigationRoute,
      @required this.iconGroup,
      @required this.isFavorit,
      @required this.userPermission});
  factory DesktopData.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    return DesktopData(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      iconName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}icon_name']),
      iconImages: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}icon_images']),
      navigationRoute: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}navigation_route']),
      iconGroup: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}icon_group']),
      isFavorit: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}is_favorit']),
      userPermission: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}user_permission']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || iconName != null) {
      map['icon_name'] = Variable<String>(iconName);
    }
    if (!nullToAbsent || iconImages != null) {
      map['icon_images'] = Variable<String>(iconImages);
    }
    if (!nullToAbsent || navigationRoute != null) {
      map['navigation_route'] = Variable<String>(navigationRoute);
    }
    if (!nullToAbsent || iconGroup != null) {
      map['icon_group'] = Variable<String>(iconGroup);
    }
    if (!nullToAbsent || isFavorit != null) {
      map['is_favorit'] = Variable<bool>(isFavorit);
    }
    if (!nullToAbsent || userPermission != null) {
      map['user_permission'] = Variable<String>(userPermission);
    }
    return map;
  }

  DesktopCompanion toCompanion(bool nullToAbsent) {
    return DesktopCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      iconName: iconName == null && nullToAbsent
          ? const Value.absent()
          : Value(iconName),
      iconImages: iconImages == null && nullToAbsent
          ? const Value.absent()
          : Value(iconImages),
      navigationRoute: navigationRoute == null && nullToAbsent
          ? const Value.absent()
          : Value(navigationRoute),
      iconGroup: iconGroup == null && nullToAbsent
          ? const Value.absent()
          : Value(iconGroup),
      isFavorit: isFavorit == null && nullToAbsent
          ? const Value.absent()
          : Value(isFavorit),
      userPermission: userPermission == null && nullToAbsent
          ? const Value.absent()
          : Value(userPermission),
    );
  }

  factory DesktopData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return DesktopData(
      id: serializer.fromJson<int>(json['id']),
      iconName: serializer.fromJson<String>(json['iconName']),
      iconImages: serializer.fromJson<String>(json['iconImages']),
      navigationRoute: serializer.fromJson<String>(json['navigationRoute']),
      iconGroup: serializer.fromJson<String>(json['iconGroup']),
      isFavorit: serializer.fromJson<bool>(json['isFavorit']),
      userPermission: serializer.fromJson<String>(json['userPermission']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'iconName': serializer.toJson<String>(iconName),
      'iconImages': serializer.toJson<String>(iconImages),
      'navigationRoute': serializer.toJson<String>(navigationRoute),
      'iconGroup': serializer.toJson<String>(iconGroup),
      'isFavorit': serializer.toJson<bool>(isFavorit),
      'userPermission': serializer.toJson<String>(userPermission),
    };
  }

  DesktopData copyWith(
          {int id,
          String iconName,
          String iconImages,
          String navigationRoute,
          String iconGroup,
          bool isFavorit,
          String userPermission}) =>
      DesktopData(
        id: id ?? this.id,
        iconName: iconName ?? this.iconName,
        iconImages: iconImages ?? this.iconImages,
        navigationRoute: navigationRoute ?? this.navigationRoute,
        iconGroup: iconGroup ?? this.iconGroup,
        isFavorit: isFavorit ?? this.isFavorit,
        userPermission: userPermission ?? this.userPermission,
      );
  @override
  String toString() {
    return (StringBuffer('DesktopData(')
          ..write('id: $id, ')
          ..write('iconName: $iconName, ')
          ..write('iconImages: $iconImages, ')
          ..write('navigationRoute: $navigationRoute, ')
          ..write('iconGroup: $iconGroup, ')
          ..write('isFavorit: $isFavorit, ')
          ..write('userPermission: $userPermission')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          iconName.hashCode,
          $mrjc(
              iconImages.hashCode,
              $mrjc(
                  navigationRoute.hashCode,
                  $mrjc(iconGroup.hashCode,
                      $mrjc(isFavorit.hashCode, userPermission.hashCode)))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is DesktopData &&
          other.id == this.id &&
          other.iconName == this.iconName &&
          other.iconImages == this.iconImages &&
          other.navigationRoute == this.navigationRoute &&
          other.iconGroup == this.iconGroup &&
          other.isFavorit == this.isFavorit &&
          other.userPermission == this.userPermission);
}

class DesktopCompanion extends UpdateCompanion<DesktopData> {
  final Value<int> id;
  final Value<String> iconName;
  final Value<String> iconImages;
  final Value<String> navigationRoute;
  final Value<String> iconGroup;
  final Value<bool> isFavorit;
  final Value<String> userPermission;
  const DesktopCompanion({
    this.id = const Value.absent(),
    this.iconName = const Value.absent(),
    this.iconImages = const Value.absent(),
    this.navigationRoute = const Value.absent(),
    this.iconGroup = const Value.absent(),
    this.isFavorit = const Value.absent(),
    this.userPermission = const Value.absent(),
  });
  DesktopCompanion.insert({
    this.id = const Value.absent(),
    @required String iconName,
    @required String iconImages,
    @required String navigationRoute,
    @required String iconGroup,
    this.isFavorit = const Value.absent(),
    @required String userPermission,
  })  : iconName = Value(iconName),
        iconImages = Value(iconImages),
        navigationRoute = Value(navigationRoute),
        iconGroup = Value(iconGroup),
        userPermission = Value(userPermission);
  static Insertable<DesktopData> custom({
    Expression<int> id,
    Expression<String> iconName,
    Expression<String> iconImages,
    Expression<String> navigationRoute,
    Expression<String> iconGroup,
    Expression<bool> isFavorit,
    Expression<String> userPermission,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (iconName != null) 'icon_name': iconName,
      if (iconImages != null) 'icon_images': iconImages,
      if (navigationRoute != null) 'navigation_route': navigationRoute,
      if (iconGroup != null) 'icon_group': iconGroup,
      if (isFavorit != null) 'is_favorit': isFavorit,
      if (userPermission != null) 'user_permission': userPermission,
    });
  }

  DesktopCompanion copyWith(
      {Value<int> id,
      Value<String> iconName,
      Value<String> iconImages,
      Value<String> navigationRoute,
      Value<String> iconGroup,
      Value<bool> isFavorit,
      Value<String> userPermission}) {
    return DesktopCompanion(
      id: id ?? this.id,
      iconName: iconName ?? this.iconName,
      iconImages: iconImages ?? this.iconImages,
      navigationRoute: navigationRoute ?? this.navigationRoute,
      iconGroup: iconGroup ?? this.iconGroup,
      isFavorit: isFavorit ?? this.isFavorit,
      userPermission: userPermission ?? this.userPermission,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (iconName.present) {
      map['icon_name'] = Variable<String>(iconName.value);
    }
    if (iconImages.present) {
      map['icon_images'] = Variable<String>(iconImages.value);
    }
    if (navigationRoute.present) {
      map['navigation_route'] = Variable<String>(navigationRoute.value);
    }
    if (iconGroup.present) {
      map['icon_group'] = Variable<String>(iconGroup.value);
    }
    if (isFavorit.present) {
      map['is_favorit'] = Variable<bool>(isFavorit.value);
    }
    if (userPermission.present) {
      map['user_permission'] = Variable<String>(userPermission.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DesktopCompanion(')
          ..write('id: $id, ')
          ..write('iconName: $iconName, ')
          ..write('iconImages: $iconImages, ')
          ..write('navigationRoute: $navigationRoute, ')
          ..write('iconGroup: $iconGroup, ')
          ..write('isFavorit: $isFavorit, ')
          ..write('userPermission: $userPermission')
          ..write(')'))
        .toString();
  }
}

class $DesktopTable extends Desktop with TableInfo<$DesktopTable, DesktopData> {
  final GeneratedDatabase _db;
  final String _alias;
  $DesktopTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _iconNameMeta = const VerificationMeta('iconName');
  GeneratedTextColumn _iconName;
  @override
  GeneratedTextColumn get iconName => _iconName ??= _constructIconName();
  GeneratedTextColumn _constructIconName() {
    return GeneratedTextColumn(
      'icon_name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _iconImagesMeta = const VerificationMeta('iconImages');
  GeneratedTextColumn _iconImages;
  @override
  GeneratedTextColumn get iconImages => _iconImages ??= _constructIconImages();
  GeneratedTextColumn _constructIconImages() {
    return GeneratedTextColumn(
      'icon_images',
      $tableName,
      false,
    );
  }

  final VerificationMeta _navigationRouteMeta =
      const VerificationMeta('navigationRoute');
  GeneratedTextColumn _navigationRoute;
  @override
  GeneratedTextColumn get navigationRoute =>
      _navigationRoute ??= _constructNavigationRoute();
  GeneratedTextColumn _constructNavigationRoute() {
    return GeneratedTextColumn(
      'navigation_route',
      $tableName,
      false,
    );
  }

  final VerificationMeta _iconGroupMeta = const VerificationMeta('iconGroup');
  GeneratedTextColumn _iconGroup;
  @override
  GeneratedTextColumn get iconGroup => _iconGroup ??= _constructIconGroup();
  GeneratedTextColumn _constructIconGroup() {
    return GeneratedTextColumn(
      'icon_group',
      $tableName,
      false,
    );
  }

  final VerificationMeta _isFavoritMeta = const VerificationMeta('isFavorit');
  GeneratedBoolColumn _isFavorit;
  @override
  GeneratedBoolColumn get isFavorit => _isFavorit ??= _constructIsFavorit();
  GeneratedBoolColumn _constructIsFavorit() {
    return GeneratedBoolColumn('is_favorit', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _userPermissionMeta =
      const VerificationMeta('userPermission');
  GeneratedTextColumn _userPermission;
  @override
  GeneratedTextColumn get userPermission =>
      _userPermission ??= _constructUserPermission();
  GeneratedTextColumn _constructUserPermission() {
    return GeneratedTextColumn(
      'user_permission',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        iconName,
        iconImages,
        navigationRoute,
        iconGroup,
        isFavorit,
        userPermission
      ];
  @override
  $DesktopTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'desktop';
  @override
  final String actualTableName = 'desktop';
  @override
  VerificationContext validateIntegrity(Insertable<DesktopData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('icon_name')) {
      context.handle(_iconNameMeta,
          iconName.isAcceptableOrUnknown(data['icon_name'], _iconNameMeta));
    } else if (isInserting) {
      context.missing(_iconNameMeta);
    }
    if (data.containsKey('icon_images')) {
      context.handle(
          _iconImagesMeta,
          iconImages.isAcceptableOrUnknown(
              data['icon_images'], _iconImagesMeta));
    } else if (isInserting) {
      context.missing(_iconImagesMeta);
    }
    if (data.containsKey('navigation_route')) {
      context.handle(
          _navigationRouteMeta,
          navigationRoute.isAcceptableOrUnknown(
              data['navigation_route'], _navigationRouteMeta));
    } else if (isInserting) {
      context.missing(_navigationRouteMeta);
    }
    if (data.containsKey('icon_group')) {
      context.handle(_iconGroupMeta,
          iconGroup.isAcceptableOrUnknown(data['icon_group'], _iconGroupMeta));
    } else if (isInserting) {
      context.missing(_iconGroupMeta);
    }
    if (data.containsKey('is_favorit')) {
      context.handle(_isFavoritMeta,
          isFavorit.isAcceptableOrUnknown(data['is_favorit'], _isFavoritMeta));
    }
    if (data.containsKey('user_permission')) {
      context.handle(
          _userPermissionMeta,
          userPermission.isAcceptableOrUnknown(
              data['user_permission'], _userPermissionMeta));
    } else if (isInserting) {
      context.missing(_userPermissionMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DesktopData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return DesktopData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $DesktopTable createAlias(String alias) {
    return $DesktopTable(_db, alias);
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
  $NonGlobalBusinessRuleTable _nonGlobalBusinessRule;
  $NonGlobalBusinessRuleTable get nonGlobalBusinessRule =>
      _nonGlobalBusinessRule ??= $NonGlobalBusinessRuleTable(this);
  $ApplicationLoggerTable _applicationLogger;
  $ApplicationLoggerTable get applicationLogger =>
      _applicationLogger ??= $ApplicationLoggerTable(this);
  $TenantTable _tenant;
  $TenantTable get tenant => _tenant ??= $TenantTable(this);
  $NonGlobalPreferenceTable _nonGlobalPreference;
  $NonGlobalPreferenceTable get nonGlobalPreference =>
      _nonGlobalPreference ??= $NonGlobalPreferenceTable(this);
  $DesktopTable _desktop;
  $DesktopTable get desktop => _desktop ??= $DesktopTable(this);
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
        nonGlobalBusinessRule,
        applicationLogger,
        tenant,
        nonGlobalPreference,
        desktop
      ];
}
