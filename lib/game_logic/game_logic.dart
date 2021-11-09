import 'package:rock_paper_scissors_game/helper/choice_properties.dart';
import 'package:rock_paper_scissors_game/helper/game_status.dart';

class GameLogic {
  GameState getResult(ChoiceName user, ChoiceName computer) {
    String userChoice = GetChoiceProperties().getChoiceString(user);
    String computerChoice = GetChoiceProperties().getChoiceString(computer);

    if (userChoice == computerChoice) {
      return GameState.draw(computer);
    } else {
      switch (userChoice + computerChoice) {
        case "scissorspaper":
        case "paperrock":
        case "rocklizard":
        case "lizardspock":
        case "spockscissors":
        case "scissorslizard":
        case "paperspock":
        case "rockscissors":
        case "lizardpaper":
        case "spockrock":
          return GameState.won(computer);
        default:
          return GameState.loosed(computer);
      }
    }
  }
}
