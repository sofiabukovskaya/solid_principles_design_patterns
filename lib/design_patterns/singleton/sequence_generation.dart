/// Exercise #1
/// 1. Create a Singleton implementation which will generate a sequence of numbers to the callers.
/// a. The idea here is that there is only a single number/sequence generator and all the numbers follow a perfect sequence.
/// b. So when we do a call to the generator like getNextNumber() we should get the next number in the sequence no matter how we obtained the generator.
/// 2. Make that implementation both with eager-instantiation and with lazy-instantiation.
/// a. Which one would you prefer to use and why?
library;

abstract class Singleton {
  Singleton._privateConstructor();
}

class SequenceGeneration extends Singleton {
  SequenceGeneration._privateConstructor() : super._privateConstructor();

  static final SequenceGeneration _instance =
      SequenceGeneration._privateConstructor();

  factory SequenceGeneration() {
    return _instance;
  }

  int _counter = 0;

  int getNextNumber() {
    _counter++;
    return _counter;
  }
}
