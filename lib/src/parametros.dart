class Para {
  bool selected;
  String foto;
  String socio;
  String empresa;
  String estado;
  String ciudad;
  String giro;
  String contacto;

  Para(
      {required this.selected,
      required this.foto,
      required this.socio,
      required this.empresa,
      required this.estado,
      required this.ciudad,
      required this.giro,
      required this.contacto});

  static List<Para> getParametros() {
    return <Para>[
      Para(
        selected: false,
        socio: 'Luis',
        empresa: 'BIM',
        estado: 'San Luis',
        ciudad: 'San Luis',
        giro: 'Servicios',
        contacto: 'gmail',
        foto:
            'https://www.autoconstruction-renovation.fr/wp-content/uploads/2020/05/iconfinder_18-man_4714992.png',
      ),
      Para(
        selected: false,
        socio: 'Kendra',
        empresa: 'MW',
        estado: '2021/02/11 - 19:32',
        ciudad: 'Curso Java',
        giro: 'Ganada',
        contacto: 'Realizar Encuenta',
        foto: 'https://www.siclica.com/wp-content/uploads/2020/02/user6.jpg',
      ),
      Para(
        selected: false,
        socio: 'Armando',
        empresa: 'IPESA',
        estado: 'San Luis',
        ciudad: 'Santa Maria',
        giro: 'Comercial',
        contacto: 'gmail',
        foto:
            'https://www.autoconstruction-renovation.fr/wp-content/uploads/2020/05/iconfinder_18-man_4714992.png',
      ),
    ];
  }
}

class ParaR {
  bool selected;
  String foto;
  String socio;
  String empresa;
  String fecha;
  String reque;
  String estado;
  String mas;

  ParaR(
      {required this.selected,
      required this.foto,
      required this.socio,
      required this.empresa,
      required this.fecha,
      required this.reque,
      required this.estado,
      required this.mas});

  static List<ParaR> getParametrosR() {
    return <ParaR>[
      ParaR(
        selected: false,
        socio: 'Kendra',
        empresa: 'MW',
        fecha: '2021/02/11 - 19:32',
        reque: 'Curso Java',
        estado: 'Ganada',
        mas: 'Realizar Encuenta',
        foto: 'https://www.siclica.com/wp-content/uploads/2020/02/user6.jpg',
      ),
      ParaR(
        selected: false,
        socio: 'Armando',
        empresa: 'IPESA',
        fecha: '2021/02/11 - 19:32',
        reque: 'Curso Java',
        estado: 'Ganada',
        mas: 'Realizar Encuenta',
        foto:
            'https://www.autoconstruction-renovation.fr/wp-content/uploads/2020/05/iconfinder_18-man_4714992.png',
      ),
    ];
  }
}

class ParaE {
  bool selected;
  String foto;
  String socioe;
  String empresa;
  String fecha;
  String reque;
  String estado;
  String mas;

  ParaE(
      {required this.selected,
      required this.foto,
      required this.socioe,
      required this.empresa,
      required this.fecha,
      required this.reque,
      required this.estado,
      required this.mas});

  static List<ParaE> getParametrosE() {
    return <ParaE>[
      ParaE(
        selected: false,
        socioe: 'Kendra',
        empresa: 'MW',
        fecha: '2021/02/11 - 19:32',
        reque: 'Curso Java',
        estado: 'Ganada',
        mas: 'Realizar Encuenta',
        foto: 'https://www.siclica.com/wp-content/uploads/2020/02/user6.jpg',
      ),
      ParaE(
        selected: false,
        socioe: 'Armando',
        empresa: 'IPESA',
        fecha: '2021/02/11 - 19:32',
        reque: 'Curso Java',
        estado: 'Ganada',
        mas: 'Realizar Encuenta',
        foto:
            'https://www.autoconstruction-renovation.fr/wp-content/uploads/2020/05/iconfinder_18-man_4714992.png',
      ),
    ];
  }
}
