import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// ThemeModeProvider — لتغيير الثيم ديناميكياً
final themeModeProvider = StateProvider<ThemeMode>((ref) => ThemeMode.system);
