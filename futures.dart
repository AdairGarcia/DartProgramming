// When working with asyncronus tasks in Dart
// for example Future, async, await, streams

// Future is a class that represents a potential value or error that will be available at some time in the future.
// async is a keyword that is used to define an asynchronous function.
// await is a keyword that is used to pause the execution of a function until an asynchronous task is completed.

// Future
// do the task and return the result in the future
Future<double> getPrice() async {
  await Future.delayed(Duration(seconds: 3));
  return 100.0;
}


// Another function related with the first one
// to consume the result of the first function
void printPrice() async {
  double price = await getPrice();
  print('Price: $price');
}


// Try to always follow that schema
// 1. Create a function that returns a Future
// 2. Create another function that consumes the result of the first function 

// main function
void main() async {
  printPrice();
}