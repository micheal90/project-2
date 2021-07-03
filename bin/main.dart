import 'dart:io';

import 'manager.dart';

void main(List<String> args) {
  var mng = Managers();

  lable:
  while (true) {
    print('1. add');
    print('2. remove');
    print('3. data');
    print('4. end');
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
        break lable;
      default:
    }
  }
}
