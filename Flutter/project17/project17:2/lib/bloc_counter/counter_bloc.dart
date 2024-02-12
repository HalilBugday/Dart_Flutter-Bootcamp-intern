import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterInitial(baslangicDegeri: 40)) {
    on<ArttirCounterEvent>((event, emit) {
      emit(MyCounterState(sayacDegeri: state.sayac + 1));
    });
    on<AzaltCounterEvent>((event, emit) {
      emit(MyCounterState(sayacDegeri: state.sayac - 1));
    });
  }
}
