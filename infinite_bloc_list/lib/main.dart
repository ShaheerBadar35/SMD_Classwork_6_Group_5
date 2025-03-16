import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:infinite_bloc_list/bloc/post_bloc/bloc/post_bloc.dart';
import 'widgets/post_list.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Infinite List',
      home: BlocProvider(
        create: (context) =>
            PostBloc(httpClient: http.Client())..add(PostFetched()),
        child: Scaffold(
          appBar: AppBar(title: Text('Infinite List')),
          body: PostList(),
        ),
      ),
    );
  }
}
