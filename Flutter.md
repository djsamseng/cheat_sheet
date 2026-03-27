
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

- Expanded:
