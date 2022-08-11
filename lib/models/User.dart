class User {
 const User(this.name, this.email, this.mobileNo, this.address, this.password);
  final String name;
  final String email;
  final String mobileNo;
  final String address;
  final String password;
  @override
  String toString() {
    return "User(name: $name , email: $email , mobileNo: $mobileNo, address: $address, password: $password )";
  }
}
