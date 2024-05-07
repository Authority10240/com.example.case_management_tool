import 'package:case_management_tool/core/utilities/typedef.dart';
import 'package:equatable/equatable.dart';

abstract class BaseRepository<T, P extends BaseRepositoryParams >{
  ResultFuture<T>call({
  P? params
});
}

abstract class BaseRepositoryParams extends Equatable{

}