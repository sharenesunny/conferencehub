import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'speaker_info_active_model.dart';
export 'speaker_info_active_model.dart';

class SpeakerInfoActiveWidget extends StatefulWidget {
  const SpeakerInfoActiveWidget({
    super.key,
    this.speakersInner,
  });

  final DocumentReference? speakersInner;

  @override
  State<SpeakerInfoActiveWidget> createState() =>
      _SpeakerInfoActiveWidgetState();
}

class _SpeakerInfoActiveWidgetState extends State<SpeakerInfoActiveWidget> {
  late SpeakerInfoActiveModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SpeakerInfoActiveModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            decoration: const BoxDecoration(),
            child: StreamBuilder<SpeakerRecord>(
              stream: SpeakerRecord.getDocument(widget.speakersInner!),
              builder: (context, snapshot) {
                // Customize what your widget looks like when it's loading.
                if (!snapshot.hasData) {
                  return Center(
                    child: SizedBox(
                      width: 30.0,
                      height: 30.0,
                      child: SpinKitThreeBounce(
                        color: FlutterFlowTheme.of(context).primary,
                        size: 30.0,
                      ),
                    ),
                  );
                }

                final columnSpeakerRecord = snapshot.data!;

                return SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.95,
                        height: 450.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).tertiary,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: CachedNetworkImageProvider(
                              columnSpeakerRecord.image,
                            ),
                          ),
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).primaryText,
                            width: 2.0,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.safePop();
                                      },
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        child: BackdropFilter(
                                          filter: ImageFilter.blur(
                                            sigmaX: 7.0,
                                            sigmaY: 2.0,
                                          ),
                                          child: AnimatedContainer(
                                            duration:
                                                const Duration(milliseconds: 200),
                                            curve: Curves.easeInOut,
                                            height: 40.0,
                                            decoration: BoxDecoration(
                                              color: const Color(0xA7E9E9E9),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                              border: Border.all(
                                                color: const Color(0xB3E9E9E9),
                                                width: 1.0,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(8.0, 0.0, 8.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Icon(
                                                    Icons.arrow_back_outlined,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    size: 24.0,
                                                  ),
                                                ].divide(const SizedBox(width: 4.0)),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: const BoxDecoration(),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.95,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).secondary,
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).primaryText,
                            width: 2.0,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                columnSpeakerRecord.name,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              Text(
                                columnSpeakerRecord.title,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.95,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).primaryText,
                            width: 2.0,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                columnSpeakerRecord.bio,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ].divide(const SizedBox(height: 20.0)),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.95,
                        decoration: const BoxDecoration(),
                        child: StreamBuilder<List<ScheduleRecord>>(
                          stream: queryScheduleRecord(
                            queryBuilder: (scheduleRecord) => scheduleRecord
                                .where(
                                  'presentors',
                                  arrayContains: columnSpeakerRecord.name,
                                )
                                .orderBy('time'),
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 30.0,
                                  height: 30.0,
                                  child: SpinKitThreeBounce(
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 30.0,
                                  ),
                                ),
                              );
                            }
                            List<ScheduleRecord> columnScheduleRecordList =
                                snapshot.data!;

                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              children:
                                  List.generate(columnScheduleRecordList.length,
                                          (columnIndex) {
                                final columnScheduleRecord =
                                    columnScheduleRecordList[columnIndex];
                                return StreamBuilder<ScheduleRecord>(
                                  stream: ScheduleRecord.getDocument(
                                      columnScheduleRecord.reference),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 30.0,
                                          height: 30.0,
                                          child: SpinKitThreeBounce(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 30.0,
                                          ),
                                        ),
                                      );
                                    }

                                    final containerScheduleRecord =
                                        snapshot.data!;

                                    return InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        if (containerScheduleRecord.isProgram ==
                                            false) {
                                          if (containerScheduleRecord.active ==
                                              true) {
                                            context.pushNamed(
                                              'presentationActive',
                                              queryParameters: {
                                                'activeChat': serializeParam(
                                                  containerScheduleRecord
                                                      .reference,
                                                  ParamType.DocumentReference,
                                                ),
                                              }.withoutNulls,
                                            );
                                          } else {
                                            context.pushNamed(
                                              'presentationInfo',
                                              queryParameters: {
                                                'activeInfo': serializeParam(
                                                  containerScheduleRecord
                                                      .reference,
                                                  ParamType.DocumentReference,
                                                ),
                                              }.withoutNulls,
                                            );
                                          }
                                        } else {
                                          return;
                                        }
                                      },
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        constraints: const BoxConstraints(
                                          minHeight: 50.0,
                                        ),
                                        decoration: BoxDecoration(
                                          color: () {
                                            if (containerScheduleRecord
                                                .active) {
                                              return FlutterFlowTheme.of(
                                                      context)
                                                  .alternate;
                                            } else if (containerScheduleRecord
                                                .isComplete) {
                                              return Colors.transparent;
                                            } else {
                                              return Colors.transparent;
                                            }
                                          }(),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          border: Border.all(
                                            color: valueOrDefault<Color>(
                                              containerScheduleRecord.isComplete
                                                  ? FlutterFlowTheme.of(context)
                                                      .accent2
                                                  : FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                            ),
                                            width: 2.0,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.6,
                                                    decoration: const BoxDecoration(),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        if (containerScheduleRecord
                                                                .isProgram ==
                                                            false)
                                                          Text(
                                                            containerScheduleRecord
                                                                .type,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: () {
                                                                    if (containerScheduleRecord
                                                                        .active) {
                                                                      return FlutterFlowTheme.of(
                                                                              context)
                                                                          .accent3;
                                                                    } else if (containerScheduleRecord
                                                                        .isComplete) {
                                                                      return FlutterFlowTheme.of(
                                                                              context)
                                                                          .accent2;
                                                                    } else {
                                                                      return FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate;
                                                                    }
                                                                  }(),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  lineHeight:
                                                                      1.0,
                                                                ),
                                                          ),
                                                        Text(
                                                          containerScheduleRecord
                                                              .name,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: () {
                                                                  if (containerScheduleRecord
                                                                      .isComplete) {
                                                                    return FlutterFlowTheme.of(
                                                                            context)
                                                                        .accent2;
                                                                  } else if (containerScheduleRecord
                                                                      .active) {
                                                                    return FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground;
                                                                  } else {
                                                                    return FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText;
                                                                  }
                                                                }(),
                                                                fontSize: 18.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                lineHeight: 1.2,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      Text(
                                                        dateTimeFormat(
                                                          "jm",
                                                          containerScheduleRecord
                                                              .time!,
                                                          locale:
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .languageCode,
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              color: () {
                                                                if (containerScheduleRecord
                                                                    .isComplete) {
                                                                  return FlutterFlowTheme.of(
                                                                          context)
                                                                      .accent2;
                                                                } else if (containerScheduleRecord
                                                                    .active) {
                                                                  return FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground;
                                                                } else {
                                                                  return FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText;
                                                                }
                                                              }(),
                                                              fontSize: 16.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              if ((containerScheduleRecord
                                                          .isProgram ==
                                                      false) ||
                                                  (FFAppState().mySchedule.contains(
                                                          containerScheduleRecord
                                                              .presentationId) ==
                                                      false))
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 20.0, 0.0, 0.0),
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      FFAppState().addToMySchedule(
                                                          containerScheduleRecord
                                                              .presentationId);
                                                      safeSetState(() {});

                                                      await containerScheduleRecord
                                                          .reference
                                                          .update({
                                                        ...mapToFirestore(
                                                          {
                                                            'capacity':
                                                                FieldValue
                                                                    .increment(
                                                                        -(1)),
                                                            'registered':
                                                                FieldValue
                                                                    .arrayUnion([
                                                              currentUserDisplayName
                                                            ]),
                                                          },
                                                        ),
                                                      });

                                                      await currentUserReference!
                                                          .update({
                                                        ...mapToFirestore(
                                                          {
                                                            'rewardPoints':
                                                                FieldValue
                                                                    .increment(
                                                                        5),
                                                          },
                                                        ),
                                                      });
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                        SnackBar(
                                                          content: Text(
                                                            'Session added!',
                                                            style: TextStyle(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                            ),
                                                          ),
                                                          duration: const Duration(
                                                              milliseconds:
                                                                  4000),
                                                          backgroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondary,
                                                        ),
                                                      );
                                                    },
                                                    child: Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          1.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                        border: Border.all(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          width: 2.0,
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(
                                                            10.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text(
                                                              'add to \"My Schedule\"',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    fontSize:
                                                                        16.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              })
                                      .divide(const SizedBox(height: 10.0))
                                      .addToStart(const SizedBox(height: 20.0))
                                      .addToEnd(const SizedBox(height: 20.0)),
                            );
                          },
                        ),
                      ),
                    ]
                        .divide(const SizedBox(height: 8.0))
                        .addToStart(const SizedBox(height: 25.0))
                        .addToEnd(const SizedBox(height: 50.0)),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
