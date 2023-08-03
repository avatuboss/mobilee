import 'package:rive/rive.dart';

class RiveUtils {
  static StateMachineController getRiveController(Artboard artboard,
      // ignore: non_constant_identifier_names, avoid_types_as_parameter_names
      {StateMachine = "State Machine 1"}) {
    StateMachineController? controller =
        StateMachineController.fromArtboard(artboard, StateMachine);
    artboard.addController(controller!);
    return controller;
  }
}
