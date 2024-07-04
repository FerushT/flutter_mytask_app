import 'package:flutter/material.dart';
import 'package:flutter_mytask_app/screens/GestureDetector.dart';
import 'package:flutter_mytask_app/screens/column_and_row_example.dart';
import 'package:flutter_mytask_app/screens/dialog.dart';
import 'package:flutter_mytask_app/screens/einfache_bildergalerie.dart';
import 'package:flutter_mytask_app/screens/einfaches_quadrat.dart';
import 'package:flutter_mytask_app/screens/expanded_and_Card.dart';
import 'package:flutter_mytask_app/screens/expandet_widget.dart';
import 'package:flutter_mytask_app/screens/geteilte_liste_mit_dividern.dart';
import 'package:flutter_mytask_app/screens/icon_mit_beschriftung.dart';
import 'package:flutter_mytask_app/screens/kombination.dart';
import 'package:flutter_mytask_app/screens/layout_and_row_and_column.dart';
import 'package:flutter_mytask_app/screens/list_view.dart';
import 'package:flutter_mytask_app/screens/list_view_listbuilder.dart';
import 'package:flutter_mytask_app/screens/list_view_listbuilder_class.dart';
import 'package:flutter_mytask_app/screens/list_view_listbuilder_class_shoppingBag.dart';
import 'package:flutter_mytask_app/screens/list_view_listtile.dart';
import 'package:flutter_mytask_app/screens/showModalBottomSheet.dart';
import 'package:flutter_mytask_app/screens/showModalBottomSheetPersistent.dart';
import 'package:flutter_mytask_app/screens/snackbar_and_Dialog.dart';

// import 'package:flutter/material.dart';

/* ADD BACK BUTTON + IMPORT PACKAGE + ADD TO LIST
        appBar: AppBar(
          title: const Text("..."),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
*/

Map<String, Widget> tasks = {
  'Column And Row Example': ColumnAndRowExample(),
  "Einfaches Quadrat": EinfachesQuadrat(),
  "List View Exercise": ListViewExercise(),
  "List View Exercise ListTile": ListViewExerciseListTile(),
  "List View Exercise List Builder": ListViewExerciseListBuilder(),
  "List View Exercise List Builder Class": ListViewExerciseListBuilderClass(),
  "Einfache Bildergalerie": EinfacheBildergalerie(),
  "Geteilte Liste mit Dividern": GeteilteListeMitDividern(),
  "Icon mit Beschriftung": IconMitBeschriftung(),
  "Layout and Row and Column": LayoutAndRowAndColumn(),
  "Product Repository": ListViewExerciseListBuilderClass(),
  "Warenkorb": ListViewExerciseListBuilderClassShoppingBag(),
  "Expandet Widget": ExpandetWidget(),
  "Dialog": HinweisDialog(),
  "Expanded and Card": ExpandedAndCard(),
  "Snackbar and Dialog": SnackbarAndDialog(),
  "Kombination": Kombination(),
  "BigRed": BigRed(),
  "ModalesBottom": ModalesBottom(),
  "PersistentBottom": PersistentBottom(),
  "leer20": Placeholder(),
  "leer21": Placeholder(),
  "leer22": Placeholder(),
  "leer23": Placeholder(),
  "leer24": Placeholder(),
  "leer25": Placeholder(),
  "leer26": Placeholder(),
  "leer27": Placeholder(),
  "leer28": Placeholder(),
  "leer29": Placeholder(),
};

void main() {
  runApp(const HomeScreen());
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Aufgaben'),
              backgroundColor: Colors.amber,
            ),
            body: Center(
              child: SizedBox(
                width: 340,
                height: 650,
                child: GridView.builder(
                    itemCount: tasks.keys.length,
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisExtent: 80,
                            crossAxisSpacing: 30,
                            mainAxisSpacing: 20),
                    itemBuilder: (BuildContext context, int index) {
                      String title = tasks.keys.elementAt(index);
                      Widget pageWidget = tasks.values.elementAt(index);
                      return ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => pageWidget),
                          );
                        },
                        style: ButtonStyle(
                          elevation: const WidgetStatePropertyAll(7),
                          padding:
                              const WidgetStatePropertyAll(EdgeInsets.all(10)),
                          shape: const WidgetStatePropertyAll(
                            RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                          ),
                          backgroundColor:
                              WidgetStateProperty.all<Color>(Colors.amber),
                        ),
                        child: Text(
                          title,
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      );
                    }),
              ),
            )));
  }
}
