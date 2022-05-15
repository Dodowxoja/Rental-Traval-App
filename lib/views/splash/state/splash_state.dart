abstract class SplashState {}

class SplashInitial extends SplashState {
  SplashInitial();
}

class SplashLoadingState extends SplashState {
  SplashLoadingState();
}

class SplashCompleteState extends SplashState {
  SplashCompleteState();
}

class SplashErrorState extends SplashState {
  String error;
  SplashErrorState(this.error);
}
