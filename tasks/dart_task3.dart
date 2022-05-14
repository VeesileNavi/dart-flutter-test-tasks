import 'dart:io';

List<int> array = [];
void main() {
    while(true){
       dynamic input = stdin.readLineSync();
       if(input!="exit" ){
        try{
            int number = int.parse(input??'0');
            array.add(number);
            print(array.length);
        }
        catch(e){
            print("Это не число");
        }
           
       }
       else{return;}
      
    }
}