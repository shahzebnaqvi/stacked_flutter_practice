import 'package:flutter/material.dart';
import 'package:stacked_flutter_practice/view/home/home_view_model.dart';
import 'package:stacked/stacked.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      onModelReady: (viewModel) => viewModel.incrementCounter(),
      builder: (context, viewModel, child) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            viewModel.incrementCounter();
            // viewModel.updateTitle();
          },
        ),
        body: Center(
          child: Text("${viewModel.count}"),
        ),
      ),
    );
  }
}
