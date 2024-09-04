import 'package:bloc_cubit_flutter_training/cubit/player_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchList extends StatelessWidget {
  const SearchList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (value) {
                context.read<PlayerCubit>().filterPlayers(value);
              },
              decoration: const InputDecoration(
                  labelText: 'Search', suffixIcon: Icon(Icons.search)),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(child: BlocBuilder<PlayerCubit, PlayerState>(
              builder: (context, state) {
                if (state is PlayerInitialState) {
                  return buildPlayerList(state.players);
                } else if (state is PlayerFilterdState) {
                  return buildPlayerList(state.filterdplayers);
                }
                return Container();
              },
            ))
          ],
        ),
      ),
    );
  }

  Widget buildPlayerList(List<Map<String, dynamic>> players) {
    return ListView.builder(
      itemCount: players.length,
      itemBuilder: (context, index) {
        final player = players[index];
        return ListTile(
          title: Text(player['name']),
          subtitle: Text(player['country']),
        );
      },
    );
  }
}
