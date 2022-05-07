import 'package:advicer/application/advicer/advicer_bloc.dart';
import 'package:advicer/presetation/advicer/widgets/advice_field.dart';
import 'package:advicer/presetation/advicer/widgets/custom_button.dart';
import 'package:advicer/presetation/advicer/widgets/error.dart';
import 'package:advicer/presetation/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdvicerPage extends StatelessWidget {
  const AdvicerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Advicer", style: themeData.textTheme.headline1),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: Column(children: [
            Expanded(
              child: Center(
                  child: BlocBuilder<AdvicerNewBloc, AdvicerState>(
                      bloc: BlocProvider.of<AdvicerNewBloc>(context),
                      // ..add(AdviceRequestedEvent()),
                      builder: (context, adviceState) {
                        if (adviceState is AdvicerInitial) {
                          return Text("Your Advice is waiting for you",
                              style: themeData.textTheme.headline1);
                        } else if (adviceState is AdvicerStadeLoading) {
                          return CircularProgressIndicator(
                            color: themeData.colorScheme.secondary,
                          );
                        } else if (adviceState is AdvicerStadeLoaded) {
                          return AdviceField(
                            advice: adviceState.advice,
                          );
                        } else if (adviceState is AdvicerStateError) {
                          return ErrorMessage(
                            message: adviceState.message,
                          );
                        }
                        return Placeholder();
                      })
                  //ErrorMessage()
                  //AdviceField(
                  //advice: "test dfbabr egawe gew ARWEG AWRHG RWH ERHE RHT T JT EDTRY",
                  //) /*Text("Your Advice is waiting for you",
                  //      style: themeData.textTheme.headline1),*/
                  ),
            ),
            SizedBox(
              height: 200,
              child: Center(
                child: CustomButton(),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
