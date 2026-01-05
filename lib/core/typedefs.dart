

import 'package:fpdart/fpdart.dart';
import 'package:secure_fintech_bankingapp/core/error/failures.dart';

typedef ResultEither<T> = Future<Either<Failures,T>>;