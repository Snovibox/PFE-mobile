part of 'app_parameter_cubit.dart';

enum LanguageStatus {fr, eng, ger}
enum ScreenModeStatus {day, nigth}

class AppParameterState extends Equatable {
  LanguageStatus language;
  ScreenModeStatus screenMode;

  LanguageStatus get getLanguage => language;
  ScreenModeStatus get getScreenMode => screenMode;

  AppParameterState._({
    this.language = LanguageStatus.eng,
    this.screenMode = ScreenModeStatus.day,
  });


  @override
  List<Object> get props => [language, screenMode];

  
}