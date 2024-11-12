import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'toast_party_model.dart';
export 'toast_party_model.dart';

class ToastPartyWidget extends StatefulWidget {
  const ToastPartyWidget({super.key});

  @override
  State<ToastPartyWidget> createState() => _ToastPartyWidgetState();
}

class _ToastPartyWidgetState extends State<ToastPartyWidget> {
  late ToastPartyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ToastPartyModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400.0,
      height: 60.0,
      decoration: BoxDecoration(
        color: const Color(0xFF7D8CA7),
        boxShadow: const [
          BoxShadow(
            blurRadius: 15.0,
            color: Color(0x18000000),
            offset: Offset(
              0.0,
              2.0,
            ),
          )
        ],
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
          color: const Color(0xFFE5E7EB),
        ),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 12.0, 8.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 36.0,
              height: 36.0,
              decoration: const BoxDecoration(
                color: Color(0x2EFFFFFF),
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Icon(
                  Icons.add_task_rounded,
                  color: FlutterFlowTheme.of(context).info,
                  size: 24.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Party Created',
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'Figtree',
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ].divide(const SizedBox(height: 4.0)),
              ),
            ),
          ].divide(const SizedBox(width: 8.0)),
        ),
      ),
    );
  }
}
