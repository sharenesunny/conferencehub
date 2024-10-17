// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future checkHighestVote(
  List<DocumentReference>? userOp1,
  List<DocumentReference>? userOp2,
  List<DocumentReference>? userOp3,
  List<DocumentReference>? userOp4,
) async {
  // Add your function code here!
  // Get the count of users in each option list
  int op1Count = userOp1?.length ?? 0;
  int op2Count = userOp2?.length ?? 0;
  int op3Count = userOp3?.length ?? 0;
  int op4Count = userOp4?.length ?? 0;

  // Compare the vote counts and return the highest voted option
  if (op1Count >= op2Count && op1Count >= op3Count && op1Count >= op4Count) {
    return 1;
  } else if (op2Count >= op1Count &&
      op2Count >= op3Count &&
      op2Count >= op4Count) {
    return 2;
  } else if (op3Count >= op1Count &&
      op3Count >= op2Count &&
      op3Count >= op4Count) {
    return 3;
  } else {
    return 4;
  }
}
