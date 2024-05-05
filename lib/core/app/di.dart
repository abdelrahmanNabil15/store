
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:store/features/authentication/data/data_sources/auth_remote_data_source.dart';
import 'package:store/features/authentication/data/repositories/auth_repository_imp.dart';
import 'package:store/features/authentication/domain/repositories/auth_repository.dart';
import 'package:store/features/authentication/domain/usecase/login_usecase.dart';
import 'package:store/features/authentication/presentation/bloc/auth_bloc.dart';
import 'package:store/features/products/data/data_sources/products_remote_data_source.dart';
import 'package:store/features/products/data/repositories/product_repository_imp.dart';
import 'package:store/features/products/domain/repositories/products_repository.dart';
import 'package:store/features/products/domain/usecase/get_all_products.dart';
import 'package:store/features/products/presentation/bloc/product_bloc.dart';

import '../network/api_service.dart';
import '../network/dio_factory.dart';
import '../network/netword_info.dart';
import 'app_prefs.dart';

final instance = GetIt.instance;

Future<void> initAppModule() async {
  /// SharedPreferences instance
  final sharedPreferences = await SharedPreferences.getInstance();
  instance.registerLazySingleton<SharedPreferences>(() => sharedPreferences);
  ///AppPreferences instance
  // final appPreferences = AppPreferences(instance());
  instance.registerLazySingleton<AppPreferences>(() => AppPreferences(instance()));
  ///NetworkInfo instance
  instance.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(InternetConnectionChecker()));
  // print("${GetIt.I.isRegistered<NetworkInfo>()} " + "NetworkInfo");
  ///DioFactory instance
  instance.registerLazySingleton<DioFactory>(() => DioFactory(instance()));
  final dio = await instance<DioFactory>().getDio();
  //AppServiceClient instance
  instance.registerLazySingleton(() => ApiService(dio));
  dataSources();
  repositories();
  useCase();
  bloc();

}
void repositories() {
  instance.registerFactory<Authentication>(() => AuthenticationRepositoryImp(instance(), ));
  instance.registerFactory<ProductsRepository>(() => ProductRepositoryImp(instance(), ));

}

/// Register dataSources
void dataSources() {
  instance.registerLazySingleton<AuthenticationRemoteDataSource>(
        () => AuthenticationRemoteDataSourceImp(instance()),
  );
  instance.registerLazySingleton<ProductsRemoteDataSource>(
        () => ProductsRemoteDataSourceImp(instance()),
  );

}
void useCase() {
  /// Auth
  instance.registerFactory<LoginUseCase>(() => LoginUseCase(instance()));
  instance.registerFactory<GetProductsUseCase>(() => GetProductsUseCase(instance()));

}

void bloc() {

  ///
  instance.registerFactory(() => AuthBloc(instance()));
  instance.registerFactory(() => ProductBloc(instance()));


}
