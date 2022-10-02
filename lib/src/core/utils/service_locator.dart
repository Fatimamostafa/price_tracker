import 'package:get_it/get_it.dart';
import 'package:pricetracker/src/core/network/http_client.dart';
import 'package:pricetracker/src/features/home/data/datasources/home_datasource.dart';
import 'package:pricetracker/src/features/home/data/repositories/home_repository_impl.dart';
import 'package:pricetracker/src/features/home/domain/repositories/home_repository.dart';
import 'package:pricetracker/src/features/home/domain/usecases/get_company.dart';
import 'package:pricetracker/src/features/home/presentation/cubit/home_cubit.dart';
import 'package:pricetracker/src/features/home/presentation/cubit/symbol/socket_cubit.dart';

// service locator
final sl = GetIt.instance;

/// Initializes dependencies on app start
Future<void> init() async {
  // Cubit
  sl.registerFactory(
    () => HomeCubit(),
  );
  sl.registerFactory(
        () => SocketCubit(),
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

  // Core
  sl.registerLazySingleton<HttpClient>(
    () => HttpClient(),
  );
}
