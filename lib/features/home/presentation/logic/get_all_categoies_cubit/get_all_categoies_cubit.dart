import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'get_all_categoies_state.dart';

class GetAllCategoiesCubit extends Cubit<GetAllCategoiesState> {
  GetAllCategoiesCubit() : super(GetAllCategoiesInitial());
}
