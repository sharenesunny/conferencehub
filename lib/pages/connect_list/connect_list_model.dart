import '/components/menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'connect_list_widget.dart' show ConnectListWidget;
import 'package:flutter/material.dart';

class ConnectListModel extends FlutterFlowModel<ConnectListWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for menu component.
  late MenuModel menuModel;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
  }

  @override
  void dispose() {
    menuModel.dispose();
  }
}
