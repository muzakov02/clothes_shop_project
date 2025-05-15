import 'package:clothes_shop_project/models/user_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'login_state.dart';
import '../repo/auth_repo.dart';

class LoginCubit extends Cubit<LoginState> {
  final AuthRepo _authRepo;

  LoginCubit(this._authRepo) : super(LoginInit());

  Future<void> signUp({required String email, required String password}) async {
    emit(LoginLoading());
    try {
      await _authRepo.signUp(email: email, password: password);
      emit(LoginSuccess());
    } catch (e) {
      print("Errrror$e");
      emit(LoginError(e.toString()));
    }
  }

  Future<void> signIn({required String email, required String password}) async {
    emit(LoginLoading());
    try {
      await _authRepo.signIn(email: email, password: password);
      emit(LoginSuccess());
    } catch (e) {
      emit(LoginError(e.toString()));
    }
  }

  // Future<void> addUser(UserModel user) async {
  //   emit(SavingUser());
  //   try{
  //     await UserFirebaseServise().addUser(user);
  //     emit(SaveUserSucces());
  //   } catch(e) {
  //     emit(SaveUserError(e.toString()));
  //   }
  // }
}
