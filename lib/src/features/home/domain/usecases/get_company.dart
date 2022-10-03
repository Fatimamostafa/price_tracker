import 'package:pricetracker/src/features/home/domain/repositories/home_repository.dart';

/// Get company data list
abstract class GetCompanyUseCase {
  List<String> call();
}

class GetCompanyUseCaseImpl implements GetCompanyUseCase {
  final HomeRepository repository;

  GetCompanyUseCaseImpl(this.repository);

  @override
  List<String> call()  => repository.getCompany();
}
