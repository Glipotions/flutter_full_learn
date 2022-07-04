import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../101/image_learn.dart';

class NoteDemo extends StatelessWidget {
  const NoteDemo({Key? key}) : super(key: key);
  final String _title = 'Create your first note';
  final String _description =
      'The analyzer produces this diagnostic when an invocation of Future.catchError has an argument that is a function whose parameters aren’t compatible with.. ';
  final _createNote = 'Create a Note';
  final _importNotes = 'Import Notes';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Padding(
        padding: PaddingItems.horizontalPadding,
        child: Column(children: [
          PngImage(name: ImageItems().appleBookWithoutPath),
          _TitleWidget(title: _title),
          Padding(
            padding: PaddingItems.verticalPadding,
            child: _SubtitleWidget(title: _description),
          ),
          const Spacer(),
          _createButton(context),
          TextButton(onPressed: () {}, child: Text(_importNotes)),
          const SizedBox(height: ButtonHeights.buttonNormalHeight),
        ]),
      ),
    );
  }

  ElevatedButton _createButton(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        child: SizedBox(
            height: ButtonHeights.buttonNormalHeight,
            child: Center(
                child: Text(
              _createNote,
              style: Theme.of(context).textTheme.headline5,
            ))));
  }
}

class _SubtitleWidget extends StatelessWidget {
  const _SubtitleWidget({
    Key? key,
    required this.title,
    // ignore: unused_element
    this.textAlign = TextAlign.center,
  }) : super(key: key);

  final String title;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      style: Theme.of(context)
          .textTheme
          .subtitle1
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w400),
    );
  }
}

class PaddingItems {
  static const EdgeInsets horizontalPadding =
      EdgeInsets.symmetric(horizontal: 35);
  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 5);
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .headline5
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w800),
    );
  }
}

class ButtonHeights {
  static const double buttonNormalHeight = 45;
}
