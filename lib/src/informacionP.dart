import 'package:flutter/material.Dart';

enum SingingCharacter { opcion1, opcion2, opcion3, opcion4 }

class Pendientes extends ModalRoute<void> {
  @override
  Duration get transitionDuration => Duration(milliseconds: 500);

  @override
  bool get opaque => false;

  @override
  bool get barrierDismissible => false;

  @override
  Color get barrierColor => Colors.black.withOpacity(0.5);

  @override
  String? get barrierLabel => null;

  @override
  bool get maintainState => true;

  @override
  Widget buildPage(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
  ) {
    return Material(
      type: MaterialType.transparency,
      child: SafeArea(
        child: _buildOverlayContent(context),
      ),
    );
  }

  Widget _buildOverlayContent(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Align(
                alignment: Alignment.bottomRight,
                child: IconButton(
                  icon: Icon(Icons.cancel, color: Colors.white, size: 26.0),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
              _crearInfCon(),
              Container(
                color: Colors.white,
                child: Align(
                  alignment: Alignment.center,
                  child: RaisedButton(
                    color: Colors.indigo,
                    padding: new EdgeInsets.fromLTRB(107, 10, 107, 10),
                    textColor: Colors.white, // foreground
                    child: Text(
                      'Ir a Encuesta',
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed('page');
                    },
                  ),
                ),
              ),
              _crearIrEncuesta(),
              Container(
                color: Colors.white,
                child: Align(
                  alignment: Alignment.center,
                  child: RaisedButton(
                    color: Colors.indigo,
                    textColor: Colors.white, // foreground
                    child: Text(
                      'OK',
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _crearInfCon() {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                  width: 320,
                  height: 209,
                  alignment: Alignment.center,
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Informacion del Contacto',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Divider(
                        thickness: 2,
                        indent: 0,
                        endIndent: 0,
                      ),
                      Image.network(
                        'https://www.autoconstruction-renovation.fr/wp-content/uploads/2020/05/iconfinder_18-man_4714992.png',
                        height: 50,
                        width: 50,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Nombre: Armando',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Empresa: Ipesa',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Correo: acampos@gmail.com',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Telefono: 44432786319',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Requerimiento: Curso Python',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Descripcion de Requerimiento: Requiero',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.indigo[50],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _crearIrEncuesta() {
    return Container();
  }

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return FadeTransition(
      opacity: animation,
      child: ScaleTransition(
        scale: animation,
        child: child,
      ),
    );
  }

  body(IndexedStack indexedStack) {}
}
