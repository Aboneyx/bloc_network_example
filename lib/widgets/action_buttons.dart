import 'package:bloc_network_example/bloc/user_bloc.dart';
import 'package:bloc_network_example/bloc/user_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ActionButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final UserBloc userBloc = BlocProvider.of<UserBloc>(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color?>(Colors.green),
          ),
          child: const Text('Load'),
          onPressed: () {
            userBloc.add(UserLoadEvent());
          },
        ),
        const SizedBox(width: 8.0),
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color?>(Colors.red),
          ),
          child: const Text('Clear'),
          onPressed: () {
            userBloc.add(UserClearEvent());
          },
        ),
      ],
    );
  }
}