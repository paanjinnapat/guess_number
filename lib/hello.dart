import 'dart:math';
import 'dart:io';
import 'game.dart';


void main() {
  var game = Game();

  int result = 0;
  do {
    stdout.write('Please guess the number between 1 and 100 : ');
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);

    if (guess == null) {
      print('Please enter number only');
      continue;
    }
    result = game.doGuess(guess);
    while(result == 1){
      print('Do you want to play again? Y or N ');
      var ans = stdin.readLineSync();
      if(ans == 'Y' || ans == 'y'){
        game = Game();
        result = 0;
      }else if(ans =='N' || ans == 'n'){
        break;
      }else {
        print('Please only enter Y or N');

      }
    }



    }while (result != 1);
}