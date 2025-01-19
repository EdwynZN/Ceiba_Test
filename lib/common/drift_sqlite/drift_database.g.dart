// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drift_database.dart';

// ignore_for_file: type=lint
class User extends Table with TableInfo<User, UserTable> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  User(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL PRIMARY KEY');
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _usernameMeta =
      const VerificationMeta('username');
  late final GeneratedColumn<String> username = GeneratedColumn<String>(
      'username', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _phoneMeta = const VerificationMeta('phone');
  late final GeneratedColumn<String> phone = GeneratedColumn<String>(
      'phone', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _websiteMeta =
      const VerificationMeta('website');
  late final GeneratedColumn<String> website = GeneratedColumn<String>(
      'website', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, username, email, phone, website];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'user';
  @override
  VerificationContext validateIntegrity(Insertable<UserTable> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('username')) {
      context.handle(_usernameMeta,
          username.isAcceptableOrUnknown(data['username']!, _usernameMeta));
    } else if (isInserting) {
      context.missing(_usernameMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('phone')) {
      context.handle(
          _phoneMeta, phone.isAcceptableOrUnknown(data['phone']!, _phoneMeta));
    } else if (isInserting) {
      context.missing(_phoneMeta);
    }
    if (data.containsKey('website')) {
      context.handle(_websiteMeta,
          website.isAcceptableOrUnknown(data['website']!, _websiteMeta));
    } else if (isInserting) {
      context.missing(_websiteMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UserTable map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserTable(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      username: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}username'])!,
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email'])!,
      phone: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}phone'])!,
      website: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}website'])!,
    );
  }

  @override
  User createAlias(String alias) {
    return User(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class UserTable extends DataClass implements Insertable<UserTable> {
  final int id;
  final String name;
  final String username;
  final String email;
  final String phone;
  final String website;
  const UserTable(
      {required this.id,
      required this.name,
      required this.username,
      required this.email,
      required this.phone,
      required this.website});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['username'] = Variable<String>(username);
    map['email'] = Variable<String>(email);
    map['phone'] = Variable<String>(phone);
    map['website'] = Variable<String>(website);
    return map;
  }

  UserCompanion toCompanion(bool nullToAbsent) {
    return UserCompanion(
      id: Value(id),
      name: Value(name),
      username: Value(username),
      email: Value(email),
      phone: Value(phone),
      website: Value(website),
    );
  }

  factory UserTable.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserTable(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      username: serializer.fromJson<String>(json['username']),
      email: serializer.fromJson<String>(json['email']),
      phone: serializer.fromJson<String>(json['phone']),
      website: serializer.fromJson<String>(json['website']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'username': serializer.toJson<String>(username),
      'email': serializer.toJson<String>(email),
      'phone': serializer.toJson<String>(phone),
      'website': serializer.toJson<String>(website),
    };
  }

  UserTable copyWith(
          {int? id,
          String? name,
          String? username,
          String? email,
          String? phone,
          String? website}) =>
      UserTable(
        id: id ?? this.id,
        name: name ?? this.name,
        username: username ?? this.username,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        website: website ?? this.website,
      );
  UserTable copyWithCompanion(UserCompanion data) {
    return UserTable(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      username: data.username.present ? data.username.value : this.username,
      email: data.email.present ? data.email.value : this.email,
      phone: data.phone.present ? data.phone.value : this.phone,
      website: data.website.present ? data.website.value : this.website,
    );
  }

  @override
  String toString() {
    return (StringBuffer('UserTable(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('username: $username, ')
          ..write('email: $email, ')
          ..write('phone: $phone, ')
          ..write('website: $website')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, username, email, phone, website);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserTable &&
          other.id == this.id &&
          other.name == this.name &&
          other.username == this.username &&
          other.email == this.email &&
          other.phone == this.phone &&
          other.website == this.website);
}

class UserCompanion extends UpdateCompanion<UserTable> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> username;
  final Value<String> email;
  final Value<String> phone;
  final Value<String> website;
  const UserCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.username = const Value.absent(),
    this.email = const Value.absent(),
    this.phone = const Value.absent(),
    this.website = const Value.absent(),
  });
  UserCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String username,
    required String email,
    required String phone,
    required String website,
  })  : name = Value(name),
        username = Value(username),
        email = Value(email),
        phone = Value(phone),
        website = Value(website);
  static Insertable<UserTable> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? username,
    Expression<String>? email,
    Expression<String>? phone,
    Expression<String>? website,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (username != null) 'username': username,
      if (email != null) 'email': email,
      if (phone != null) 'phone': phone,
      if (website != null) 'website': website,
    });
  }

  UserCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? username,
      Value<String>? email,
      Value<String>? phone,
      Value<String>? website}) {
    return UserCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      username: username ?? this.username,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      website: website ?? this.website,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (username.present) {
      map['username'] = Variable<String>(username.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (phone.present) {
      map['phone'] = Variable<String>(phone.value);
    }
    if (website.present) {
      map['website'] = Variable<String>(website.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('username: $username, ')
          ..write('email: $email, ')
          ..write('phone: $phone, ')
          ..write('website: $website')
          ..write(')'))
        .toString();
  }
}

class Address extends Table with TableInfo<Address, AddressTable> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Address(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL PRIMARY KEY');
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  late final GeneratedColumn<int> userId = GeneratedColumn<int>(
      'user_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _streetMeta = const VerificationMeta('street');
  late final GeneratedColumn<String> street = GeneratedColumn<String>(
      'street', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _suiteMeta = const VerificationMeta('suite');
  late final GeneratedColumn<String> suite = GeneratedColumn<String>(
      'suite', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _cityMeta = const VerificationMeta('city');
  late final GeneratedColumn<String> city = GeneratedColumn<String>(
      'city', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _zipCodeMeta =
      const VerificationMeta('zipCode');
  late final GeneratedColumn<String> zipCode = GeneratedColumn<String>(
      'zipCode', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _latMeta = const VerificationMeta('lat');
  late final GeneratedColumn<double> lat = GeneratedColumn<double>(
      'lat', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _longMeta = const VerificationMeta('long');
  late final GeneratedColumn<double> long = GeneratedColumn<double>(
      'long', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  @override
  List<GeneratedColumn> get $columns =>
      [id, userId, street, suite, city, zipCode, lat, long];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'address';
  @override
  VerificationContext validateIntegrity(Insertable<AddressTable> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('street')) {
      context.handle(_streetMeta,
          street.isAcceptableOrUnknown(data['street']!, _streetMeta));
    } else if (isInserting) {
      context.missing(_streetMeta);
    }
    if (data.containsKey('suite')) {
      context.handle(
          _suiteMeta, suite.isAcceptableOrUnknown(data['suite']!, _suiteMeta));
    } else if (isInserting) {
      context.missing(_suiteMeta);
    }
    if (data.containsKey('city')) {
      context.handle(
          _cityMeta, city.isAcceptableOrUnknown(data['city']!, _cityMeta));
    } else if (isInserting) {
      context.missing(_cityMeta);
    }
    if (data.containsKey('zipCode')) {
      context.handle(_zipCodeMeta,
          zipCode.isAcceptableOrUnknown(data['zipCode']!, _zipCodeMeta));
    } else if (isInserting) {
      context.missing(_zipCodeMeta);
    }
    if (data.containsKey('lat')) {
      context.handle(
          _latMeta, lat.isAcceptableOrUnknown(data['lat']!, _latMeta));
    } else if (isInserting) {
      context.missing(_latMeta);
    }
    if (data.containsKey('long')) {
      context.handle(
          _longMeta, long.isAcceptableOrUnknown(data['long']!, _longMeta));
    } else if (isInserting) {
      context.missing(_longMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  List<Set<GeneratedColumn>> get uniqueKeys => [
        {userId},
      ];
  @override
  AddressTable map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AddressTable(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}user_id'])!,
      street: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}street'])!,
      suite: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}suite'])!,
      city: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}city'])!,
      zipCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}zipCode'])!,
      lat: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}lat'])!,
      long: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}long'])!,
    );
  }

  @override
  Address createAlias(String alias) {
    return Address(attachedDatabase, alias);
  }

  @override
  List<String> get customConstraints =>
      const ['FOREIGN KEY(user_id)REFERENCES user(id)', 'UNIQUE(user_id)'];
  @override
  bool get dontWriteConstraints => true;
}

class AddressTable extends DataClass implements Insertable<AddressTable> {
  final int id;
  final int userId;
  final String street;
  final String suite;
  final String city;
  final String zipCode;
  final double lat;
  final double long;
  const AddressTable(
      {required this.id,
      required this.userId,
      required this.street,
      required this.suite,
      required this.city,
      required this.zipCode,
      required this.lat,
      required this.long});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['user_id'] = Variable<int>(userId);
    map['street'] = Variable<String>(street);
    map['suite'] = Variable<String>(suite);
    map['city'] = Variable<String>(city);
    map['zipCode'] = Variable<String>(zipCode);
    map['lat'] = Variable<double>(lat);
    map['long'] = Variable<double>(long);
    return map;
  }

  AddressCompanion toCompanion(bool nullToAbsent) {
    return AddressCompanion(
      id: Value(id),
      userId: Value(userId),
      street: Value(street),
      suite: Value(suite),
      city: Value(city),
      zipCode: Value(zipCode),
      lat: Value(lat),
      long: Value(long),
    );
  }

  factory AddressTable.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AddressTable(
      id: serializer.fromJson<int>(json['id']),
      userId: serializer.fromJson<int>(json['user_id']),
      street: serializer.fromJson<String>(json['street']),
      suite: serializer.fromJson<String>(json['suite']),
      city: serializer.fromJson<String>(json['city']),
      zipCode: serializer.fromJson<String>(json['zipCode']),
      lat: serializer.fromJson<double>(json['lat']),
      long: serializer.fromJson<double>(json['long']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'user_id': serializer.toJson<int>(userId),
      'street': serializer.toJson<String>(street),
      'suite': serializer.toJson<String>(suite),
      'city': serializer.toJson<String>(city),
      'zipCode': serializer.toJson<String>(zipCode),
      'lat': serializer.toJson<double>(lat),
      'long': serializer.toJson<double>(long),
    };
  }

  AddressTable copyWith(
          {int? id,
          int? userId,
          String? street,
          String? suite,
          String? city,
          String? zipCode,
          double? lat,
          double? long}) =>
      AddressTable(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        street: street ?? this.street,
        suite: suite ?? this.suite,
        city: city ?? this.city,
        zipCode: zipCode ?? this.zipCode,
        lat: lat ?? this.lat,
        long: long ?? this.long,
      );
  AddressTable copyWithCompanion(AddressCompanion data) {
    return AddressTable(
      id: data.id.present ? data.id.value : this.id,
      userId: data.userId.present ? data.userId.value : this.userId,
      street: data.street.present ? data.street.value : this.street,
      suite: data.suite.present ? data.suite.value : this.suite,
      city: data.city.present ? data.city.value : this.city,
      zipCode: data.zipCode.present ? data.zipCode.value : this.zipCode,
      lat: data.lat.present ? data.lat.value : this.lat,
      long: data.long.present ? data.long.value : this.long,
    );
  }

  @override
  String toString() {
    return (StringBuffer('AddressTable(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('street: $street, ')
          ..write('suite: $suite, ')
          ..write('city: $city, ')
          ..write('zipCode: $zipCode, ')
          ..write('lat: $lat, ')
          ..write('long: $long')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, userId, street, suite, city, zipCode, lat, long);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AddressTable &&
          other.id == this.id &&
          other.userId == this.userId &&
          other.street == this.street &&
          other.suite == this.suite &&
          other.city == this.city &&
          other.zipCode == this.zipCode &&
          other.lat == this.lat &&
          other.long == this.long);
}

class AddressCompanion extends UpdateCompanion<AddressTable> {
  final Value<int> id;
  final Value<int> userId;
  final Value<String> street;
  final Value<String> suite;
  final Value<String> city;
  final Value<String> zipCode;
  final Value<double> lat;
  final Value<double> long;
  const AddressCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.street = const Value.absent(),
    this.suite = const Value.absent(),
    this.city = const Value.absent(),
    this.zipCode = const Value.absent(),
    this.lat = const Value.absent(),
    this.long = const Value.absent(),
  });
  AddressCompanion.insert({
    this.id = const Value.absent(),
    required int userId,
    required String street,
    required String suite,
    required String city,
    required String zipCode,
    required double lat,
    required double long,
  })  : userId = Value(userId),
        street = Value(street),
        suite = Value(suite),
        city = Value(city),
        zipCode = Value(zipCode),
        lat = Value(lat),
        long = Value(long);
  static Insertable<AddressTable> custom({
    Expression<int>? id,
    Expression<int>? userId,
    Expression<String>? street,
    Expression<String>? suite,
    Expression<String>? city,
    Expression<String>? zipCode,
    Expression<double>? lat,
    Expression<double>? long,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (street != null) 'street': street,
      if (suite != null) 'suite': suite,
      if (city != null) 'city': city,
      if (zipCode != null) 'zipCode': zipCode,
      if (lat != null) 'lat': lat,
      if (long != null) 'long': long,
    });
  }

  AddressCompanion copyWith(
      {Value<int>? id,
      Value<int>? userId,
      Value<String>? street,
      Value<String>? suite,
      Value<String>? city,
      Value<String>? zipCode,
      Value<double>? lat,
      Value<double>? long}) {
    return AddressCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      street: street ?? this.street,
      suite: suite ?? this.suite,
      city: city ?? this.city,
      zipCode: zipCode ?? this.zipCode,
      lat: lat ?? this.lat,
      long: long ?? this.long,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<int>(userId.value);
    }
    if (street.present) {
      map['street'] = Variable<String>(street.value);
    }
    if (suite.present) {
      map['suite'] = Variable<String>(suite.value);
    }
    if (city.present) {
      map['city'] = Variable<String>(city.value);
    }
    if (zipCode.present) {
      map['zipCode'] = Variable<String>(zipCode.value);
    }
    if (lat.present) {
      map['lat'] = Variable<double>(lat.value);
    }
    if (long.present) {
      map['long'] = Variable<double>(long.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AddressCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('street: $street, ')
          ..write('suite: $suite, ')
          ..write('city: $city, ')
          ..write('zipCode: $zipCode, ')
          ..write('lat: $lat, ')
          ..write('long: $long')
          ..write(')'))
        .toString();
  }
}

class Company extends Table with TableInfo<Company, CompanyTable> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Company(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL PRIMARY KEY');
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  late final GeneratedColumn<int> userId = GeneratedColumn<int>(
      'user_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _catchPhraseMeta =
      const VerificationMeta('catchPhrase');
  late final GeneratedColumn<String> catchPhrase = GeneratedColumn<String>(
      'catchPhrase', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _bsMeta = const VerificationMeta('bs');
  late final GeneratedColumn<String> bs = GeneratedColumn<String>(
      'bs', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  @override
  List<GeneratedColumn> get $columns => [id, userId, name, catchPhrase, bs];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'company';
  @override
  VerificationContext validateIntegrity(Insertable<CompanyTable> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('catchPhrase')) {
      context.handle(
          _catchPhraseMeta,
          catchPhrase.isAcceptableOrUnknown(
              data['catchPhrase']!, _catchPhraseMeta));
    } else if (isInserting) {
      context.missing(_catchPhraseMeta);
    }
    if (data.containsKey('bs')) {
      context.handle(_bsMeta, bs.isAcceptableOrUnknown(data['bs']!, _bsMeta));
    } else if (isInserting) {
      context.missing(_bsMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  List<Set<GeneratedColumn>> get uniqueKeys => [
        {userId},
      ];
  @override
  CompanyTable map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CompanyTable(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}user_id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      catchPhrase: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}catchPhrase'])!,
      bs: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}bs'])!,
    );
  }

  @override
  Company createAlias(String alias) {
    return Company(attachedDatabase, alias);
  }

  @override
  List<String> get customConstraints =>
      const ['FOREIGN KEY(user_id)REFERENCES user(id)', 'UNIQUE(user_id)'];
  @override
  bool get dontWriteConstraints => true;
}

class CompanyTable extends DataClass implements Insertable<CompanyTable> {
  final int id;
  final int userId;
  final String name;
  final String catchPhrase;
  final String bs;
  const CompanyTable(
      {required this.id,
      required this.userId,
      required this.name,
      required this.catchPhrase,
      required this.bs});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['user_id'] = Variable<int>(userId);
    map['name'] = Variable<String>(name);
    map['catchPhrase'] = Variable<String>(catchPhrase);
    map['bs'] = Variable<String>(bs);
    return map;
  }

  CompanyCompanion toCompanion(bool nullToAbsent) {
    return CompanyCompanion(
      id: Value(id),
      userId: Value(userId),
      name: Value(name),
      catchPhrase: Value(catchPhrase),
      bs: Value(bs),
    );
  }

  factory CompanyTable.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CompanyTable(
      id: serializer.fromJson<int>(json['id']),
      userId: serializer.fromJson<int>(json['user_id']),
      name: serializer.fromJson<String>(json['name']),
      catchPhrase: serializer.fromJson<String>(json['catchPhrase']),
      bs: serializer.fromJson<String>(json['bs']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'user_id': serializer.toJson<int>(userId),
      'name': serializer.toJson<String>(name),
      'catchPhrase': serializer.toJson<String>(catchPhrase),
      'bs': serializer.toJson<String>(bs),
    };
  }

  CompanyTable copyWith(
          {int? id,
          int? userId,
          String? name,
          String? catchPhrase,
          String? bs}) =>
      CompanyTable(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        name: name ?? this.name,
        catchPhrase: catchPhrase ?? this.catchPhrase,
        bs: bs ?? this.bs,
      );
  CompanyTable copyWithCompanion(CompanyCompanion data) {
    return CompanyTable(
      id: data.id.present ? data.id.value : this.id,
      userId: data.userId.present ? data.userId.value : this.userId,
      name: data.name.present ? data.name.value : this.name,
      catchPhrase:
          data.catchPhrase.present ? data.catchPhrase.value : this.catchPhrase,
      bs: data.bs.present ? data.bs.value : this.bs,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CompanyTable(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('name: $name, ')
          ..write('catchPhrase: $catchPhrase, ')
          ..write('bs: $bs')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, userId, name, catchPhrase, bs);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CompanyTable &&
          other.id == this.id &&
          other.userId == this.userId &&
          other.name == this.name &&
          other.catchPhrase == this.catchPhrase &&
          other.bs == this.bs);
}

class CompanyCompanion extends UpdateCompanion<CompanyTable> {
  final Value<int> id;
  final Value<int> userId;
  final Value<String> name;
  final Value<String> catchPhrase;
  final Value<String> bs;
  const CompanyCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.name = const Value.absent(),
    this.catchPhrase = const Value.absent(),
    this.bs = const Value.absent(),
  });
  CompanyCompanion.insert({
    this.id = const Value.absent(),
    required int userId,
    required String name,
    required String catchPhrase,
    required String bs,
  })  : userId = Value(userId),
        name = Value(name),
        catchPhrase = Value(catchPhrase),
        bs = Value(bs);
  static Insertable<CompanyTable> custom({
    Expression<int>? id,
    Expression<int>? userId,
    Expression<String>? name,
    Expression<String>? catchPhrase,
    Expression<String>? bs,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (name != null) 'name': name,
      if (catchPhrase != null) 'catchPhrase': catchPhrase,
      if (bs != null) 'bs': bs,
    });
  }

  CompanyCompanion copyWith(
      {Value<int>? id,
      Value<int>? userId,
      Value<String>? name,
      Value<String>? catchPhrase,
      Value<String>? bs}) {
    return CompanyCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      name: name ?? this.name,
      catchPhrase: catchPhrase ?? this.catchPhrase,
      bs: bs ?? this.bs,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<int>(userId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (catchPhrase.present) {
      map['catchPhrase'] = Variable<String>(catchPhrase.value);
    }
    if (bs.present) {
      map['bs'] = Variable<String>(bs.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CompanyCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('name: $name, ')
          ..write('catchPhrase: $catchPhrase, ')
          ..write('bs: $bs')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final User user = User(this);
  late final Address address = Address(this);
  late final Company company = Company(this);
  late final UserDao userDao = UserDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [user, address, company];
}

typedef $UserCreateCompanionBuilder = UserCompanion Function({
  Value<int> id,
  required String name,
  required String username,
  required String email,
  required String phone,
  required String website,
});
typedef $UserUpdateCompanionBuilder = UserCompanion Function({
  Value<int> id,
  Value<String> name,
  Value<String> username,
  Value<String> email,
  Value<String> phone,
  Value<String> website,
});

class $UserFilterComposer extends Composer<_$AppDatabase, User> {
  $UserFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get username => $composableBuilder(
      column: $table.username, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get phone => $composableBuilder(
      column: $table.phone, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get website => $composableBuilder(
      column: $table.website, builder: (column) => ColumnFilters(column));
}

class $UserOrderingComposer extends Composer<_$AppDatabase, User> {
  $UserOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get username => $composableBuilder(
      column: $table.username, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get phone => $composableBuilder(
      column: $table.phone, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get website => $composableBuilder(
      column: $table.website, builder: (column) => ColumnOrderings(column));
}

class $UserAnnotationComposer extends Composer<_$AppDatabase, User> {
  $UserAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get username =>
      $composableBuilder(column: $table.username, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<String> get phone =>
      $composableBuilder(column: $table.phone, builder: (column) => column);

  GeneratedColumn<String> get website =>
      $composableBuilder(column: $table.website, builder: (column) => column);
}

class $UserTableManager extends RootTableManager<
    _$AppDatabase,
    User,
    UserTable,
    $UserFilterComposer,
    $UserOrderingComposer,
    $UserAnnotationComposer,
    $UserCreateCompanionBuilder,
    $UserUpdateCompanionBuilder,
    (UserTable, BaseReferences<_$AppDatabase, User, UserTable>),
    UserTable,
    PrefetchHooks Function()> {
  $UserTableManager(_$AppDatabase db, User table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $UserFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $UserOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $UserAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> username = const Value.absent(),
            Value<String> email = const Value.absent(),
            Value<String> phone = const Value.absent(),
            Value<String> website = const Value.absent(),
          }) =>
              UserCompanion(
            id: id,
            name: name,
            username: username,
            email: email,
            phone: phone,
            website: website,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
            required String username,
            required String email,
            required String phone,
            required String website,
          }) =>
              UserCompanion.insert(
            id: id,
            name: name,
            username: username,
            email: email,
            phone: phone,
            website: website,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $UserProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    User,
    UserTable,
    $UserFilterComposer,
    $UserOrderingComposer,
    $UserAnnotationComposer,
    $UserCreateCompanionBuilder,
    $UserUpdateCompanionBuilder,
    (UserTable, BaseReferences<_$AppDatabase, User, UserTable>),
    UserTable,
    PrefetchHooks Function()>;
typedef $AddressCreateCompanionBuilder = AddressCompanion Function({
  Value<int> id,
  required int userId,
  required String street,
  required String suite,
  required String city,
  required String zipCode,
  required double lat,
  required double long,
});
typedef $AddressUpdateCompanionBuilder = AddressCompanion Function({
  Value<int> id,
  Value<int> userId,
  Value<String> street,
  Value<String> suite,
  Value<String> city,
  Value<String> zipCode,
  Value<double> lat,
  Value<double> long,
});

class $AddressFilterComposer extends Composer<_$AppDatabase, Address> {
  $AddressFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get userId => $composableBuilder(
      column: $table.userId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get street => $composableBuilder(
      column: $table.street, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get suite => $composableBuilder(
      column: $table.suite, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get city => $composableBuilder(
      column: $table.city, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get zipCode => $composableBuilder(
      column: $table.zipCode, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get lat => $composableBuilder(
      column: $table.lat, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get long => $composableBuilder(
      column: $table.long, builder: (column) => ColumnFilters(column));
}

class $AddressOrderingComposer extends Composer<_$AppDatabase, Address> {
  $AddressOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get userId => $composableBuilder(
      column: $table.userId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get street => $composableBuilder(
      column: $table.street, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get suite => $composableBuilder(
      column: $table.suite, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get city => $composableBuilder(
      column: $table.city, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get zipCode => $composableBuilder(
      column: $table.zipCode, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get lat => $composableBuilder(
      column: $table.lat, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get long => $composableBuilder(
      column: $table.long, builder: (column) => ColumnOrderings(column));
}

class $AddressAnnotationComposer extends Composer<_$AppDatabase, Address> {
  $AddressAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  GeneratedColumn<String> get street =>
      $composableBuilder(column: $table.street, builder: (column) => column);

  GeneratedColumn<String> get suite =>
      $composableBuilder(column: $table.suite, builder: (column) => column);

  GeneratedColumn<String> get city =>
      $composableBuilder(column: $table.city, builder: (column) => column);

  GeneratedColumn<String> get zipCode =>
      $composableBuilder(column: $table.zipCode, builder: (column) => column);

  GeneratedColumn<double> get lat =>
      $composableBuilder(column: $table.lat, builder: (column) => column);

  GeneratedColumn<double> get long =>
      $composableBuilder(column: $table.long, builder: (column) => column);
}

class $AddressTableManager extends RootTableManager<
    _$AppDatabase,
    Address,
    AddressTable,
    $AddressFilterComposer,
    $AddressOrderingComposer,
    $AddressAnnotationComposer,
    $AddressCreateCompanionBuilder,
    $AddressUpdateCompanionBuilder,
    (AddressTable, BaseReferences<_$AppDatabase, Address, AddressTable>),
    AddressTable,
    PrefetchHooks Function()> {
  $AddressTableManager(_$AppDatabase db, Address table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $AddressFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $AddressOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $AddressAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> userId = const Value.absent(),
            Value<String> street = const Value.absent(),
            Value<String> suite = const Value.absent(),
            Value<String> city = const Value.absent(),
            Value<String> zipCode = const Value.absent(),
            Value<double> lat = const Value.absent(),
            Value<double> long = const Value.absent(),
          }) =>
              AddressCompanion(
            id: id,
            userId: userId,
            street: street,
            suite: suite,
            city: city,
            zipCode: zipCode,
            lat: lat,
            long: long,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int userId,
            required String street,
            required String suite,
            required String city,
            required String zipCode,
            required double lat,
            required double long,
          }) =>
              AddressCompanion.insert(
            id: id,
            userId: userId,
            street: street,
            suite: suite,
            city: city,
            zipCode: zipCode,
            lat: lat,
            long: long,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $AddressProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    Address,
    AddressTable,
    $AddressFilterComposer,
    $AddressOrderingComposer,
    $AddressAnnotationComposer,
    $AddressCreateCompanionBuilder,
    $AddressUpdateCompanionBuilder,
    (AddressTable, BaseReferences<_$AppDatabase, Address, AddressTable>),
    AddressTable,
    PrefetchHooks Function()>;
typedef $CompanyCreateCompanionBuilder = CompanyCompanion Function({
  Value<int> id,
  required int userId,
  required String name,
  required String catchPhrase,
  required String bs,
});
typedef $CompanyUpdateCompanionBuilder = CompanyCompanion Function({
  Value<int> id,
  Value<int> userId,
  Value<String> name,
  Value<String> catchPhrase,
  Value<String> bs,
});

class $CompanyFilterComposer extends Composer<_$AppDatabase, Company> {
  $CompanyFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get userId => $composableBuilder(
      column: $table.userId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get catchPhrase => $composableBuilder(
      column: $table.catchPhrase, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get bs => $composableBuilder(
      column: $table.bs, builder: (column) => ColumnFilters(column));
}

class $CompanyOrderingComposer extends Composer<_$AppDatabase, Company> {
  $CompanyOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get userId => $composableBuilder(
      column: $table.userId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get catchPhrase => $composableBuilder(
      column: $table.catchPhrase, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get bs => $composableBuilder(
      column: $table.bs, builder: (column) => ColumnOrderings(column));
}

class $CompanyAnnotationComposer extends Composer<_$AppDatabase, Company> {
  $CompanyAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get catchPhrase => $composableBuilder(
      column: $table.catchPhrase, builder: (column) => column);

  GeneratedColumn<String> get bs =>
      $composableBuilder(column: $table.bs, builder: (column) => column);
}

class $CompanyTableManager extends RootTableManager<
    _$AppDatabase,
    Company,
    CompanyTable,
    $CompanyFilterComposer,
    $CompanyOrderingComposer,
    $CompanyAnnotationComposer,
    $CompanyCreateCompanionBuilder,
    $CompanyUpdateCompanionBuilder,
    (CompanyTable, BaseReferences<_$AppDatabase, Company, CompanyTable>),
    CompanyTable,
    PrefetchHooks Function()> {
  $CompanyTableManager(_$AppDatabase db, Company table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $CompanyFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $CompanyOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $CompanyAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> userId = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> catchPhrase = const Value.absent(),
            Value<String> bs = const Value.absent(),
          }) =>
              CompanyCompanion(
            id: id,
            userId: userId,
            name: name,
            catchPhrase: catchPhrase,
            bs: bs,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int userId,
            required String name,
            required String catchPhrase,
            required String bs,
          }) =>
              CompanyCompanion.insert(
            id: id,
            userId: userId,
            name: name,
            catchPhrase: catchPhrase,
            bs: bs,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $CompanyProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    Company,
    CompanyTable,
    $CompanyFilterComposer,
    $CompanyOrderingComposer,
    $CompanyAnnotationComposer,
    $CompanyCreateCompanionBuilder,
    $CompanyUpdateCompanionBuilder,
    (CompanyTable, BaseReferences<_$AppDatabase, Company, CompanyTable>),
    CompanyTable,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $UserTableManager get user => $UserTableManager(_db, _db.user);
  $AddressTableManager get address => $AddressTableManager(_db, _db.address);
  $CompanyTableManager get company => $CompanyTableManager(_db, _db.company);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$appDatabaseHash() => r'd45cc0b6c7795466b6a12d864805fefa097f39cd';

/// See also [appDatabase].
@ProviderFor(appDatabase)
final appDatabaseProvider = AutoDisposeProvider<AppDatabase>.internal(
  appDatabase,
  name: r'appDatabaseProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$appDatabaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef AppDatabaseRef = AutoDisposeProviderRef<AppDatabase>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
