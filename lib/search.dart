import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final List<String> _items = [    'Apple',    'Banana',    'Cherry',    'Durian',    'Elderberry',    'Fig',    'Grape',    'Honeydew',    'Kiwi',    'Lemon',    'Mango',    'Nectarine',    'Orange',    'Pineapple',    'Quince',    'Raspberry',    'Strawberry',    'Tangerine',    'Ugli fruit',    'Watermelon',    'Xigua',    'Yellow watermelon',    'Zucchini'  ];

  final TextEditingController _searchController = TextEditingController();

  final ScrollController _scrollController = ScrollController();

  bool _showResults = false;

  List<String> _searchResults = [];

  void _onTextChanged(String value) {
    setState(() {
      _searchResults = _items.where((item) => item.toLowerCase().contains(value.toLowerCase())).toList();
      _showResults = _searchResults.isNotEmpty;
      if (_showResults) {
        _scrollController.animateTo(
          0.0,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              onChanged: _onTextChanged,
              decoration: const InputDecoration(
                hintText: 'Search',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Expanded(
            child: AnimatedOpacity(
              opacity: _showResults ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 300),
              child: ListView.builder(
                controller: _scrollController,
                itemCount: _searchResults.length,
                itemBuilder: (BuildContext context, int index) {
                  final String item = _searchResults[index];
                  return ListTile(
                    title: Text(item),
                    onTap: () {
                      // Do something with the selected item
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
