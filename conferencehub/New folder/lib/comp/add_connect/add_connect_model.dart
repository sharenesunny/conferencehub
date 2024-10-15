import '/flutter_flow/flutter_flow_util.dart';
import 'add_connect_widget.dart' show AddConnectWidget;
import 'package:flutter/material.dart';

class AddConnectModel extends FlutterFlowModel<AddConnectWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
