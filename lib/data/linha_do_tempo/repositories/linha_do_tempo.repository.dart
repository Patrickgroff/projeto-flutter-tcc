import 'package:gest_car/domain/linha_do_tempo/entities/linha_do_tempo.dart';
import 'package:gest_car/domain/linha_do_tempo/repositories/linha_do_tempo.repository.i.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ILinhaDoTempoRepository)
class LinhaDoTempoRepository implements ILinhaDoTempoRepository {
  // Inject datasource
  // final LinhaDoTempoApiDatasource _linhaDoTempoAPI;
  // LinhaDoTempoRepository(_linhaDoTempoAPI);

  @override
  Future<List<LinhaDoTempo>> get() async {
    // TODO: implement get
    throw UnimplementedError();
  }
}
