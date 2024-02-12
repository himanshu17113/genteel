import 'package:flutter/material.dart';
import 'package:genteel/core/app_export.dart';
import 'package:genteel/widgets/custom_elevated_button.dart';

class ChooseListScreen extends StatelessWidget {
  const ChooseListScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    //  List<String>
    Map<String, bool> reasons = {
      'Browse a curated shop': false,
      'Get seasonal looks': false,
      'A fun surprise': false,
      'Having an Al help me shop': false,
      'Inspiration': false,
      'Unique pieces': false,
      'Hopeful': false,
      'Transform my style': false,
      'Do my shopping for me': false,
    };
    return SafeArea(
      child: Scaffold(
        
        body: Padding(
       
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 35),
          child: Column(
            children: [
              Text(
                "First, what are the reasons you’re excited to try Genteel.",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: theme.textTheme.headlineSmall!.copyWith(
                  height: 1.20,
                ),
              ),
              SizedBox(height: 27.v),
              StatefulBuilder(
                builder: (BuildContext context, setState) => Wrap(
                    runSpacing: 11,
                    spacing: 11,
                    children: List.generate(
                      reasons.length,
                      (index) => RawChip(
                          padding: EdgeInsets.symmetric(
                            horizontal: 17,
                            vertical: 9,
                          ),
                          showCheckmark: false,
                          labelPadding: EdgeInsets.zero,
                          label: Text(
                            reasons.keys.elementAt(index),
                            style: TextStyle(
                              color: reasons.values.elementAt(index) ? Colors.white : Colors.black,
                              fontSize: 13,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          selected: reasons.values.elementAt(index),
                          backgroundColor: Colors.white,
                          selectedColor: appTheme.greenA400,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: reasons.values.elementAt(index) ? appTheme.greenA400 : appTheme.gray700,
                              width: 1.h,
                            ),
                            borderRadius: BorderRadius.circular(
                              18.h,
                            ),
                          ),
                          onSelected: (value) => setState(() => reasons[reasons.keys.elementAt(index)] = value)),
                    )),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildNextButton(context),
      ),
    );
  }

  /// Section Widget

  /// Section Widget
  Widget _buildNextButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Next",
      onPressed: () => Navigator.popAndPushNamed(context, AppRoutes.chooseListOneScreen),
      margin: EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 68,
      ),
    );
  }
}
