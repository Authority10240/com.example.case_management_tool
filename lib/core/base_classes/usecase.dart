import 'package:case_management_tool/core/utilities/typedef.dart';
import 'package:equatable/equatable.dart';

abstract class BaseUseCase<T, P extends BaseUseCaseParams >{
  ResultFuture<T> call({required P? params});
}

abstract class BaseUseCaseParams extends Equatable{}