
import 'package:flutter_bloc/flutter_bloc.dart';
part 'chat__state.dart';

// class ChatBloc extends Bloc<ChatEvent, ChatState> {
//   ChatBloc() : super(ChatInitial()) {
//     on<OnLoginbuttonPressedEvent>(
//       onLogginPressed,
//     );

//     on<OnRegisterbuttonPressedEvent>(
//     (event, emit) {
//         onRegisterPressed(event, emit);
//     },
//     );
//   }

//   FutureOr<void> onLogginPressed(
//       OnLoginbuttonPressedEvent event, Emitter<ChatState> emit) {
//     print("the fucntion workded");

//     emit(onLogginbuttonPressedState());
//   }

//   FutureOr<void> onRegisterPressed(
//       OnRegisterbuttonPressedEvent event, Emitter<ChatState> emit) {
//     print("register fucntion called");
//     emit(onRegisterbuttonPressedstate());
//   }
// }

class ChatBloc extends Cubit<ChatState> {
  ChatBloc() : super(ChatInitial());
  // ChatBloc() : super(ChatState());






}
