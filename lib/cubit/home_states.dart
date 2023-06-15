import 'package:_neeeeew_project_/data/model/eduOn_model.dart';
import 'package:_neeeeew_project_/data/service/get_eduOn_service.dart';
import 'package:bloc/bloc.dart';
part 'home_cubit.dart';

abstract class HomeState {
  HomeState();
}

class HomeInitialState extends HomeState {
  HomeInitialState();
}

class HomeLoadingState extends HomeState {
  HomeLoadingState();
}

class HomeErrorState extends HomeState {
  String error;
  HomeErrorState(this.error);
}

class HomeCompleteState extends HomeState {
  List<MyService> users;
  HomeCompleteState(this.users);
}