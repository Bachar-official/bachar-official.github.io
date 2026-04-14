import 'package:flutter/material.dart';
import 'package:profile/constants/locales.dart';
import 'package:profile/constants/themes.dart';

@immutable
class ProfileState {
  final Themes themes;
  final Locales locales;
  final bool isCollapsed;
  final bool isLoading;
  final double progress;

  const ProfileState({
    required this.themes,
    required this.locales,
    required this.isCollapsed,
    required this.isLoading,
    required this.progress,
  });

  const ProfileState.initial()
      : themes = Themes.light,
        locales = Locales.en,
        isLoading = false,
        isCollapsed = true,
        progress = 0;

  ProfileState copyWith(
      {Themes? themes, Locales? locales, bool? isCollapsed, bool? isLoading, double? progress}) {
    return ProfileState(
      themes: themes ?? this.themes,
      locales: locales ?? this.locales,
      isCollapsed: isCollapsed ?? this.isCollapsed,
      isLoading: isLoading ?? this.isLoading,
      progress: progress ?? this.progress,
    );
  }
}
