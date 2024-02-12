import 'package:flutter/material.dart';
import 'package:genteel/core/app_export.dart';
import 'package:genteel/widgets/custom_elevated_button.dart';

class ChooseListOneScreen extends StatelessWidget {
  const ChooseListOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    Map<String, bool> wearing = {
      'Cleavage': false,
      'Arms': false,
      'Back': false,
      'Legs': false,
      'Midsection': false,
      'Rear': false,
      'Shoulders': false,
    };
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100, bottom: 50),
              child: Text(
                "What do you show off when wearing clothes.",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: theme.textTheme.headlineSmall!.copyWith(
                  height: 1.20,
                ),
              ),
            ),
            _buildChooseListOneLists(context, wearing),
          ],
        ),
      ),
      bottomNavigationBar: _buildNext(context),
    );
  }

  /// Section Widget
  Widget _buildChooseListOneLists(BuildContext context, Map<String, bool> wearing) => StatefulBuilder(
        builder: (BuildContext context, setState) => Wrap(
            runSpacing: 11,
            spacing: 11,
            children: List.generate(
              wearing.length,
              (index) => RawChip(
                  padding: EdgeInsets.symmetric(
                    horizontal: 17,
                    vertical: 9,
                  ),
                  showCheckmark: false,
                  labelPadding: EdgeInsets.zero,
                  label: Text(
                    wearing.keys.elementAt(index),
                    style: TextStyle(
                      color: wearing.values.elementAt(index) ? Colors.white : Colors.black,
                      fontSize: 13,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  selected: wearing.values.elementAt(index),
                  backgroundColor: Colors.white,
                  selectedColor: appTheme.greenA400,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: wearing.values.elementAt(index) ? appTheme.greenA400 : appTheme.gray700,
                      width: 1.h,
                    ),
                    borderRadius: BorderRadius.circular(
                      18.h,
                    ),
                  ),
                  onSelected: (value) => setState(() => wearing[wearing.keys.elementAt(index)] = value)),
            )),
      );

  /// Section Widget
  Widget _buildNext(BuildContext context) {
    return CustomElevatedButton(
      onPressed: () => Navigator.pushNamedAndRemoveUntil(context, AppRoutes.bottomNavigationScreen, ((route) => false)),
      text: "Next",
      margin: EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 68,
      ),
    );
  }
}
