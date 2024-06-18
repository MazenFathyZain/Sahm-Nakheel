import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sahm_nakheel/features/home/data/model/landing.dart';
import 'package:sahm_nakheel/features/home/data/repository/landing_repo.dart';

part 'landing_state.dart';

class LandingCubit extends Cubit<LandingState> {
  final LandingRepo landingRepo;

  LandingCubit(this.landingRepo) : super(MyInitial());
  getLandingData() {
    try {
      landingRepo.getLandaingData().then((data) => emit(GetLandingData(data)));
    }on DioException catch (error) {
      String errorMessage = "Error occurred";
      if (error.response != null) {
        errorMessage = error.response!.data.toString();
      } else {
        errorMessage = error.message!;
      }
      emit(LandingError(errorMessage));
    } catch (error) {
      emit(LandingError(error.toString()));
    }
  }
}
