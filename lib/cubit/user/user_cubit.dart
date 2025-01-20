import 'package:absents_btn/models/user.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../constants/constant.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserInitial());

  void fetchUser() {
    emit(UserLoading());

    print('Fetching user data...');
    print('User data: $userData');
    if (userData.isEmpty) {
      print('No data found');
      emit(UserError(message: 'No data found'));
    } else {
      print('User data loaded');
      emit(UserLoaded(user: userData));
    }
  }
}
