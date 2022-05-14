import 'dart:io';

void main() {
    while(true){
        try{
            var number = int.parse(stdin.readLineSync() ?? '0');
            print(number);
        }
       catch(e){
        print("Это не число");
       }
    }
}