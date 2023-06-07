import 'package:flutter/material.dart';

import '../services/init_services.dart';
import '../services/media_query.dart';

class AuthenticationToggle extends StatefulWidget {
  final List<dynamic> states;
  final List<String> titles;
  final int activeState;
  final Function onClickState;

  const AuthenticationToggle({
    super.key,
    required this.states,
    required this.activeState,
    required this.onClickState,
    required this.titles,
  });

  @override
  State<AuthenticationToggle> createState() => _AuthenticationToggleState();
}

class _AuthenticationToggleState extends State<AuthenticationToggle> {
  @override
  Widget build(BuildContext context) {
    final w = locator.get<ResponsiveDesign>().getWidth(context);

    return Container(
        width: w,
        height: 50,
        decoration: BoxDecoration(
            color: Colors.black12, borderRadius: BorderRadius.circular(25)),
        child: Stack(
          alignment: AlignmentDirectional.center,
          fit: StackFit.expand,
          children: [
            Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: List.generate(
                  widget.states.length,
                  (index) => GestureDetector(
                    onTap: () {
                      widget.onClickState(index);
                    },
                    child: Container(
                        width: w / widget.states.length,
                        alignment: Alignment.center,
                        child: Text(widget.titles[index])),
                  ),
                )),
            AnimatedPositioned(
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeInOutSine,
                left: widget.activeState * w / widget.states.length,
                child: Container(
                    height: 50,
                    width: w / widget.states.length,
                    decoration: BoxDecoration(
                        color: Colors.blue.shade600,
                        borderRadius: BorderRadius.circular(25)),
                    alignment: Alignment.center,
                    child: Text(widget.titles[widget.activeState]))),
          ],
        ));
  }
}

class Toggle extends StatelessWidget {
  const Toggle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(20)),
      child: const Text('LOGIN'),
    );
  }
}
