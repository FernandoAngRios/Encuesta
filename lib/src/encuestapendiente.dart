import 'package:flutter/material.dart';
import 'package:group_radio_button/group_radio_button.dart';

class Encuesta extends StatefulWidget {
  @override
  _RegistroState createState() => _RegistroState();
}

class _RegistroState extends State<Encuesta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.center,
          child: Text(
            'Encuesta de Satisfacción',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.indigo,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          color: Colors.indigo[50],
          child: Column(
            children: <Widget>[
              _crearBIM(),
              _crearESatisfaccion(),
              _crearInformacion(),
              _crearPregunta1(),
              _crearRespuesta1(),
              _crearPregunta2(),
              _crearRespuesta2(),
              _crearPreguntaMotivos2(),
              _crearRespuestaMotivos2(),
              _crearPregunta3(),
              _crearRespuesta3(),
              _crearPreguntaMotivos3(),
              _crearRespuestaMotivos3(),
              _crearPregunta4(),
              _crearRespuesta4(),
              _crearPreguntaMotivo4(),
              _crearRespuestaMotivos4(),
              _crearPregunta5(),
              _crearPregunta6(),
              _crearRespuesta6(),
              _crearComentarios(),
              _crearEnviar(),
            ],
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

  Widget _crearESatisfaccion() {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
      color: Colors.white,
      child: Center(
        child: Column(
          children: <Widget>[],
        ),
      ),
    );
  }

  Widget _crearInformacion() {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          children: <Widget>[
            Divider(
              indent: 0,
              endIndent: 0,
              color: Colors.indigo[50],
            ),
            Stack(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  width: 320,
                  height: 65,
                  alignment: Alignment.center,
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Business in Motion considera que la atencion que se otorgue por parte de los socios de la comunidad empresarial, debe ser cumpliendo nustros estandares de calidad, es por ello que solicitamos tu apoyo en la eleboracion de esta pequeña encuesta.',
                          style: TextStyle(
                            fontSize: 11,
                            color: Colors.blue[900],
                          ),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.green[50],
                  ),
                ),
              ],
            ),
            Divider(
              indent: 0,
              endIndent: 0,
              color: Colors.indigo[50],
            ),
          ],
        ),
      ),
    );
  }

  Widget _crearPregunta1() {
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 10, 20, 10),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          SizedBox(
            width: 400.0,
            height: 50.0,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                '1. ¿Como calificarias tu experiencia y el uso de nuestra plataforma/aplicacion al iniciar el contacto para el requerimiento?',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _verticalGroupValue = "";

  List<String> _status = [
    "Muy accesible",
    "Accecible",
    "Algo Complicada",
    "Muy Complicada"
  ];
  Widget _crearRespuesta1() {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[],
            ),
            Column(
              children: <Widget>[
                RadioGroup<String>.builder(
                  groupValue: _verticalGroupValue,
                  onChanged: (value) => setState(() {
                    _verticalGroupValue = value!;
                  }),
                  items: _status,
                  itemBuilder: (item) => RadioButtonBuilder(
                    item,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _crearPregunta2() {
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 10, 20, 10),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          SizedBox(
            width: 400.0,
            height: 40.0,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                '2. En cuanto a la etenciion brindada por el socio, ¿Como la calificarias?',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _verticalGroupValu = "";

  List<String> resp = ["Excelente", "Bueno", "Regular", "Mala"];
  Widget _crearRespuesta2() {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[],
            ),
            Column(
              children: <Widget>[
                RadioGroup<String>.builder(
                  groupValue: _verticalGroupValu,
                  onChanged: (value) => setState(() {
                    _verticalGroupValu = value!;
                  }),
                  items: resp,
                  itemBuilder: (item) => RadioButtonBuilder(
                    item,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _crearPreguntaMotivos2() {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      color: Colors.yellow[50],
      child: Column(
        children: <Widget>[
          SizedBox(
            width: 400.0,
            height: 30.0,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                '2.1. ¿Cuales son los motivos que causaron la mala atencion?',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _crearRespuestaMotivos2() {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
      color: Colors.yellow[50],
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: ''),
          ),
        ],
      ),
    );
  }

  Widget _crearPregunta3() {
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 10, 20, 10),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          SizedBox(
            width: 400.0,
            height: 40.0,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                '3. ¿Se cumplieron todas las necesidades que se presentaron en el requerimiento?',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _verticalGroupVal = "";

  List<String> respu = ["Si", "No"];
  Widget _crearRespuesta3() {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[],
            ),
            Column(
              children: <Widget>[
                RadioGroup<String>.builder(
                  groupValue: _verticalGroupVal,
                  onChanged: (value) => setState(() {
                    _verticalGroupVal = value!;
                  }),
                  items: respu,
                  itemBuilder: (item) => RadioButtonBuilder(
                    item,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _crearPreguntaMotivos3() {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      color: Colors.yellow[50],
      child: Column(
        children: <Widget>[
          SizedBox(
            width: 400.0,
            height: 30.0,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                '3.1. ¿Que fue lo que hico falta dentro para cumplir el requerimiento?',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _crearRespuestaMotivos3() {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
      color: Colors.yellow[50],
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: ''),
          ),
        ],
      ),
    );
  }

  Widget _crearPregunta4() {
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 10, 20, 10),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          SizedBox(
            width: 400.0,
            height: 40.0,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                '4. Con respecto a la venta ¿Se concreto la venta propuesta por el socio?',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _verticalGroupVa = "";

  List<String> respue = ["Si", "No"];
  Widget _crearRespuesta4() {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[],
            ),
            Column(
              children: <Widget>[
                RadioGroup<String>.builder(
                  groupValue: _verticalGroupVa,
                  onChanged: (value) => setState(() {
                    _verticalGroupVa = value!;
                  }),
                  items: respue,
                  itemBuilder: (item) => RadioButtonBuilder(
                    item,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _crearPreguntaMotivo4() {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      color: Colors.yellow[50],
      child: Column(
        children: <Widget>[
          SizedBox(
            width: 400.0,
            height: 30.0,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '4.1. ¿Que causo que no se concretara la venta?',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _crearRespuestaMotivos4() {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
      color: Colors.lime[50],
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: ''),
          ),
        ],
      ),
    );
  }

  var _lis = ['1', '2', '3', '4', '5'];
  String _vis = 'Seleccione Opcion';

  Widget _crearPregunta5() {
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 10, 20, 10),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Text(
            '5. Del 1 al 5 ¿Como le calificarias el desempeño de este socio?',
            style: TextStyle(fontSize: 14),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: DropdownButton(
              items: _lis.map(
                (String a) {
                  return DropdownMenuItem(
                    value: a,
                    child: Text(a),
                  );
                },
              ).toList(),
              onChanged: (String? _value) => {
                setState(
                  () {
                    _vis = _value!;
                  },
                ),
              },
              hint: Text(_vis),
            ),
          ),
        ],
      ),
    );
  }

  Widget _crearPregunta6() {
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 10, 20, 10),
      color: Colors.white,
      child: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              width: 400.0,
              height: 63.0,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  '6. Referente a la experiencia con Business In Motion ¿Recomendarias a Business In Motion a susu conocidos, para que se pueda cubrir sus necesidades?',
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _verticalGroupV = "";

  List<String> respues = ["Si", "No"];
  Widget _crearRespuesta6() {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[],
            ),
            Column(
              children: <Widget>[
                RadioGroup<String>.builder(
                  groupValue: _verticalGroupV,
                  onChanged: (value) => setState(() {
                    _verticalGroupV = value!;
                  }),
                  items: respues,
                  itemBuilder: (item) => RadioButtonBuilder(
                    item,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _crearComentarios() {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Text(
            'Por Favor, ayudanos a mejorar con tus comentarios finales sobre el desempeño del socio',
            style: TextStyle(
              fontSize: 14.0,
            ),
          ),
          TextFormField(
            maxLines: 5,
            maxLength: 300,
            decoration: InputDecoration(labelText: ''),
          ),
        ],
      ),
    );
  }

  Widget _crearEnviar() {
    return Container(
      color: Colors.white,
      child: Align(
        alignment: Alignment.center,
        child: SizedBox(
          width: 300.0,
          child: RaisedButton(
            color: Colors.indigo,
            textColor: Colors.white,
            child: Text(
              'Enviar Oportunidad',
              style: TextStyle(
                fontSize: 17.0,
              ),
            ),
            onPressed: () => showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                content: SingleChildScrollView(
                  child: ListBody(
                    children: <Widget>[
                      /*Image.asset(
                                  'assets/img/duda.png',
                                  height: 130,
                                  width: 500,
                                ),*/
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          '¿Esta seguro de enviar su encuesta de satisfaccion?',
                          style: TextStyle(color: Colors.black, fontSize: 17),
                        ),
                      ),
                    ],
                  ),
                ),
                actions: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                          // ignore: deprecated_member_use
                          child: RaisedButton(
                            color: Colors.indigo,
                            textColor: Colors.white,
                            padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                            child: Text(
                              'Aceptar',
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                            onPressed: () => showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                content: SingleChildScrollView(
                                  child: ListBody(
                                    children: <Widget>[
                                      /* Image.asset(
                                                  'assets/img/aceptado.png',
                                                  height: 130,
                                                  width: 500,
                                                ),*/
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          '¡Solicitud Recibida!',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 22),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          'Recibiras una respuesta Pronto',
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 16),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                actions: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              80, 0, 80, 0),
                                          // ignore: deprecated_member_use
                                          child: RaisedButton(
                                            color: Colors.indigo,
                                            textColor: Colors.white,
                                            padding: const EdgeInsets.fromLTRB(
                                                50, 0, 50, 0),
                                            child: Text(
                                              'OK',
                                              style: TextStyle(
                                                fontSize: 16.0,
                                              ),
                                            ),
                                            onPressed: () {
                                              Navigator.of(context)
                                                  .pushNamed('enc');
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          // ignore: deprecated_member_use
                          child: RaisedButton(
                            color: Colors.red,
                            textColor: Colors.white,
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Text(
                              'Cancelar',
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
