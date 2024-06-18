part of 'landing_cubit.dart';

@immutable
abstract class LandingState {}

class MyInitial extends LandingState {}

class GetLandingData extends LandingState {
  final List<Landing> landingData;

  GetLandingData(this.landingData);
}

class LoadingState extends LandingState {}

class LandingError extends LandingState {
  final String errorMassage;

  LandingError(this.errorMassage);
}
