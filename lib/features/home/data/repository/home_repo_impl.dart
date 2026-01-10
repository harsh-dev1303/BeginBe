import 'package:fpdart/fpdart.dart' as Either;
import 'package:secure_fintech_bankingapp/core/error/failures.dart';
import 'package:secure_fintech_bankingapp/core/typedefs.dart';
import 'package:secure_fintech_bankingapp/features/home/data/datasource/home_datasource.dart';
import 'package:secure_fintech_bankingapp/features/home/domain/entity/services_entity.dart';
import 'package:secure_fintech_bankingapp/features/home/domain/repository/home_repo.dart';

class HomeRepoImpl implements HomeRepo{
  
  final HomeDatasource homeDatasource;

  HomeRepoImpl(this.homeDatasource);

  @override
  ResultEither<ServicesEntity> serviceCenters() async {
    try{
      final serviceCenterModel = await homeDatasource.getServiceCenters();
      return Either.right(serviceCenterModel.toDomain());
    }on ServiceFailure catch(e){
      return Either.left(ServiceFailure(e.toString()));

    } 
    
  }
    
}