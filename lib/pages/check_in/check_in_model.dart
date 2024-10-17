import '/components/menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'check_in_widget.dart' show CheckInWidget;
import 'package:flutter/material.dart';

class CheckInModel extends FlutterFlowModel<CheckInWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for menu component.
  late MenuModel menuModel;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    menuModel.dispose();
  }
}
