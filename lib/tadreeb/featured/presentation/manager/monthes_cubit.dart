import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_connect/http/src/response/response.dart';

import '../../../core/ulits/apiservice.dart';
import '../../data/model.dart';
import 'monthes_state.dart';

class MonthesCubit extends Cubit<MonthesState> {
  final Apiservice apiService;

  MonthesCubit({required this.apiService}) : super(MonthesLoading());

  Future<void> getAllMonths(String token) async {
    try {
      emit(MonthesLoading());

      final response = await apiService.getAllMonths(token);

      if (response is Response) {
         {
          // Assuming your response data is a Map<String, dynamic>
          final monthes = Monthes.fromJson(response.data as Map<String, dynamic>);
          emit(MonthesLoaded(monthes));
        }
      } else {
        // Handle the case where response is not of type Response
        emit(MonthesError('Failed to fetch months. Unexpected response type.'));
      }
    } catch (error) {
      emit(MonthesError('Failed to fetch months: $error'));
    }
  }
}
