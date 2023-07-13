# Atomic Architecture for Presentation Layer

## What?

<b> We’re not creating pages, we’re creating systems of components. </b>

It's a way to organize our widgets in a way that we can reuse them, and is not huge chunk of build method.


## Why?

- Soon we will have another app where we might want to resuse some of the already created widgets. 
- We all have seen instances of code where we use helper methods which results in huge build method due to which it rebuilds everything on every state change. This affects performance, we should use small widgets instead of helper methods. Following atomic architecture will help us keep our widgets separated into different components.
- It makes widget testing easier.

## How?

The following is the way we can organize our widgets in atomic architecture.

### Tokens
Tokens are the smallest part of the atomic UI. They are similar to variables that we use throughout our application to maintain consistency in UI, such as colors and fonts. 

For example:
```dart
class MyTokensColors {
  static const Color bloodRed = const Color(0xFF880808);
  static const Color desertSand = const Color(0xFFEDCBB1);
  static const Color spaceCadet = const Color(0xFF2B2D42);
  static const Color darkCyan = const Color(0xFF55868C);
  static const Color viridian = const Color(0xFF5B9279);
}
```
Tokens are used to build our foundations.
### Foundations
Foundations use the values defined in our tokens to establish a consistent base for our UI. They are used throughout the application to ensure consistency in UI.

For example:
```dart
class FoundationColors {
  static const Color appBarBackground = MyTokensColors.spaceCadet;
  static const Color cardBackground = MyTokensColors.viridian;
  static const Color textPrimary = MyTokensColors.desertSand;
  static const Color accent = MyTokensColors.bloodRed;
}
```

### Atoms
Atoms are the most basic building blocks of the UI. These could be buttons, inputs, text, icons, etc. They are not usually usable on their own.

For example:
```dart
class DerivTextField extends StatelessWidget {
  final Function(String)? onChanged;
  const DerivTextField({super.key, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Search",
        hintStyle: FoundationStyle.appBarHintTitle,
        border: InputBorder.none,
      ),
      style: FoundationStyle.appBarTextStyle,
      cursorColor: FoundationColors.textPrimary,
      onChanged: onChanged,
    );
  }
}

```

### Molecules
Molecules are groups of atoms bonded together and are the smallest fundamental units of a compound. These molecules take on their own properties and serve as backbone of our actions.

For example:
```dart
class DerivAppBar extends StatelessWidget {
  final Function(String) onChanged;
  const DerivAppBar({super.key, required this.onChanged});
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
            backgroundColor: FoundationColors.appBarBackground,
            title: DerivTextField(
              onChanged: onChanged,
            ),
          );
  }
}
```


### Organisms
Organisms are relatively complex UI components composed of groups of molecules and/or atoms and/or other organisms. These organisms form distinct sections of an interface.

For example:
```dart
class DerivSliverList extends StatelessWidget {
  final List<String> items;
  const DerivSliverList({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return DerivSlidableListItem(items[index]);
              },
              childCount: items.length,
            ),
          );
  }
}
```

### Templates
Templates are page-level objects that place components into a layout and articulate the UI’s underlying content structure.

For example:
```dart
class SearchableListTemplate extends StatelessWidget {
  final Function(String) onSearchValueChanged;
  final List<String> items;
  final List<Widget> extraItems;
  const SearchableListTemplate({super.key, required this.onSearchValueChanged, required this.items, this.extraItems = const []});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          DerivAppBar(
            onChanged: onSearchValueChanged,
          ),
          DerivSliverList(items: items),
          ...extraItems
        ],
      ),
    );
  }
}
```

### Pages
Pages are specific instances of templates that show what a UI looks like with real representative content in place.

For example:
```dart
class _HomePageState extends State<HomePage> {
  List<String> items = [
    "Google",
    "Facebook",
    "Instagram",
    "Twitter",
    "LinkedIn",
    "Snapchat",
    "TikTok",
    "Pinterest",
    "Reddit",
    "Tumblr",
    "Flickr",
    "Quora",
    "Vimeo",
    "Vine",
    "Periscope",
  ];
  String search = "";

  @override
  Widget build(BuildContext context) {
    List<String> filteredItems = items
        .where((element) => element.toLowerCase().contains(search))
        .toList();

    return SearchableListTemplate(
        onSearchValueChanged: (value) {
          setState(() {
            search = value;
          });
        },
        items: filteredItems,
        extraItems: const [
          DerivSliverToBoxAdapterContainer(
            child: DerivColoredContainer(
              color: FoundationColors.accent,
              child: DerivLargeText('Accent Container'),
            ),
          ),
          DerivSliverToBoxAdapterContainer(
            child: DerivColoredContainer(
              color: FoundationColors.cardBackground,
              child: DerivMediumText('Accent Secondary Container'),
            ),
          )
        ],
        );
  }
}
```