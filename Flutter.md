
```dart
class MyWidget extends StatelessWidget {
  const MyWidget({ super.key })

  @override
  Widget build(BuildContext context) {
    return Column( // Ask children, given constraints, how much size do you want?
      children: [
        Text("Top"), // Tells parent I want 20 pixels
        // Expanded, Flexible, SizedBox
        Expanded( // Required because ListView requests infinite size
          child: ListView(
            children: [Text("Expands to fill available space")]
          )
        )
      ]
    )
  }
}
```

```dart
class MyFocus extends StatelessWidget {
  const MyFocus({ super.key })

  final FocusNode _focusNode = FocusNode()

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          focusNode: _focusNode
        ),
        IconButton(
          icon: Icon(Icons.arrow_circle_up),
          onPressed: () {
            _focusNode.requestFocus();
          }
        )
      ]
    )
  }
}
```

```dart
class Game extends ChangeNotifier {
  // Const can't change
  // Final can change but can't point to something else
  final List<String> guesses = [];
  void add(String val) {
    guesses.add(val);
    notifyListeners();
  }
}

class GamePage extends StatefulWidget {
  GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  final Game _game = Game();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (var guess in _game.guesses)
          Text(guess),
        TextButton(onPressed: () {
          setState(() {
            _game.add("New")
          })
        })
      ]
    )
  }
}
```

- Expanded:
