class User{

  int _id;
  int _accessfaildcount;
  String _authenticationsource;
  String _concurrencystamp;
  String _emailaddress;
  String _emailconfirmationcode;
  bool _isactive;
  bool _isdeleted;
  bool _isemailconfirmed;
  bool _islockoutenabled;
  bool _isphonenumberconfirmed;
  bool _istwofactorenabled;
  DateTime _lockoutenddatetutc; 
  String _name;
  String _normalizedemailaddress;
  String _normalizedusername;
  String _password;
  String _passwordresetcode;
  String _phonenumber;
  String _securitystamp;
  String _surname;
  int _tenantid;
  String _username;

  User(
  // this._accessfaildcount,
  // this._authenticationsource,
  // this._concurrencystamp,
  // this._emailaddress,
  // this._emailconfirmationcode,
  // this._isactive,
  // this._isdeleted,
  // this._islockoutenabled,
  // this._isemailconfirmed,
  // this._lockoutenddatetutc,
  // this._name,
  // this._normalizedemailaddress,
  // this._normalizedusername,
  this._password,
  // this._passwordresetcode,
  // this._phonenumber,
  // this._isphonenumberconfirmed,
  // this._istwofactorenabled,
  // this._securitystamp,
  // this._surname,
  this._tenantid,
  this._username);

  User.fromMap(dynamic user){
  this._id = user['id'];
  this._accessfaildcount = user['accessfaildcount'];
  this._authenticationsource = user['authenticationsource'];
  this._concurrencystamp = user['concurrencystamp'];
  this._emailaddress = user['emailaddress'];
  this._emailconfirmationcode = user['emailconfirmationcode'];
  this._isactive = user['isactive'];
  this._isdeleted = user['isdeleted'];
  this._islockoutenabled = user['islockoutenabled'];
  this._isemailconfirmed = user['isemailconfirmed'];
  this._lockoutenddatetutc = user['lockoutenddatetutc'];
  this._name = user['name'];
  this._normalizedemailaddress = user['normalizedemailaddress'];
  this._normalizedusername = user['normalizedusername'];
  this._password = user['password'];
  this._passwordresetcode = user['passwordresetcode'];
  this._phonenumber = user['phonenumber'];
  this._isphonenumberconfirmed = user['isphonenumberconfirmed'];
  this._istwofactorenabled = user['istwofactorenabled'];
  this._securitystamp = user['securitystamp'];
  this._surname = user['surname'];
  this._tenantid = user['tenantid'];
  this._username = user['username'];
  }

  int get id => _id;
  int get accessfaildcount => _accessfaildcount;
  String get authenticationsource => _authenticationsource;
  String get concurrencystamp => _concurrencystamp;
  String get emailaddress => _emailaddress;
  String get emailconfirmationcode => _emailconfirmationcode;
  bool get isactive => _isactive;
  bool get isdeleted => _isdeleted;
  bool get isemailconfirmed => _isemailconfirmed;
  bool get islockoutenabled => _islockoutenabled;
  bool get isphonenumberconfirmed => _isphonenumberconfirmed;
  bool get istwofactorenabled => _istwofactorenabled;
  DateTime get lockoutenddatetutc => _lockoutenddatetutc; 
  String get name => _name;
  String get normalizedemailaddress => _normalizedemailaddress;
  String get normalizedusername => _normalizedusername;
  String get password => _password;
  String get passwordresetcode => _passwordresetcode;
  String get phonenumber => _phonenumber;
  String get securitystamp => _securitystamp;
  String get surname => _surname;
  int get tenantid => _tenantid;
  String get username => _username;

Map<String, dynamic> toMap(){
  var map = new Map<String,dynamic>();
  map['id'] = _id;
  map['accessfaildcount'] = _accessfaildcount;
  map['authenticationsource'] = _authenticationsource;
  map['concurrencystamp'] = _concurrencystamp;
  map['emailaddress'] = _emailaddress;
  map['emailconfirmationcode'] = _emailconfirmationcode;
  map['isactive'] = _isactive;
  map['isdeleted'] = _isdeleted;
  map['islockoutenabled'] = _islockoutenabled;
  map['isemailconfirmed'] = _isemailconfirmed;
  map['lockoutenddatetutc'] = _lockoutenddatetutc;
  map['name'] = _name;
  map['normalizedemailaddress'] = _normalizedemailaddress;
  map['normalizedusername'] = _normalizedusername;
  map['password'] = _password;
  map['passwordresetcode'] = _passwordresetcode;
  map['phonenumber'] = _phonenumber;
  map['isphonenumberconfirmed'] = _isphonenumberconfirmed;
  map['istwofactorenabled'] = _istwofactorenabled;
  map['securitystamp'] = _securitystamp;
  map['surname'] = _surname;
  map['tenantid'] = _tenantid;
  map['username'] = _username;

  return map;
  
  }
  
}