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

  // @override
  // bool operator ==(Object o) {
  //   if (identical(this, o)) return true;
  //
  //   return o is CompanyLoaded && o.companyEnums == companyEnums;
  // }
  //
  // @override
  // int get hashCode => companyEnums.hashCode;
}
