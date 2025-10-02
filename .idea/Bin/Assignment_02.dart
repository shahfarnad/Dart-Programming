abstract class Animal{
  String _name;
  Animal(this._name);
  void makeSound();
  String getName(){
    return _name;
  }
}
class Lion extends Animal{
  int _maneSize=10;
  Lion(String name) : super(name);
  @override
  void makeSound(){
    print('${getName()} the lion says Rawwwrr!');
  }
  int get maneSize{
    return _maneSize;
  }
  set maneSize(int size){
    if (size < 0) {
      throw ArgumentError('Mane size cannot be negative. Received: $size');
    }
    _maneSize=size;
  }
}
class Elephant extends Animal{
  int _trunkLength=20;
  Elephant(String name) : super(name);
  @override
  void makeSound(){
    print('${getName()} the Elephant sounds called Trumpet!');
  }
  int get trunkLength{
    return _trunkLength;
  }
  set trunkLength(int size){
    if (size < 0) {
      throw ArgumentError('Trunk Length size cannot be negative. Received: $size');
    }
    _trunkLength=size;
  }
}
class Parrot extends Animal{
  int _vocabularySize=7;
  Parrot(String name) : super(name);
  @override
  void makeSound(){
    print('${getName()} the Parrot sounds name Talk');
  }
  int get vocabularySize{
    return _vocabularySize;
  }
  set vocabularySize(int size){
    if (size < 0) {
      throw ArgumentError('Vocabulary size cannot be negative. Received: $size');
    }
    _vocabularySize=size;
  }
}
main(){
  List<Animal> zoo = [
    Lion('Simba'),
    Elephant('Jumbo'),
    Parrot('Polly')
  ];

  print('The zoo is waking up:');

  for (var animal in zoo) {
    animal.makeSound();
  }

  print('---');
}