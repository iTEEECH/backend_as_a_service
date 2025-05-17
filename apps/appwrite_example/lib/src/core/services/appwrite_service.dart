import 'package:appwrite/appwrite.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'appwrite_service.g.dart';

@Riverpod(keepAlive: true)
Client client(Ref ref) => throw UnimplementedError();

@Riverpod(keepAlive: true, dependencies: [client])
Account account(Ref ref) => Account(ref.watch(clientProvider));
