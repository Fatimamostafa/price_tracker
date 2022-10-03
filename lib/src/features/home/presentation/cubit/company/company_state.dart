part of 'company_cubit.dart';

abstract class CompanyState {
  const CompanyState();
}

class Initial extends CompanyState {
  const Initial();
}

class CompanyLoaded extends CompanyState {
  final List<String> companyEnums;

  const CompanyLoaded({
    required this.companyEnums,
  });
}
