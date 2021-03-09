import 'package:flutter/material.dart';
import 'package:flowbuilder_test/navigation/cubit/navigation_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flow_builder/flow_builder.dart';

class NavBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
      builder: (context, state) {
        return NavBarView(state: state);
      },
    );
  }
}

class NavBarView extends StatefulWidget {
  NavBarView({
    required this.state,
  });

  final NavigationState state;

  @override
  _NavBarViewState createState() => _NavBarViewState();
}

class _NavBarViewState extends State<NavBarView> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        IconButton(
          color:
              widget.state == NavigationState.home ? Colors.red : Colors.black,
          icon: const Icon(Icons.home_outlined),
          onPressed: () => {
            context.read<NavigationCubit>().home(),
          },
        ),
        IconButton(
          color:
              widget.state == NavigationState.page1 ? Colors.red : Colors.black,
          icon: const Icon(Icons.access_alarm_outlined),
          onPressed: () => {
            context.read<NavigationCubit>().page1(),
          },
        ),
        IconButton(
          color:
              widget.state == NavigationState.page2 ? Colors.red : Colors.black,
          icon: const Icon(Icons.ac_unit_outlined),
          onPressed: () => {
            context.read<NavigationCubit>().page2(),
          },
        )
      ],
    );
  }
}
