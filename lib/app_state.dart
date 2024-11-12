import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  Color _selectedColor = Colors.transparent;
  Color get selectedColor => _selectedColor;
  set selectedColor(Color value) {
    _selectedColor = value;
  }

  bool _BatterySaverToggle = false;
  bool get BatterySaverToggle => _BatterySaverToggle;
  set BatterySaverToggle(bool value) {
    _BatterySaverToggle = value;
  }

  bool _FeedbackSoundsToggle = false;
  bool get FeedbackSoundsToggle => _FeedbackSoundsToggle;
  set FeedbackSoundsToggle(bool value) {
    _FeedbackSoundsToggle = value;
  }

  bool _PartyStereoToggle = false;
  bool get PartyStereoToggle => _PartyStereoToggle;
  set PartyStereoToggle(bool value) {
    _PartyStereoToggle = value;
  }

  bool _LightsToggle = false;
  bool get LightsToggle => _LightsToggle;
  set LightsToggle(bool value) {
    _LightsToggle = value;
  }

  bool _BattSavToggleFlask = false;
  bool get BattSavToggleFlask => _BattSavToggleFlask;
  set BattSavToggleFlask(bool value) {
    _BattSavToggleFlask = value;
  }

  bool _SoundToggleFlask = false;
  bool get SoundToggleFlask => _SoundToggleFlask;
  set SoundToggleFlask(bool value) {
    _SoundToggleFlask = value;
  }

  bool _PartyStereoFlask = false;
  bool get PartyStereoFlask => _PartyStereoFlask;
  set PartyStereoFlask(bool value) {
    _PartyStereoFlask = value;
  }

  bool _LightsToggleFlask = false;
  bool get LightsToggleFlask => _LightsToggleFlask;
  set LightsToggleFlask(bool value) {
    _LightsToggleFlask = value;
  }

  bool _BattSavCan = false;
  bool get BattSavCan => _BattSavCan;
  set BattSavCan(bool value) {
    _BattSavCan = value;
  }

  bool _SoundToggleCan = false;
  bool get SoundToggleCan => _SoundToggleCan;
  set SoundToggleCan(bool value) {
    _SoundToggleCan = value;
  }

  bool _PartyStereoCan = false;
  bool get PartyStereoCan => _PartyStereoCan;
  set PartyStereoCan(bool value) {
    _PartyStereoCan = value;
  }

  List<String> _SelectedPartySpeakers = [];
  List<String> get SelectedPartySpeakers => _SelectedPartySpeakers;
  set SelectedPartySpeakers(List<String> value) {
    _SelectedPartySpeakers = value;
  }

  void addToSelectedPartySpeakers(String value) {
    SelectedPartySpeakers.add(value);
  }

  void removeFromSelectedPartySpeakers(String value) {
    SelectedPartySpeakers.remove(value);
  }

  void removeAtIndexFromSelectedPartySpeakers(int index) {
    SelectedPartySpeakers.removeAt(index);
  }

  void updateSelectedPartySpeakersAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    SelectedPartySpeakers[index] = updateFn(_SelectedPartySpeakers[index]);
  }

  void insertAtIndexInSelectedPartySpeakers(int index, String value) {
    SelectedPartySpeakers.insert(index, value);
  }

  bool _FlaskInParty = false;
  bool get FlaskInParty => _FlaskInParty;
  set FlaskInParty(bool value) {
    _FlaskInParty = value;
  }

  bool _CanInParty = false;
  bool get CanInParty => _CanInParty;
  set CanInParty(bool value) {
    _CanInParty = value;
  }

  bool _PartyMode = false;
  bool get PartyMode => _PartyMode;
  set PartyMode(bool value) {
    _PartyMode = value;
  }

  bool _StereoActive = false;
  bool get StereoActive => _StereoActive;
  set StereoActive(bool value) {
    _StereoActive = value;
  }

  bool _PartyActive = false;
  bool get PartyActive => _PartyActive;
  set PartyActive(bool value) {
    _PartyActive = value;
  }

  bool _PowerState = false;
  bool get PowerState => _PowerState;
  set PowerState(bool value) {
    _PowerState = value;
  }
}

Color? _colorFromIntValue(int? val) {
  if (val == null) {
    return null;
  }
  return Color(val);
}
