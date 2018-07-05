import 'package:flutter/material.dart';
import './expenses_page.dart';
import './add_expense_page.dart';
import './utils.dart';

class App extends StatelessWidget {
    final ThemeData _theme = new ThemeData(
        primarySwatch: Colors.indigo,
    );

    @override
    Widget build(BuildContext context) => new MaterialApp(
        title: 'My expenses',
        theme: _theme,
        home: new ExpensesPage(),
        routes: _getRoutes(context),
    );

    Map<String, WidgetBuilder> _getRoutes(BuildContext context) => {
        Routes.EXPENSES_PAGE: (context) => new ExpensesPage(),
        Routes.ADD_EXPENSE_PAGE: (context) => new AddExpensePage(),
    };
}
