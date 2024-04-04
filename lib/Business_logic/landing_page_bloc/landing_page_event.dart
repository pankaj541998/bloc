part of 'landing_page_bloc.dart';

@immutable
sealed class LandingPageEvent {}

class TabChanges extends LandingPageEvent{
  final int tabIndex;
  TabChanges({required this.tabIndex});
}
