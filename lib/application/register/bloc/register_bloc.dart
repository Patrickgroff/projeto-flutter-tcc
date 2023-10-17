import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gest_car/domain/user/repositories/user.repository.i.dart';
import 'package:injectable/injectable.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

@injectable
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final IUserRepository _userRepository;
  RegisterBloc(this._userRepository) : super(_Initial()) {
    on<RegisterEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
