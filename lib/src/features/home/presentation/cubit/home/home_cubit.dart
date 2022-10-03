import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pricetracker/src/core/utils/service_locator.dart';
import 'package:pricetracker/src/features/home/domain/usecases/get_company.dart';
import 'package:pricetracker/src/features/home/presentation/cubit/price/price_cubit.dart';


part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final GetCompanyUseCase _getCompanyUseCase = sl<GetCompanyUseCase>();


  HomeCubit() : super(const Initial()) {
    getCompany();
  }

  void getCompany() {
    sl<PriceCubit>().priceForget();
    final symbols = _getCompanyUseCase();
    emit(CompanyLoaded(companyEnums: symbols));
  }

}
