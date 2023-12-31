import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_app/bloc/menu_app/cubit/menu_app_cubit.dart';
import 'package:responsive_app/constant/app_sizes.dart';
import 'package:responsive_app/responsive.dart';

class Headers extends StatelessWidget {
  const Headers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          if (!Responsive.isDesktop(context))
            IconButton(
                onPressed: () {
                  context.read<MenuAppCubit>().controlMenu();
                },
                icon: const Icon(Icons.menu)),
          if (!Responsive.isMobile(context))
            const Text(
              'DashBoard',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          if (!Responsive.isMobile(context))
            Spacer(
              flex: Responsive.isDesktop(context) ? 2 : 1,
            ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Search',
                  suffixIcon: InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue,
                      ),
                      child: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  fillColor: Colors.black12,
                  filled: true,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
          gapW10,
          Container(
            padding: const EdgeInsets.symmetric(horizontal: Sizes.p6),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black12,
                border: Border.all(color: Colors.white10, width: 1)),
            child: Center(
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/model.jpg'),
                  ),
                  if (!Responsive.isMobile(context)) const Text('Model Alena'),
                  const Icon(Icons.arrow_downward_outlined)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
