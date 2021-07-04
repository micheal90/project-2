import 'dart:io';

import 'employee.dart';
import 'manager.dart';

void main(List<String> args) {
  var mng = Managers();
  var emp = Employees();

  lable:
  while (true) {
    print('1. add manager');
    print('2. remove manager');
    print('3. data managers');
    print('4. add employee');
    print('5. remove employee');
    print('6. data employees');
    print('7. end');

    var op = stdin.readLineSync()!;

    switch (op) {
      // 'Omar Saad'

      case '1':
        print('Enter Manager Data as : id name age address phone');
        var data = stdin.readLineSync()!.split(' ');
        mng.addManager(
          id: data[0],
          name: data[1],
          age: int.parse(data[2]),
          address: data[3],
          phone: data[4],
        );
        break;
      case '2':
        print('Enter Manager id');
        var id = stdin.readLineSync()!;
        mng.removeManager(id);
        break;
      case '3':
        print('Managers Data');
        mng.managerData();
        break;
      case '4':
        print('Enter employee data as: id name age address department title');
        var data = stdin.readLineSync()!.split(' ');
        emp.addEmployee(
            id: data[0],
            name: data[1],
            age: int.parse(data[2]),
            address: data[3],
            department: data[4],
            title: data[5]);
        break;
      case '5':
        print('Enter Employee id');
        var id = stdin.readLineSync()!;
        emp.removeEmployee(id: id);
        break;
      case '6':
        print('Employee Data');
        emp.employeeData();
        break;
      case '7':
        break lable;
      default:
    }
  }
}
