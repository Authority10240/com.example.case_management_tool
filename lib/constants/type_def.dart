import 'package:case_management_tool/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

typedef ValueResult<R> = Either<Failure, R>;

typedef VoidResult = Either<Failure, void>;