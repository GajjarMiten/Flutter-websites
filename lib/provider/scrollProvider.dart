import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class ScrollProvider with ChangeNotifier {
  ScrollController _controller = ScrollController();

  ScrollController get controller => _controller;

  void nextPage() {
    if (_controller.offset + 900 < _controller.position.maxScrollExtent + 600)
      _controller.animateTo(_controller.offset + 900,
          duration: Duration(milliseconds: 900), curve: Curves.easeOutQuart);
    notifyListeners();
  }

  void previousPage() {
    if (_controller.offset - 900 > _controller.position.minScrollExtent - 600)
      _controller.animateTo(_controller.offset - 900,
          duration: Duration(milliseconds: 900), curve: Curves.easeOutQuart);
    notifyListeners();
  }
}
