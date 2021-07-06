import 'package:encuestas/src/InformacionE.dart';
import 'package:encuestas/src/InformacionR.dart';
import 'package:encuestas/src/informacionP.dart';
import 'package:encuestas/src/parametros.dart';
import 'package:group_radio_button/group_radio_button.dart';
import 'package:flutter/material.dart';

class Encuestas extends StatefulWidget {
  @override
  _RegistroState createState() => _RegistroState();
  static const String id = 'data_table_2_screen';
}

void _showPendientes(BuildContext context) {
  Navigator.of(context).push(Pendientes());
}

void _showRealizadas(BuildContext context) {
  Navigator.of(context).push(Realizadas());
}

void _showEvaluadas(BuildContext context) {
  Navigator.of(context).push(Evaluadas());
}

class _RegistroState extends State<Encuestas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(Icons.settings_rounded),
            ),
          ),
        ],
        backgroundColor: Colors.indigo,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          color: Colors.indigo[50],
          child: Center(
            child: Column(
              children: <Widget>[
                _crearBIM(),
                _crearEncuestaS(),
                Divider(
                  indent: 0,
                  endIndent: 0,
                  color: Colors.indigo[50],
                ),
                _crearBoton(),
                Divider(
                  indent: 0,
                  endIndent: 0,
                  color: Colors.indigo[50],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _crearBIM() {
    return Container(
      child: Column(
        children: <Widget>[
          Image.asset(
            'assets/img/BIMLogo.png',
            height: 130,
            width: 400,
          ),
        ],
      ),
    );
  }

  Widget _crearEncuestaS() {
    return Container(
      padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
      color: Colors.indigo,
      child: Center(
        child: Column(
          children: <Widget>[
            Text(
              'Encuestas de Satisfaccion',
              style: TextStyle(
                fontSize: 22,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool visibilityT = true;
  bool visibilityP = false;
  bool visibilityR = false;
  bool visibilityE = false;

  void _changed(bool visibility, String field) {
    setState(() {
      if (field == "T") {
        visibilityT = visibility;
        visibilityP = false;
        visibilityR = false;
        visibilityE = false;
      }
      if (field == "P") {
        visibilityT = false;
        visibilityP = visibility;
        visibilityR = false;
        visibilityE = false;
      }
      if (field == "R") {
        visibilityT = false;
        visibilityP = false;
        visibilityR = visibility;
        visibilityE = false;
      }
      if (field == "E") {
        visibilityT = false;
        visibilityP = false;
        visibilityR = false;
        visibilityE = visibility;
      }
    });
  }

  Widget _crearBoton() {
    return Container(
      color: Colors.white,
      child: new Column(
        children: <Widget>[
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Expanded(
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new InkWell(
                      onTap: () {
                        // ignore: unnecessary_statements
                        visibilityT ? null : _changed(true, "T");
                      },
                      child: new Container(
                        child: new Column(
                          children: <Widget>[
                            Divider(
                              indent: 0,
                              endIndent: 0,
                              color: Colors.indigo[50],
                            ),
                            new InkWell(
                              // ignore: deprecated_member_use
                              child: new SizedBox(
                                width: 300.0,
                                height: 40.0,
                                child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                      side: BorderSide(
                                          color: Colors.grey.shade300)),
                                  color: Colors.greenAccent,
                                  padding:
                                      new EdgeInsets.fromLTRB(10, 10, 10, 10),
                                  textColor: Colors.black, // foreground
                                  child: Text(
                                    'Mostrar Todos',
                                    style: TextStyle(
                                      fontSize: 16.0,
                                    ),
                                  ),
                                  onPressed: () {
                                    // ignore: unnecessary_statements
                                    visibilityT ? null : _changed(true, "T");
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Expanded(
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new InkWell(
                      // ignore: deprecated_member_use
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            side: BorderSide(color: Colors.grey.shade300)),
                        color: Colors.greenAccent[100],
                        padding: new EdgeInsets.fromLTRB(10, 10, 10, 10),
                        textColor: Colors.black, // foreground
                        child: Text(
                          'Pendientes',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        onPressed: () {
                          // ignore: unnecessary_statements
                          visibilityP ? null : _changed(true, "P");
                        },
                      ),
                    ),
                  ],
                ),
              ),
              new Expanded(
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new InkWell(
                      // ignore: deprecated_member_use
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            side: BorderSide(color: Colors.grey.shade300)),
                        color: Colors.greenAccent[100],
                        padding: new EdgeInsets.fromLTRB(10, 10, 10, 10),
                        textColor: Colors.black, // foreground
                        child: Text(
                          'Realizadas',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        onPressed: () {
                          // ignore: unnecessary_statements
                          visibilityR ? null : _changed(true, "R");
                        },
                      ),
                    ),
                  ],
                ),
              ),
              new Expanded(
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new InkWell(
                      // ignore: deprecated_member_use
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            side: BorderSide(color: Colors.grey.shade300)),
                        color: Colors.greenAccent[100],
                        padding: new EdgeInsets.fromLTRB(10, 10, 10, 10),
                        textColor: Colors.black, // foreground
                        child: Text(
                          'Evaluadas',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        onPressed: () {
                          // ignore: unnecessary_statements
                          visibilityE ? null : _changed(true, "E");
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          visibilityT
              ? new Row(
                  children: <Widget>[
                    Expanded(
                      child: SizedBox(
                        height: 1029.0,
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Divider(
                                indent: 0,
                                endIndent: 0,
                                color: Colors.indigo[50],
                              ),
                              _crearPendientes(),
                              _crearBuscar(),
                              _craerDatatable(),
                              // ignore: deprecated_member_use
                              RaisedButton(
                                onPressed: () => _showPendientes(context),
                                child: Text('Show Overlay'),
                              ),
                              Divider(
                                indent: 0,
                                endIndent: 0,
                                color: Colors.indigo[50],
                              ),
                              _crearRealizados(),
                              _crearBuscarR(),
                              _craerDatatableR(),
                              // ignore: deprecated_member_use
                              RaisedButton(
                                onPressed: () => _showRealizadas(context),
                                child: Text('Show Overlay'),
                              ),
                              Divider(
                                indent: 0,
                                endIndent: 0,
                                color: Colors.indigo[50],
                              ),
                              _crearEvaluaciones(),
                              _crearBuscarE(),
                              _craerDatatableE(),
                              // ignore: deprecated_member_use
                              RaisedButton(
                                onPressed: () => _showEvaluadas(context),
                                child: Text('Show Overlay'),
                              ),
                              Divider(
                                indent: 0,
                                endIndent: 0,
                                color: Colors.indigo[50],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              : new Container(),
          visibilityP
              ? new Row(
                  children: <Widget>[
                    Expanded(
                      child: SizedBox(
                        height: 387.0,
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Divider(
                                indent: 0,
                                endIndent: 0,
                                color: Colors.indigo[50],
                              ),
                              _crearPendientes(),
                              _crearBuscar(),
                              _craerDatatable(),
                              // ignore: deprecated_member_use
                              RaisedButton(
                                onPressed: () => _showPendientes(context),
                                child: Text('Show Overlay'),
                              ),
                              Divider(
                                indent: 0,
                                endIndent: 0,
                                color: Colors.indigo[50],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              : new Container(),
          visibilityR
              ? new Row(
                  children: <Widget>[
                    Expanded(
                      child: SizedBox(
                        height: 337.0,
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Divider(
                                indent: 0,
                                endIndent: 0,
                                color: Colors.indigo[50],
                              ),
                              _crearRealizados(),
                              _crearBuscarR(),
                              _craerDatatableR(),
                              // ignore: deprecated_member_use
                              RaisedButton(
                                onPressed: () => _showRealizadas(context),
                                child: Text('Show Overlay'),
                              ),
                              Divider(
                                indent: 0,
                                endIndent: 0,
                                color: Colors.indigo[50],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              : new Container(),
          visibilityE
              ? new Row(
                  children: <Widget>[
                    Expanded(
                      child: SizedBox(
                        height: 337.0,
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Divider(
                                indent: 0,
                                endIndent: 0,
                                color: Colors.indigo[50],
                              ),
                              _crearEvaluaciones(),
                              _crearBuscarE(),
                              _craerDatatableE(),
                              // ignore: deprecated_member_use
                              RaisedButton(
                                onPressed: () => _showEvaluadas(context),
                                child: Text('Show Overlay'),
                              ),
                              Divider(
                                indent: 0,
                                endIndent: 0,
                                color: Colors.indigo[50],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              : Container()
        ],
      ),
    );
  }

  Widget _crearPendientes() {
    return Container(
      padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
      color: Colors.teal[400],
      child: Center(
        child: Column(
          children: <Widget>[
            Text(
              'Pendientes',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Para> usersFiltered = [];
  TextEditingController controller = TextEditingController();
  String _searchResult = '';

  Widget _crearBuscar() {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      color: Colors.indigo[50],
      child: Center(
        child: Column(
          children: <Widget>[
            Card(
              child: new ListTile(
                leading: new Icon(Icons.search),
                title: new TextField(
                    controller: controller,
                    decoration: new InputDecoration(
                        hintText: 'Search', border: InputBorder.none),
                    onChanged: (value) {
                      setState(() {
                        _searchResult = value;
                        usersFiltered = param
                            .where((param) =>
                                param.socio.contains(_searchResult) ||
                                param.empresa.contains(_searchResult))
                            .toList();
                      });
                    }),
                trailing: new IconButton(
                  icon: new Icon(Icons.cancel),
                  onPressed: () {
                    setState(() {
                      controller.clear();
                      _searchResult = '';
                      usersFiltered = param;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  late List<Para> param;
  late bool sortAscending;

  @override
  void initState() {
    super.initState();
    sortAscending = false;
    param = Para.getParametros();
    sortAscendingR = false;
    paramR = ParaR.getParametrosR();
    sortAscendingE = false;
    paramE = ParaE.getParametrosE();
  }

  Widget _craerDatatable() {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        height: 200.0,
        child: Center(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              DataTable(
                dividerThickness: 2,
                dataRowHeight: 50,
                headingRowHeight: 50,
                sortColumnIndex: 1,
                sortAscending: sortAscending,
                columns: [
                  DataColumn(
                    label: Text('Foto'),
                  ),
                  DataColumn(
                      label: Text('Socio'),
                      numeric: false,
                      onSort: (columnIndex, ascending) {
                        setState(() {
                          sortAscending = !sortAscending;
                        });
                        ordenarColumna(columnIndex, ascending);
                      }),
                  DataColumn(
                    label: Text('Empresa'),
                    numeric: false,
                  ),
                  DataColumn(
                    label: Text('Fecha Solicitud'),
                    numeric: false,
                  ),
                  DataColumn(
                    label: Text('Requerimiento'),
                    numeric: false,
                  ),
                  DataColumn(
                    label: Text('Etado Op'),
                    numeric: false,
                  ),
                  DataColumn(
                    label: Text('Evaluar'),
                    numeric: false,
                  ),
                ],
                rows: param
                    .map(
                      (par) => DataRow(
                        /* selected: par.selected,
                        onSelectChanged: (s) {
                          setState(() {
                            par.selected = s!;
                          });
                        },*/
                        cells: [
                          DataCell(
                            Container(
                              height: 40,
                              width: 40,
                              child: Image.network(
                                par.foto,
                              ),
                            ),
                          ),
                          DataCell(
                            Text(
                              par.socio,
                            ),
                          ),
                          DataCell(
                            Text(
                              par.empresa,
                            ),
                          ),
                          DataCell(
                            Text(
                              par.estado,
                            ),
                          ),
                          DataCell(
                            Text(
                              par.ciudad,
                            ),
                          ),
                          DataCell(
                            Text(
                              par.giro,
                            ),
                          ),
                          DataCell(
                            Text(
                              par.contacto,
                            ),
                          ),
                        ],
                      ),
                    )
                    .toList(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RichText(
                    text: TextSpan(
                      children: param
                          .map(
                            (par) => (par.selected)
                                ? TextSpan(
                                    text: par.foto + '    ',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20),
                                  )
                                : TextSpan(
                                    text: '',
                                  ),
                          )
                          .toList(),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  ordenarColumna(int columnIndex, bool ordenar) {
    if (columnIndex == 1) {
      if (ordenar) {
        param.sort((a, b) => a.socio.compareTo(b.socio));
      } else {
        param.sort((a, b) => b.socio.compareTo(a.socio));
      }
    }
  }

  Widget _crearRealizados() {
    return Container(
      padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
      color: Colors.teal[400],
      child: Center(
        child: Column(
          children: <Widget>[
            Text(
              'Realizadas',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<ParaR> usersFilteredR = [];
  TextEditingController controllerR = TextEditingController();
  String _searchResultR = '';

  Widget _crearBuscarR() {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      color: Colors.indigo[50],
      child: Center(
        child: Column(
          children: <Widget>[
            Card(
              child: new ListTile(
                leading: new Icon(Icons.search),
                title: new TextField(
                    controller: controller,
                    decoration: new InputDecoration(
                        hintText: 'Search', border: InputBorder.none),
                    onChanged: (value) {
                      setState(() {
                        _searchResultR = value;
                        usersFilteredR = paramR
                            .where((paramR) =>
                                paramR.socio.contains(_searchResultR) ||
                                paramR.empresa.contains(_searchResultR))
                            .toList();
                      });
                    }),
                trailing: new IconButton(
                  icon: new Icon(Icons.cancel),
                  onPressed: () {
                    setState(() {
                      controller.clear();
                      _searchResultR = '';
                      usersFilteredR = paramR;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  late List<ParaR> paramR;
  late bool sortAscendingR;

  Widget _craerDatatableR() {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        height: 150.0,
        child: Center(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              DataTable(
                dividerThickness: 2,
                dataRowHeight: 50,
                headingRowHeight: 50,
                sortColumnIndex: 1,
                sortAscending: sortAscendingR,
                columns: [
                  DataColumn(
                    label: Text('Foto'),
                  ),
                  DataColumn(
                      label: Text('Socio'),
                      numeric: false,
                      onSort: (columnIndex, ascending) {
                        setState(() {
                          sortAscendingR = !sortAscendingR;
                        });
                        ordenarColumn(columnIndex, ascending);
                      }),
                  DataColumn(
                    label: Text('Empresa'),
                    numeric: false,
                  ),
                  DataColumn(
                    label: Text('Fecha Solicitud'),
                    numeric: false,
                  ),
                  DataColumn(
                    label: Text('Requerimiento'),
                    numeric: false,
                  ),
                  DataColumn(
                    label: Text('Etado Op'),
                    numeric: false,
                  ),
                  DataColumn(
                    label: Text('Evaluar'),
                    numeric: false,
                  ),
                ],
                rows: paramR
                    .map(
                      (parR) => DataRow(
                        /* selected: par.selected,
                        onSelectChanged: (s) {
                          setState(() {
                            par.selected = s!;
                          });
                        },*/
                        cells: [
                          DataCell(
                            Container(
                              height: 40,
                              width: 40,
                              child: Image.network(
                                parR.foto,
                              ),
                            ),
                          ),
                          DataCell(
                            Text(
                              parR.socio,
                            ),
                          ),
                          DataCell(
                            Text(
                              parR.empresa,
                            ),
                          ),
                          DataCell(
                            Text(
                              parR.fecha,
                            ),
                          ),
                          DataCell(
                            Text(
                              parR.reque,
                            ),
                          ),
                          DataCell(
                            Text(
                              parR.estado,
                            ),
                          ),
                          DataCell(
                            Text(
                              parR.mas,
                            ),
                          ),
                        ],
                      ),
                    )
                    .toList(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RichText(
                    text: TextSpan(
                      children: paramR
                          .map(
                            (parR) => (parR.selected)
                                ? TextSpan(
                                    text: parR.foto + '    ',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20),
                                  )
                                : TextSpan(
                                    text: '',
                                  ),
                          )
                          .toList(),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  ordenarColumn(int columnIndex, bool ordenar) {
    if (columnIndex == 1) {
      if (ordenar) {
        paramR.sort((a, b) => a.socio.compareTo(b.socio));
      } else {
        paramR.sort((a, b) => b.socio.compareTo(a.socio));
      }
    }
  }

  Widget _crearEvaluaciones() {
    return Container(
      padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
      color: Colors.teal[400],
      child: Center(
        child: Column(
          children: <Widget>[
            Text(
              'Tus Evaluaciones',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<ParaE> usersFilteredE = [];
  TextEditingController controllerE = TextEditingController();
  String _searchResultE = '';

  Widget _crearBuscarE() {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      color: Colors.indigo[50],
      child: Center(
        child: Column(
          children: <Widget>[
            Card(
              child: new ListTile(
                leading: new Icon(Icons.search),
                title: new TextField(
                    controller: controller,
                    decoration: new InputDecoration(
                        hintText: 'Search', border: InputBorder.none),
                    onChanged: (value) {
                      setState(() {
                        _searchResultE = value;
                        usersFilteredE = paramE
                            .where((paramE) =>
                                paramE.socioe.contains(_searchResultE) ||
                                paramE.empresa.contains(_searchResultE))
                            .toList();
                      });
                    }),
                trailing: new IconButton(
                  icon: new Icon(Icons.cancel),
                  onPressed: () {
                    setState(() {
                      controller.clear();
                      _searchResultE = '';
                      usersFilteredE = paramE;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  late List<ParaE> paramE;
  late bool sortAscendingE;

  Widget _craerDatatableE() {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        height: 150.0,
        child: Center(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              DataTable(
                dividerThickness: 2,
                dataRowHeight: 50,
                headingRowHeight: 50,
                sortColumnIndex: 1,
                sortAscending: sortAscendingE,
                columns: [
                  DataColumn(
                    label: Text('Foto'),
                  ),
                  DataColumn(
                      label: Text('Socio'),
                      numeric: false,
                      onSort: (columnIndex, ascending) {
                        setState(() {
                          sortAscendingE = !sortAscendingE;
                        });
                        ordenarColum(columnIndex, ascending);
                      }),
                  DataColumn(
                    label: Text('Empresa'),
                    numeric: false,
                  ),
                  DataColumn(
                    label: Text('Fecha Solicitud'),
                    numeric: false,
                  ),
                  DataColumn(
                    label: Text('Requerimiento'),
                    numeric: false,
                  ),
                  DataColumn(
                    label: Text('Etado Op'),
                    numeric: false,
                  ),
                  DataColumn(
                    label: Text('Evaluar'),
                    numeric: false,
                  ),
                ],
                rows: paramE
                    .map(
                      (parE) => DataRow(
                        /* selected: par.selected,
                        onSelectChanged: (s) {
                          setState(() {
                            par.selected = s!;
                          });
                        },*/
                        cells: [
                          DataCell(
                            Container(
                              height: 40,
                              width: 40,
                              child: Image.network(
                                parE.foto,
                              ),
                            ),
                          ),
                          DataCell(
                            Text(
                              parE.socioe,
                            ),
                          ),
                          DataCell(
                            Text(
                              parE.empresa,
                            ),
                          ),
                          DataCell(
                            Text(
                              parE.fecha,
                            ),
                          ),
                          DataCell(
                            Text(
                              parE.reque,
                            ),
                          ),
                          DataCell(
                            Text(
                              parE.estado,
                            ),
                          ),
                          DataCell(
                            Text(
                              parE.mas,
                            ),
                          ),
                        ],
                      ),
                    )
                    .toList(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RichText(
                    text: TextSpan(
                      children: paramE
                          .map(
                            (parE) => (parE.selected)
                                ? TextSpan(
                                    text: parE.foto + '    ',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20),
                                  )
                                : TextSpan(
                                    text: '',
                                  ),
                          )
                          .toList(),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  ordenarColum(int columnIndex, bool ordenar) {
    if (columnIndex == 1) {
      if (ordenar) {
        paramE.sort((y, z) => y.socioe.compareTo(z.socioe));
      } else {
        paramE.sort((y, z) => z.socioe.compareTo(y.socioe));
      }
    }
  }
}
