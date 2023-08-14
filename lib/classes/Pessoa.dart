class Pessoa {

  String _nome = '';
  double _altura = 0.0;
  double _peso = 0.0;

  void setNome(String nome){
    _nome = nome;
  }
  void setAltura(double altura){
    _altura = altura;
  }
  void setPeso(double peso){
    _peso = peso;
  }

  String getNome(){
    return _nome;
  }
  double getAltura(){
    return _altura;
  }
  double getPeso(){
    return _peso;
  }

  @override
  String toString() {
    return {"Nome": _nome, "Altura": _altura, "Peso": _peso}.toString();
  }

  double calculaIMC(double peso, double altura){
  
    if(peso <= 0){
      print("Pesoa informado incorreto!");
    }

    if(altura <= 0){
      print("Altura informada incorreto!");
    }
    
    return  peso / (altura * altura);
  }

  void verificarICM(double resultado){
    if(resultado < 16){
      print('Magraza Grave');
    }else if( resultado < 17 ){
      print("Magreza Moderada");
    }else if(resultado < 18.5){
      print("Magreza Leve");
    }else if(resultado < 25){
      print("Saudável");
    }else if(resultado < 30){
      print("Sobrepeso");
    }else if(resultado < 35){
      print("Obsidade Grau I");
    }else if(resultado < 40){
      print("Obsidade grau II (severa)");
    }else{
      print("Obsidade Grau III (mórbida)");
    }
  }
}

