
class EmployeeData {
  int? employeeId;
  String? firstName;
  String? lastName;
  String? email;
  String? hireDate;

  EmployeeData({
    this.employeeId,
    this.firstName,
    this.lastName,
    this.email,
    this.hireDate,
  });

  EmployeeData.fromJson(Map<String, dynamic> json) {
    employeeId = json['employeeId'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    email = json['email'];
    hireDate = json['hireDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['employeeId'] = employeeId;
    data['firstName'] = firstName;
    data['lastName'] = lastName;
    data['email'] = email;
    data['hireDate'] = hireDate;
    return data;
  }
}
