
- `vi ~/.android/avd/Medium_Phone.avd/config.ini`
```bash
hw.gpu.enabled=yes
hw.gpu.mode=auto # host to force GPU
```

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

class GamePageStateless extends StatelessWidget {
  const GamePageStateless({
    super.key,
    required this.game
  })
  final Game game

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(listenable: this.game, builder: (context, child) {
      return Column(
        children: [
          for (var guess in this.game.guesses)
            Text(guess),
          TextButton(onPressed: () {
            this.game.add("New")
          })
        ]
      )
    })
  }
}

// Immutable
class GamePage extends StatefulWidget {
  GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

// Mutable
class _GamePageState extends State<GamePage> {
  final List<String> guesses = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (var guess in guesses)
          Text(guess),
        TextButton(onPressed: () {
          setState(() {
            guesses.add("New")
          })
        })
      ]
    )
  }
}


```

- Expanded:
