part of 'voa_realisasi_cubit.dart';

sealed class VoaRealisasiState extends Equatable {
  const VoaRealisasiState();

  @override
  List<Object> get props => [];
}

final class VoaRealisasiInitial extends VoaRealisasiState {}

final class VoaRealisasiLoading extends VoaRealisasiState {}

final class VoaRealisasiLoaded extends VoaRealisasiState {
  final List<VoaRealisasi> voaRealisasi;

  const VoaRealisasiLoaded({
    required this.voaRealisasi,
  });

  @override
  List<Object> get props => [voaRealisasi];
}

final class VoaRealisasiError extends VoaRealisasiState {
  final String message;

  const VoaRealisasiError({required this.message});

  @override
  List<Object> get props => [message];
}
