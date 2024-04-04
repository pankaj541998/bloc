import 'package:bnb_bloc/Business_logic/counter/counter_bloc.dart';
import 'package:bnb_bloc/Business_logic/landing_page_bloc/landing_page_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

List<BottomNavigationBarItem> bottomNavItems = const <BottomNavigationBarItem>[
  BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Home"),
  BottomNavigationBarItem(
      icon: Icon(Icons.favorite_outline), label: "Favourite"),
  BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
  BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: "Cart"),
  BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: "Profile"),
];

const List<Widget> bottomNavScreens = [
  Text("Index 0: Home"),
  Text("Index 1: Favourites"),
  Text("Index 2: Search"),
  Text("Index 3: Cart"),
  Text("Index 4: Profile"),
];

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LandingPageBloc, LandingPageState>(
      builder: (context, state) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BlocBuilder<CounterBloc, CounterState>(builder: (context, state) {
                  return Text(state.counter.toString(),style: const TextStyle(fontSize: 34));
                },),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  ElevatedButton(onPressed: (){
                    context.read<CounterBloc>().add(IncremnetCouter());
                  }, child: const Text("Incremnet")),
                  const SizedBox(width: 20),
                  ElevatedButton(onPressed: (){
                     context.read<CounterBloc>().add(DecremnetCouter());
                  }, child: const Text("Decremnet")),
                ],)
                // Center(
                //   child: bottomNavScreens.elementAt(state.tabIndex),
                // ),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: bottomNavItems,
            currentIndex: state.tabIndex,
            selectedItemColor: Colors.teal,
            unselectedItemColor: Colors.grey,
            onTap: (index) => BlocProvider.of<LandingPageBloc>(context).add(
              TabChanges(tabIndex: index),
            ),
            showUnselectedLabels:true,
          ),
        );
      },
      listener: (context, state) {},
    );
  }
}


