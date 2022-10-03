import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pricetracker/src/core/utils/service_locator.dart';
import 'package:pricetracker/src/features/home/domain/usecases/get_company.dart';
import 'package:pricetracker/src/features/home/presentation/cubit/price/price_cubit.dart';

part 'company_state.dart';

class CompanyCubit extends Cubit<CompanyState> {
  final GetCompanyUseCase _getCompanyUseCase = sl<GetCompanyUseCase>();

  CompanyCubit() : super(const Initial()) {
    getCompany();
  }

  void getCompany() {
    sl<PriceCubit>().priceForget();
    final symbols = _getCompanyUseCase();
    emit(CompanyLoaded(companyEnums: symbols));
  }
}
