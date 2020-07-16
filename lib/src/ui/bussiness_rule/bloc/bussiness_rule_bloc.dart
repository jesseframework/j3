import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'bussiness_rule_event.dart';
part 'bussiness_rule_state.dart';

class BussinessRuleBloc extends Bloc<BussinessRuleEvent, BussinessRuleState> {
  BussinessRuleBloc();

  @override
  Stream<BussinessRuleState> mapEventToState(
    BussinessRuleEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }

  @override
  // TODO: implement initialState
  BussinessRuleState get initialState => throw UnimplementedError();
}
