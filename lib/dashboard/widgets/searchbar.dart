import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(
        color: Color(0xff537366),
      ),
      cursorColor: const Color(0xff537366),
      decoration: InputDecoration(
        fillColor: Colors.grey.withOpacity(.1),
        hintText: 'Find Flats, Rooms, and More...',
        hintStyle: const TextStyle(color: Colors.grey),
        prefixIcon: const Icon(
          Icons.search,
          color: Colors.deepOrangeAccent,
        ),
        suffixIcon: IconButton(
          icon: Container(
            color: Colors.deepOrangeAccent,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.filter_alt_outlined, color: Colors.white),
            ),
          ),
          onPressed: () {},
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(0),
        ),
      ),
    );
  }
}
