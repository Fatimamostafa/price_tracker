import 'package:get_it/get_it.dart';
import 'package:pricetracker/src/features/home/data/datasources/home_datasource.dart';
import 'package:pricetracker/src/features/home/data/repositories/home_repository_impl.dart';
import 'package:pricetracker/src/features/home/domain/repositories/home_repository.dart';
import 'package:pricetracker/src/features/home/domain/usecases/get_company.dart';
import 'package:pricetracker/src/features/home/presentation/cubit/company/company_cubit.dart';
import 'package:pricetracker/src/features/home/presentation/cubit/price/price_cubit.dart';
import 'package:pricetracker/src/features/home/presentation/cubit/symbol/symbol_cubit.dart';

// service locator
final sl = GetIt.instance;

/// Initializes dependencies on app start
Future<void> init() async {
  // Cubit
  sl.registerFactory<CompanyCubit>(
      ()=> CompanyCubit(),
  );
  sl.registerSingleton<SymbolCubit>(
    SymbolCubit(),
    signalsReady: true,
  );
  sl.registerSingleton<PriceCubit>(
    PriceCubit(),
    signalsReady: true,
  );

  // Use cases
  sl.registerLazySingleton<GetCompanyUseCase>(() => GetCompanyUseCaseImpl(
        sl<HomeRepository>(),
      ));

  // Repository
  sl.registerLazySingleton<HomeRepository>(() => HomeRepositoryImpl(
        remoteDataSource: sl<HomeDataSource>(),
      ));

  // Data sources
  sl.registerFactory<HomeDataSource>(
    () => HomeDataSourceImpl(),
  );

}
