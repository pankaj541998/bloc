import 'dart:developer';

import 'package:bnb_bloc/Business_logic/switch_animation/switch_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SwicthScreens extends StatefulWidget {
  const SwicthScreens({super.key});

  @override
  State<SwicthScreens> createState() => _SwicthScreensState();
}

class _SwicthScreensState extends State<SwicthScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Swicth and animation",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BlocBuilder<SwicthBloc, SwicthState>(
              buildWhen: (previous, current) =>  previous.isSwitched != current.isSwitched,
              builder: (context, state) {
                log("switch build");
                return Switch(
                  value: state.isSwitched,
                  onChanged: (e) {
                    context.read<SwicthBloc>().add(EnableOrDisableSwicth());
                  },
                );
              },
            ),
            const SizedBox(height: 50),
            

            BlocBuilder<SwicthBloc, SwicthState>(
              buildWhen: (previous, current) => previous.sliderValue != current.sliderValue,
              builder: (context, state) {
              log("container build");
              return Column(
                children: [
                  Container(
              width: 350,
              height: 200,
              decoration: BoxDecoration(color: Colors.teal.withOpacity(state.sliderValue)),
            ),
                  Slider(
                  value: state.sliderValue,
                  onChanged: (e) {
                    // e = state.sliderValue;
                    context.read<SwicthBloc>().add(SliderEvets(sliderVal: e));
                  },
                  activeColor: Colors.teal,
                  inactiveColor: Colors.redAccent,
                              ),
                ],
              );             
            },)
          ],
        ),
      ),
    );
  }
}
