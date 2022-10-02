part of 'home_cubit.dart';

abstract class HomeState {
  const HomeState();
}

class Initial extends HomeState {
  const Initial();
}

// class SymbolsLoading extends HomeState {
//   const SymbolsLoading();
// }

class CompanyLoaded extends HomeState {
  final List<String> companyEnums;

  const CompanyLoaded({
    required this.companyEnums,
  });
}

// class SymbolsLoaded extends HomeState {
//   final ActiveSymbols symbols;
//
//   const SymbolsLoaded({
//     required this.symbols,
//   });
// }
//
// class SymbolsEmpty extends HomeState {
//   final String message;
//
//   const SymbolsEmpty({required this.message});
// }

class Error extends HomeState {
  final String message;

  const Error({required this.message});
}
