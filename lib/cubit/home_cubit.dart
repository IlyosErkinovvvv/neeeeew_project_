part of 'home_states.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitialState()) {
    getEduOn();
  }

  EduOnService eduOnService = EduOnService();

  Future<void> getEduOn() async {
    emit(HomeLoadingState());
    await eduOnService.getEduOnService().then((dynamic response) {
      if (response is List<MyService>) {
        emit(HomeCompleteState(response));
      } else {
        emit(HomeErrorState(response));
      }
    });
  }
}
