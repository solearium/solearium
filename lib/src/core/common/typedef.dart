import 'package:fpdart/fpdart.dart';
import 'package:solearium/src/core/error/failure.dart';


typedef ResultFuture<T> = Future<Either<Failure, T>>;
typedef ResultStream<T> = Stream<Either<Failure, T>>;
