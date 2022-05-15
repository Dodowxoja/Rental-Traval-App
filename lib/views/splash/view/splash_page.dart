import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rental_travel_app/core/components/text_style.dart';
import 'package:rental_travel_app/core/constants/colors/color_const.dart';
import 'package:rental_travel_app/views/splash/cubit/splash_cubit.dart';
import 'package:rental_travel_app/views/splash/state/splash_state.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashCubit(),
      child: BlocConsumer<SplashCubit, SplashState>(
        listener: (context, state) {},
        builder: (context, state) => myScaffold(context),
      ),
    );
  }

  Scaffold myScaffold(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(38),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'lets_find'.tr(),
              style: TextStyleComp.myTextStyle(
                size: 40.0,
                fontWeight: FontWeight.w500,
                color: ColorsConst.color212D3D,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(MediaQuery.of(context).size.width, 55),
                primary: ColorsConst.color01957D,
              ),
              child: Text(
                'get_started'.tr(),
                style: TextStyleComp.myTextStyle(
                  size: 18.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/my_home');
              },
            )
          ],
        ),
      ),
    );
  }
}
/* ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(MediaQuery.of(context).size.width, 55),
                primary: Colors.amber,
              ),
              child: Text('get_started'.tr()),
              onPressed: () {
                context
                    .read<SplashCubit>()
                    .language('uz', context.locale = const Locale('uz', "UZ"));
              },
            ), */