// A stream is a sequence of asynchronous events. It is a way to listen to a
// sequence of events and respond to them.
// Works like a pipe, where you can put data in one end and take it out at the
// other end.

// For example Youtube video player

Stream<int> counterStream() async* {
  for (int i = 0; i < 10; i++) {
    await Future.delayed(Duration(seconds: 5));
    yield i; // yield is like return but it doesn't stop the function
  }
}

void printCount() async {
  await for (int i in counterStream()) {
    print(i);
  }
}

void main() {
  printCount();
}

