part of 'player_cubit.dart';

  List<Map<String, String>> allPlayers = [
    {'name': 'John Doe', 'country': 'USA'},
    {'name': 'Liam Smith', 'country': 'Canada'},
    {'name': 'Mia Wong', 'country': 'China'},
    {'name': 'Arjun Patel', 'country': 'India'},
    {'name': 'Sophia Müller', 'country': 'Germany'},
    {'name': 'Lucas Silva', 'country': 'Brazil'},
    {'name': 'Emma Rossi', 'country': 'Italy'},
    {'name': 'Noah Kim', 'country': 'South Korea'},
    {'name': 'Olivia Martínez', 'country': 'Spain'},
    {'name': 'William Tanaka', 'country': 'Japan'},
  ];
abstract class PlayerState {}

final class PlayerInitialState extends PlayerState {
final List<Map<String, String>> players;

  PlayerInitialState({required this.players});

}

final class PlayerFilterdState extends PlayerState {
final List<Map<String, String>> filterdplayers;

  PlayerFilterdState({required this.filterdplayers});

}