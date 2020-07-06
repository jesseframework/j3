import 'package:j3enterprise/src/models/non_global_preference_setting.dart';
import 'package:j3enterprise/src/models/preference_model.dart';
import 'package:meta/meta.dart';

class PreferenceWithNonGlobalPreference {
  final Preference preference;
  final NonGlobalPreference nonGlobalPreference;

  PreferenceWithNonGlobalPreference({
    @required this.preference,
    @required this.nonGlobalPreference,
  });
}
