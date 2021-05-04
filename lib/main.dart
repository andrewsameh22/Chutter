import 'package:flutter/material.dart';
import 'package:flutter_chess_board/flutter_chess_board.dart';

void main() => runApp(Chutter());

class Chutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Chutter",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown.shade500,
        title: Text("Chutter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ChessBoard(
              onMove: (move) {
                print(move);
              },
              onCheckMate: (color) {
                print('$color wins');
              },
              // onCheck: onCheck,
              onDraw: () {
                print('draw');
              },
              size: MediaQuery.of(context).size.width,
              enableUserMoves: true,
              boardType: BoardType.brown,
            )
          ],
        ),
      ),
    );
  }
}
