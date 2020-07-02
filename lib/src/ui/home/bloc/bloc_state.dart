part of 'bloc_bloc.dart';

abstract class BlocState extends Equatable {
  const BlocState();
}

class BlocInitial extends BlocState {
  @override
  List<Object> get props => [];
}
