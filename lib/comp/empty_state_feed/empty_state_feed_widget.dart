import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import 'package:flutter/material.dart';
import 'empty_state_feed_model.dart';
export 'empty_state_feed_model.dart';

class EmptyStateFeedWidget extends StatefulWidget {
  const EmptyStateFeedWidget({super.key});

  @override
  State<EmptyStateFeedWidget> createState() => _EmptyStateFeedWidgetState();
}

class _EmptyStateFeedWidgetState extends State<EmptyStateFeedWidget> {
  late EmptyStateFeedModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyStateFeedModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: const AlignmentDirectional(0.0, 1.0),
      children: [
        const FlutterFlowVideoPlayer(
          path: 'assets/videos/Comp_2_2.mp4',
          videoType: VideoType.asset,
          autoPlay: true,
          looping: true,
          showControls: false,
          allowFullScreen: false,
          allowPlaybackSpeedMenu: false,
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
          child: Text(
            'Nothing happening here as yet',
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Inter',
                  fontSize: 18.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
      ],
    );
  }
}
