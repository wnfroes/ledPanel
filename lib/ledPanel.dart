import 'package:flutter/material.dart';

Map<String, List<String>> numeros = {
  "0": [
    "00111100",
    "01000010",
    "01000110",
    "01001010",
    "01010010",
    "01100010",
    "01000010",
    "00111100",
  ],
  "1": [
    "00001000",
    "00011000",
    "00101000",
    "00001000",
    "00001000",
    "00001000",
    "00001000",
    "00111110"
  ],
  "2": [
    "00111100",
    "01000010",
    "00000010",
    "00000100",
    "00001000",
    "00010000",
    "00100000",
    "01111110",
  ],
  "3": [
    "00111100",
    "01000010",
    "00000010",
    "00011100",
    "00000010",
    "00000010",
    "01000010",
    "00111100",
  ],
  "4": [
    "00000100",
    "00001100",
    "00010100",
    "00100100",
    "01000100",
    "01111110",
    "00000100",
    "00000100",
  ],
  "5": [
    "01111110",
    "01000000",
    "01000000",
    "01111100",
    "00000010",
    "00000010",
    "01000010",
    "00111100",
  ],
  "6": [
    "00111100",
    "01000000",
    "01000000",
    "01111100",
    "01000010",
    "01000010",
    "01000010",
    "00111100",
  ],
  "7": [
    "01111110",
    "00000010",
    "00000010",
    "00000100",
    "00001000",
    "00010000",
    "00100000",
    "01000000",
  ],
  "8": [
    "00111100",
    "01000010",
    "01000010",
    "00111100",
    "01000010",
    "01000010",
    "01000010",
    "00111100",
  ],
  "9": [
    "00111100",
    "01000010",
    "01000010",
    "00111110",
    "00000100",
    "00001000",
    "00010000",
    "00100000",
  ],
};

class LedPanel extends StatefulWidget {
  final String number;

  LedPanel(this.number);

  @override
  _LedPanelState createState() => _LedPanelState();
}

class _LedPanelState extends State<LedPanel> {
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Linha(numeros[widget.number][0]),
          Linha(numeros[widget.number][1]),
          Linha(numeros[widget.number][2]),
          Linha(numeros[widget.number][3]),
          Linha(numeros[widget.number][4]),
          Linha(numeros[widget.number][5]),
          Linha(numeros[widget.number][6]),
          Linha(numeros[widget.number][7]),
        ]);
  }
}

class Linha extends StatelessWidget {
  final String number;

  Linha(this.number);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Ponto(number[0]),
        Ponto(number[1]),
        Ponto(number[2]),
        Ponto(number[3]),
        Ponto(number[4]),
        Ponto(number[5]),
        Ponto(number[6]),
        Ponto(number[7]),
      ],
    );
  }
}

class Ponto extends StatelessWidget {
  final String number;

  Ponto(this.number);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 1.0, bottom: 1.0),
      child: Container(
        height: 6,
        width: 4,
        decoration: BoxDecoration(
          color: number == "0" ? Colors.black38 : Colors.red[900],
          border: Border.all(
            color: Colors.black38,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
