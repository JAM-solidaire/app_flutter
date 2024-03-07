import '/flutter_flow/flutter_flow_util.dart';
import 'choice_donate_widget.dart' show ChoiceDonateWidget;
import 'package:flutter/material.dart';

class ChoiceDonateModel extends FlutterFlowModel<ChoiceDonateWidget> {
  ///  Local state fields for this component.

  double? value;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
