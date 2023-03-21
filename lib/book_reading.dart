// dependencies:
// flutter:
// sdk: flutter
// flutter_bloc: ^7.0.1
// equatable: ^2.0.3
// cached_network_image: ^3.0.0
// flutter_html: ^2.1.5
// path_provider: ^2.0.5
// http: ^0.13.3
// flutter_cache_manager: ^3.2.0
//
//
// dependencies:
// flutter:
// sdk: flutter
// flutter_bloc: ^7.0.1
// equatable: ^2.0.3
// cached_network_image: ^3.0.0
// flutter_html: ^2.1.5
// path_provider: ^2.0.5
// http: ^0.13.3
// flutter_cache_manager: ^3.2.0
//
//
//
// Create a new file called book_repository.dart to handle fetching the book data:
//
//
// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:path_provider/path_provider.dart';
// import 'package:flutter_cache_manager/flutter_cache_manager.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:equatable/equatable.dart';
// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter_html/flutter_html.dart';
//
// import 'book.dart';
//
// class BookRepository {
//   static const _baseUrl = 'https://www.example.com/books/';
//
//   Future<List<Book>> getBooks() async {
//     final response = await http.get(Uri.parse(_baseUrl));
//
//     if (response.statusCode == 200) {
//       final List<dynamic> rawBooks = json.decode(response.body);
//
//       return rawBooks.map((book) {
//         return Book(
//           title: book['title'],
//           author: book['author'],
//           coverImageUrl: book['coverImageUrl'],
//           bookUrl: book['bookUrl'],
//         );
//       }).toList();
//     } else {
//       throw Exception('Failed to load books');
//     }
//   }
//
//   Future<File> getBookFile(Book book) async {
//     final appDocDir = await getApplicationDocumentsDirectory();
//     final filename = '${book.title.replaceAll(' ', '_')}.epub';
//     final bookFile = '${appDocDir.path}/$filename';
//     final cachedBookFile = await DefaultCacheManager().getSingleFile(book.bookUrl);
//
//     if (cachedBookFile.existsSync()) {
//       cachedBookFile.copySync(bookFile);
//     } else {
//       final response = await http.get(Uri.parse(book.bookUrl));
//       if (response.statusCode == 200) {
//         File(bookFile).writeAsBytesSync(response.bodyBytes);
//       } else {
//         throw Exception('Failed to load book');
//       }
//     }
//
//     return File(bookFile);
//   }
// }
//
// Create a new file called book_bloc.dart to handle the business logic:
// import 'dart:async';
// import 'dart:io';
// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';
// import 'package:flutter/material.dart';
//
// import 'book.dart';
// import 'book_repository.dart';
//
// part 'book_event.dart';
// part 'book_state.dart';
//
// class BookBloc extends Bloc<BookEvent, BookState> {
//   final BookRepository bookRepository;
//
//   BookBloc({required this.bookRepository}) : super(BookInitial());
//
//   @override
//   Stream<BookState> mapEventToState(BookEvent event) async* {
//     if (event is FetchBooks) {
//       yield BookLoading();
