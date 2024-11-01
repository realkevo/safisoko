class User {
  late String name;
  late String email;
  late String Role;
  late dynamic Password;
  late String JoinedDate;

  //this boolean evaluates whether user is admin
  late bool isRegistered;
  late bool isAdmin;

  void login() {
    //Check whether user exist in db
    if (!isRegistered) {
      //head on to registration widget
      print("USer not registered");
      return;
    } else {
      //login user
      if (Role == 'admin') {
        //activate Admin features
      } else {
        //if role == !admin head on to regular login
      }
    }
  }

  User(
      {this.isRegistered = false,
      this.isAdmin = false,
      required this.Role,
      required this.name,
      required this.email,
      required this.JoinedDate,
      required this.Password});
}
