import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/themes/appcolors.dart';
import 'package:payflow/shared/widgets/set_label_buttons/set_label_buttons_widget.dart';

class BarcodeScannerPage extends StatefulWidget {
  BarcodeScannerPage({Key? key}) : super(key: key);

  @override
  _BarcodeScannerPageState createState() => _BarcodeScannerPageState();
}

class _BarcodeScannerPageState extends State<BarcodeScannerPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: RotatedBox(
        quarterTurns: 1,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text(
              'Escaneie o código de barras do boleto',
              style: TextStyles.buttonBackground,
            ),
            centerTitle: true,
            leading: BackButton(
              color: AppColors.background,
            ),
          ),
          body: Column(
            children: [
              Expanded(child: Container(color: Colors.black.withOpacity(0.6))),
              Expanded(flex: 2, child: Container(color: Colors.transparent)),
              Expanded(child: Container(color: Colors.black.withOpacity(0.6))),
            ],
          ),
          bottomNavigationBar: SetLabelButton(
            primaryLabel: 'Inserir código do boleto',
            primaryOnPressed: () {},
            secundaryLabel: 'Adicionar da galeria',
            secundaryOnPressed: () {},
          ),
        ),
      ),
    );
  }
}
