import 'package:absents_btn/constants/constant.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../models/voa_realisasi.dart';

part 'voa_realisasi_state.dart';

class VoaRealisasiCubit extends Cubit<VoaRealisasiState> {
  VoaRealisasiCubit() : super(VoaRealisasiInitial());

  void fetchVoaRealisasi() {
    emit(VoaRealisasiLoading());
    print('Fetching VoA Realisasi data...');
    print('voaRealisasiData: $voaRealisasiData');

    if (voaRealisasiData.isEmpty) {
      emit(VoaRealisasiError(message: 'No data found'));
    } else {
      emit(VoaRealisasiLoaded(voaRealisasi: voaRealisasiData));
    }
  }
}
