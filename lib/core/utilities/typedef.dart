import 'package:case_management_tool/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

typedef ResultFuture<T> = Future<Either<Failure,T>>;

typedef ResultFutureVoid = Future<void>;