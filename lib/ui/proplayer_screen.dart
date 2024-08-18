import 'package:bloc_poc/bloc/dota_bloc/dota_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProplayerScreen extends StatefulWidget {
  const ProplayerScreen({super.key});

  @override
  State<ProplayerScreen> createState() => _ProplayerScreenState();
}

class _ProplayerScreenState extends State<ProplayerScreen> {
  @override
  void initState() {
    context.read<DotaBloc>().add(GetProPlayerEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('First Screen')),
      body: BlocConsumer<DotaBloc, DotaState>(
        listener: (context, state) {
          if (state.status == DotaStateStatus.isLoading) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Loading...'),
              ),
            );
          } else if (state.status == DotaStateStatus.isLoaded) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Data loaded'),
              ),
            );
          } else if (state.status == DotaStateStatus.isFailed) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Failed to fetch data'),
              ),
            );
          }
        },
        builder: ((context, state) {
          return ListView.builder(
            itemCount: state.proPlayers.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(state.proPlayers[index].name ?? ''),
                subtitle: Text(state.proPlayers[index].teamName ?? ''),
              );
            },
          );
        }),
      ),
    );
  }
}
