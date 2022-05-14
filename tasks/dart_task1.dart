import 'dart:math';

void main() {
  List<int> array = [];
  for(int i = 0; i<10;i++){
    array.add(Random().nextInt(1000));
  }
  
  for(int a in array){
    if(a%2==0){
      print(a);
    }
  }
  
}