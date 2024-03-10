void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String task2Result = await task2();
  task3(task2Result);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future task2() async {
  Duration threeSeconds = Duration(seconds: 3);
  String? result;
  await Future.delayed(threeSeconds, () {
    result = 'Task 2 Complete';
    print('Task 2 complete');
  });
  return result;
}

void task3(String task2Result) {
  String result = 'task 3 data';
  print('Task 3 complete with $task2Result');
}

//TODO: here is is an example and syntax of try and catch in dart.

// TODO: Syntax
/*
try{
  // do something that might fail
}
catch (e){
  // catch an exception that may occur
} */

/*
String mystring = 'abc';

try {
  // add string to 5
double.parse(mystring) + 5;
}

catch (e) {
  print(e);
} */
