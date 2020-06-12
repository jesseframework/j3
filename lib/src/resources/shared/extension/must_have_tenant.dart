import 'package:moor/moor.dart';

mixin MustHaveTenant implements Table {
  IntColumn get tenantId => integer()();
}
