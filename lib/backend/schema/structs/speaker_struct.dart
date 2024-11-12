// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SpeakerStruct extends BaseStruct {
  SpeakerStruct({
    String? thumbnail,
    String? deviceName,
    String? sn,
    String? status,
    bool? partyActive,
  })  : _thumbnail = thumbnail,
        _deviceName = deviceName,
        _sn = sn,
        _status = status,
        _partyActive = partyActive;

  // "Thumbnail" field.
  String? _thumbnail;
  String get thumbnail => _thumbnail ?? '';
  set thumbnail(String? val) => _thumbnail = val;

  bool hasThumbnail() => _thumbnail != null;

  // "DeviceName" field.
  String? _deviceName;
  String get deviceName => _deviceName ?? 'DeviceName';
  set deviceName(String? val) => _deviceName = val;

  bool hasDeviceName() => _deviceName != null;

  // "SN" field.
  String? _sn;
  String get sn => _sn ?? '00000000';
  set sn(String? val) => _sn = val;

  bool hasSn() => _sn != null;

  // "Status" field.
  String? _status;
  String get status => _status ?? 'Available';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "PartyActive" field.
  bool? _partyActive;
  bool get partyActive => _partyActive ?? false;
  set partyActive(bool? val) => _partyActive = val;

  bool hasPartyActive() => _partyActive != null;

  static SpeakerStruct fromMap(Map<String, dynamic> data) => SpeakerStruct(
        thumbnail: data['Thumbnail'] as String?,
        deviceName: data['DeviceName'] as String?,
        sn: data['SN'] as String?,
        status: data['Status'] as String?,
        partyActive: data['PartyActive'] as bool?,
      );

  static SpeakerStruct? maybeFromMap(dynamic data) =>
      data is Map ? SpeakerStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'Thumbnail': _thumbnail,
        'DeviceName': _deviceName,
        'SN': _sn,
        'Status': _status,
        'PartyActive': _partyActive,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Thumbnail': serializeParam(
          _thumbnail,
          ParamType.String,
        ),
        'DeviceName': serializeParam(
          _deviceName,
          ParamType.String,
        ),
        'SN': serializeParam(
          _sn,
          ParamType.String,
        ),
        'Status': serializeParam(
          _status,
          ParamType.String,
        ),
        'PartyActive': serializeParam(
          _partyActive,
          ParamType.bool,
        ),
      }.withoutNulls;

  static SpeakerStruct fromSerializableMap(Map<String, dynamic> data) =>
      SpeakerStruct(
        thumbnail: deserializeParam(
          data['Thumbnail'],
          ParamType.String,
          false,
        ),
        deviceName: deserializeParam(
          data['DeviceName'],
          ParamType.String,
          false,
        ),
        sn: deserializeParam(
          data['SN'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['Status'],
          ParamType.String,
          false,
        ),
        partyActive: deserializeParam(
          data['PartyActive'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'SpeakerStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SpeakerStruct &&
        thumbnail == other.thumbnail &&
        deviceName == other.deviceName &&
        sn == other.sn &&
        status == other.status &&
        partyActive == other.partyActive;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([thumbnail, deviceName, sn, status, partyActive]);
}

SpeakerStruct createSpeakerStruct({
  String? thumbnail,
  String? deviceName,
  String? sn,
  String? status,
  bool? partyActive,
}) =>
    SpeakerStruct(
      thumbnail: thumbnail,
      deviceName: deviceName,
      sn: sn,
      status: status,
      partyActive: partyActive,
    );
