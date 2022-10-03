import 'package:pricetracker/src/features/home/data/datasources/home_datasource.dart';
import 'package:pricetracker/src/features/home/domain/repositories/home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeDataSource remoteDataSource;

  HomeRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  List<String> getCompany()  {
    final response = remoteDataSource.getCompany();
    return response;
  }
}
