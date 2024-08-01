import '../../resources/all_imports.dart';

class TableView extends StatelessWidget {
  const TableView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Table(
          border: TableBorder.all(),
          columnWidths: const <int, TableColumnWidth>{
            0: IntrinsicColumnWidth(),
          },
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: const <TableRow>[
            TableRow(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              children: <Widget>[
                TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('ID'),
                  ),
                ),
                TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Name'),
                  ),
                ),
                TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Email'),
                  ),
                ),
              ],
            ),
            TableRow(
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              children: <Widget>[
                TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('1'),
                  ),
                ),
                TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Name 1'),
                  ),
                ),
                TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('example1@example.com'),
                  ),
                ),
              ],
            ),
            TableRow(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              children: <Widget>[
                TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('2'),
                  ),
                ),
                TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Name 2'),
                  ),
                ),
                TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('example2@example.com'),
                  ),
                ),
              ],
            ),
            TableRow(
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              children: <Widget>[
                TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('3'),
                  ),
                ),
                TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Name 3'),
                  ),
                ),
                TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('example3@example.com'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
