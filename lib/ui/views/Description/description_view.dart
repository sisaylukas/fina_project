import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_exa/ui/views/Description/decription_view_model.dart';

class DescriptionView extends StatelessWidget {
  final Map<String, dynamic> companyData;

  const DescriptionView({required this.companyData, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DescriptionViewModel>.reactive(
      viewModelBuilder: () => DescriptionViewModel(),
      builder: (context, model, index) => Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                child: Text(companyData['department'][0]),
              ),
              IconButton(
                  icon: Icon(Icons.arrow_back_sharp),
                  onPressed: model.onBackTaP)
            ],
          ),
        ),
      ),
    );
  }
}
