import 'person.dart';

class Employee extends Person {
  String department;
  String title;
  Employee({
    required id,
    required name,
    required age,
    required address,
    required this.department,
    required this.title,
  }) : super(address: address, age: age, id: id, name: name);
  @override
  void personData() {
    print('Department: $department , Title: $title');
    super.personData();
  }
}

class Employees {
  List<Employee> emps = [];

  void addEmployee({id, name, age, address, department, title}) {
    emps.add(Employee(
        id: id,
        name: name,
        age: age,
        address: address,
        department: department,
        title: title));
  }

  void removeEmployee({id}) {
    emps.removeWhere((emp) => emp.id == id);
  }

  void employeeData() {
    emps.forEach((emp) {
      emp.personData();
    });
  }
}
