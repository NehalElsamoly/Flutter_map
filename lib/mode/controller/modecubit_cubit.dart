import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../shared/local/sharedpref.dart';

part 'modecubit_state.dart';

class ModecubitCubit extends Cubit<ModecubitState> {
  ModecubitCubit() : super(ModecubitInitial());
  static ModecubitCubit get(context) => BlocProvider.of(context);

  bool isDark=false;
  // void changemood({bool ?fromShared}) {
  //   isDark = !isDark; // Toggle between true and false
  // //  emit(ChangeMoodState());
  //   // You should create a new instance of ChangeMoodState
  //   CacheHelper.putBoolean(key: 'isDark', value: isDark).then((value) {
  //     emit(ChangeMoodState());
  //
  //   });
  // }
  void changeAppMode({ bool ?fromShared})
  {
    if (fromShared != null)//لو القيمة الي جيالي الي هيا المفروض ب true مش بnull
    {
      isDark = fromShared;//خليها بتساويها
      emit(ChangeMoodState());// لكن دوسة الزرار انا مش باخد معااها الفيمة دي ف هيبقي ب Null فهيروح يعكس وكده لكن الي باخد معاها قيمة لما اجي rebuild ف بيخليها ب true يوجط الداتا
    } else//دوسة الزارار هتغير قيمة الدارك وتكيش لكن الاساسيه هتبقي باعت قيمة يعني فعلا مش بتساوي Nullف هختلهيا بتساويها ب true وبعدين تكيش
    {
      isDark = !isDark;//دي لما اغير من الزرار
      CacheHelper.putBoolean(key: 'isDark', value: isDark).then((value) {
        emit(ChangeMoodState());
      });
    }
  }
  }
