abstract class LoginState{
  const LoginState();
}

class LoginInit extends LoginState {
  const LoginInit();
}

class LoginLoading extends LoginState{
  const LoginLoading();
}

class LoginError extends LoginState{
  final String message;
  const LoginError(this.message);
}

class LoginSuccess extends LoginState{
  const LoginSuccess();
}