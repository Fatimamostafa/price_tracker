part of 'home_cubit.dart';

abstract class HomeState {
  const HomeState();
}

class Initial extends HomeState {
  const Initial();
}

class CompanyLoaded extends HomeState {
  final List<String> companyEnums;

  const CompanyLoaded({
    required this.companyEnums,
  });
}
