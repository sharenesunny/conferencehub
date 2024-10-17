import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import 'package:flutter/material.dart';
import 'loading_offwhite_model.dart';
export 'loading_offwhite_model.dart';

class LoadingOffwhiteWidget extends StatefulWidget {
  const LoadingOffwhiteWidget({super.key});

  @override
  State<LoadingOffwhiteWidget> createState() => _LoadingOffwhiteWidgetState();
}

class _LoadingOffwhiteWidgetState extends State<LoadingOffwhiteWidget> {
  late LoadingOffwhiteModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoadingOffwhiteModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const FlutterFlowVideoPlayer(
      path: 'assets/videos/Comp_2_2.mp4',
      videoType: VideoType.asset,
      autoPlay: true,
      looping: true,
      showControls: false,
      allowFullScreen: false,
      allowPlaybackSpeedMenu: false,
    );
  }
}
