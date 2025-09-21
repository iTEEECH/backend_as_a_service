import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'supabase_service.g.dart';

@Riverpod(keepAlive: true)
SupabaseClient supabaseAuth(Ref ref) => Supabase.instance.client;
