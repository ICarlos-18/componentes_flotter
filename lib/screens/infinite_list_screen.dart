import 'package:flutter/material.dart';

class InfiniteListScreenState extends StatefulWidget {
  const InfiniteListScreenState({super.key});

  @override
  State<InfiniteListScreenState> createState() => InfiniteListScreenStateState();
}

class InfiniteListScreenStateState extends State<InfiniteListScreenState> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Lista infinita'),
    );
  }
}