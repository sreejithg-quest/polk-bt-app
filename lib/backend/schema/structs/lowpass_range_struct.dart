// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LowpassRangeStruct extends BaseStruct {
  LowpassRangeStruct({
    List<int>? lowpassrange,
  }) : _lowpassrange = lowpassrange;

  // "lowpassrange" field.
  List<int>? _lowpassrange;
  List<int> get lowpassrange => _lowpassrange ?? const [];
  set lowpassrange(List<int>? val) => _lowpassrange = val;

  void updateLowpassrange(Function(List<int>) updateFn) {
    updateFn(_lowpassrange ??= []);
  }

  bool hasLowpassrange() => _lowpassrange != null;

  static LowpassRangeStruct fromMap(Map<String, dynamic> data) =>
      LowpassRangeStruct(
        lowpassrange: getDataList(data['lowpassrange']),
      );

  static LowpassRangeStruct? maybeFromMap(dynamic data) => data is Map
      ? LowpassRangeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'lowpassrange': _lowpassrange,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'lowpassrange': serializeParam(
          _lowpassrange,
          ParamType.int,
          isList: true,
        ),
      }.withoutNulls;

  static LowpassRangeStruct fromSerializableMap(Map<String, dynamic> data) =>
      LowpassRangeStruct(
        lowpassrange: deserializeParam<int>(
          data['lowpassrange'],
          ParamType.int,
          true,
        ),
      );

  @override
  String toString() => 'LowpassRangeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is LowpassRangeStruct &&
        listEquality.equals(lowpassrange, other.lowpassrange);
  }

  @override
  int get hashCode => const ListEquality().hash([lowpassrange]);
}

LowpassRangeStruct createLowpassRangeStruct() => LowpassRangeStruct();
