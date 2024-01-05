import 'package:consumo_api/repositories/aluno_repository.dart';

void main() async {
  final alunoRepository = AlunoRepository();

  final alunos = await alunoRepository.buscarTodos();

  print(alunos);

  final aluno = alunoRepository.buscarPorId(0);
  print(aluno);
}
