import 'package:jogo_da_velha/utils/tuple.dart';

final List<List<Tuple>> winningCombinations3x3 = [
  // Linhas
  [Tuple(0, 0), Tuple(0, 1), Tuple(0, 2)],
  [Tuple(1, 0), Tuple(1, 1), Tuple(1, 2)],
  [Tuple(2, 0), Tuple(2, 1), Tuple(2, 2)],

  // Colunas
  [Tuple(0, 0), Tuple(1, 0), Tuple(2, 0)],
  [Tuple(0, 1), Tuple(1, 1), Tuple(2, 1)],
  [Tuple(0, 2), Tuple(1, 2), Tuple(2, 2)],

  // Diagonais
  [Tuple(0, 0), Tuple(1, 1), Tuple(2, 2)],
  [Tuple(0, 2), Tuple(1, 1), Tuple(2, 0)],
];

bool checkWinner3x3(List<Tuple> playerChoices) {
  for (var combination in winningCombinations3x3) {
    bool won = true;
    for (var position in combination) {
      if (!playerChoices.any((choice) => choice.x == position.x && choice.y == position.y)) {
        won = false;
        break;
      }
    }
    if (won) {
      return true;
    }
  }
  return false;
}

