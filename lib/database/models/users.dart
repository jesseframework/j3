class User{

  String userName;
  String name;
  String surname;
  String emailAddress;
  bool isActive;
  String fullName;
  String lastLoginTime;
  String creationTime;
  //List<String> roleNames;
  int id;

  User(
      {this.userName,
      this.name,
      this.surname,
      this.emailAddress,
      this.isActive,
      this.fullName,
      this.lastLoginTime,
      this.creationTime,
      //this.roleNames,
      this.id});

  User.fromMap(Map<String, dynamic> user) {
    userName = user['userName'];
    name = user['name'];
    surname = user['surname'];
    emailAddress = user['emailAddress'];
    isActive = user['isActive'];
    fullName = user['fullName'];
    lastLoginTime = user['lastLoginTime'];
    creationTime = user['creationTime'];
    //roleNames = user['roleNames'].cast<String>();
    id = user['id'];
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userName'] = this.userName;
    data['name'] = this.name;
    data['surname'] = this.surname;
    data['emailAddress'] = this.emailAddress;
    data['isActive'] = this.isActive;
    data['fullName'] = this.fullName;
    data['lastLoginTime'] = this.lastLoginTime;
    data['creationTime'] = this.creationTime;
    //data['roleNames'] = this.roleNames;
    data['id'] = this.id;
    return data;
  }
  
}