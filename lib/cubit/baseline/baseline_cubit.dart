import 'package:absents_btn/constants/constant.dart';
import 'package:absents_btn/cubit/baseline/baseline_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BaselineCubit extends Cubit<BaselineState> {
  BaselineCubit() : super(BaselineInitial());

  void fetchBaseline() {
    emit(BaselineLoading());
    try {
      emit(BaselineLoaded(baseline: baselineData));

      if (baselineData.isEmpty) {
        emit(BaselineError(message: 'No data found'));
      }
    } catch (e) {
      final message = e.toString();
      emit(BaselineError(message: message));
      print(e.toString());
    }
  }
}
