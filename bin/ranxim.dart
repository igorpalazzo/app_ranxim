import 'dart:io';
void main() {
  Player mariaPlayer = Player(name: "Maria", score: 100);
  Player joaoPlayer = Player(name: "Joao", score: 200);
  Player robertaPlayer = Player(name: "Roberta", score: 300);
  Player marioPlayer = Player(name: "Mario", score: 400);
 
  final List<Player> jogadores = <Player>[mariaPlayer, joaoPlayer, robertaPlayer, marioPlayer];

  final List<Match> historicoPartidas = <Match>[];

  while(true) {
    print('\n--- BEM-VINDO AO APP DO RANXIM (TERMINAL) ---');
    print('1. Ver Ranking');
    print('2. Registrar Nova Partida');
    print('3. Ver Histórico de Partidas');
    print('4. Sair');
    stdout.write('Escolha uma opção: '); 
    String? opcao = stdin.readLineSync();

    switch(opcao) {
      case '1': 
        _viewranking(jogadores);
        break;
      case '2': 
        _registerMatch(jogadores, historicoPartidas);
        break;
      case '3':
        _viewHistory(historicoPartidas);
        break;
      case '4':
        return;
    }
  }
}

class Player {
  String name;
  int score;

  Player({required this.name, required this.score});

  @override // para sobreescrever um comportamento padrao do Dart
  String toString() {
      return '$name - $score pts';
  }
}

class Match {
  Player winner;
  Player loser;
  DateTime date;

  Match({required this.winner, required this.loser, required this.date});

  @override
  String toString() {
    String formatarData = "${date.day}/${date.month}/${date.year}";

    return "${winner.name} venceu ${loser.name} em ${formatarData}";
  }
}

void _viewranking(List<Player> players) {
  print("\n--- RANKING ATUAL ---");

  // ordenar a lista de jogador
  players.sort((a,b) => b.score.compareTo(a.score));

  for(int i = 0; i < players.length; i++) {
    final player = players[i];
    print("${i + 1}° - $player");
  }
}

void _viewHistory(List<Match> history) {
  print("\n--- HISTORICO DE PARTIDAS ---"); 

  if(history.isEmpty) {
    print("Nenhuma partida resgistrada ainda.");
  } else {
    for (final match in history) {
      print("- $match");
    }
  }
}

void _registerMatch(List<Player> players, List<Match> history) {
  print("\n---REGISTRAR NOVA PARTIDA ---");

  for (int i = 0; i < players.length; i++) {
    print("${i + 1}: ${players[i].name}");
  }

  Player? player1;
  Player? player2;
  int? winnerChoice;

  while (player1 == null) {
    stdout.write("Digite o NUMERO do primeiro jogador: ");
    final input1 = stdin.readLineSync();
    final index1 = (int.tryParse(input1 ?? "") ?? 0) - 1;
    if (index1 >= 0 && index1 < players.length) {
      player1 = players[index1];
    } else {
      print("Numero invalido. Tente novamente");
    }
  }

  while (player2 == null) {
    stdout.write('Digite o NÚMERO do segundo jogador: ');
    final input2 = stdin.readLineSync();
    final index2 = (int.tryParse(input2 ?? '') ?? 0) - 1;
    if (index2 >= 0 && index2 < players.length) {
      if (players[index2] != player1) {
        player2 = players[index2];
      } else {
        print("Voce nao pode escolher o mesmo jogador duas vezes. Tente novamente.");
      }
    } else {
      print("Numero invalido. Tente novamente.");
    }
  }

  while (winnerChoice == null) {
    stdout.write('Quem venceu? (Digite 1 para ${player1.name} ou 2 para ${player2.name}): ');
    final inputWinner = stdin.readLineSync();
    if (inputWinner == '1' || inputWinner == '2') {
      winnerChoice = int.parse(inputWinner!);
    } else {
      print('Opção inválida. Digite 1 ou 2.');
    }
  }

  final winner = (winnerChoice == 1) ? player1 : player2;
  final loser = (winnerChoice == 1) ? player2 : player1;

  winner.score += 10;
  loser.score -= 5;

  final newMatch = Match(winner: winner, loser: loser, date: DateTime.now());
  history.add(newMatch);

  print('\nPartida registrada com sucesso!');
}

