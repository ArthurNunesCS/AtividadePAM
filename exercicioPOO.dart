class Carro {
  String modelo;
  int velocidadeAtual;
  int velocidadeMaxima;

  // Construtor da classe
  Carro({
    required this.modelo,
    this.velocidadeAtual = 0,
    required this.velocidadeMaxima,
  });

  // Método para acelerar o carro
  void acelerar(int quantidade) {
    velocidadeAtual += quantidade;

    if (velocidadeAtual > velocidadeMaxima) {
      velocidadeAtual = velocidadeMaxima;
      print("Velocidade máxima atingida!");
    }
  }

  // Método para frear o carro
  void frear(int quantidade) {
    velocidadeAtual -= quantidade;

    if (velocidadeAtual < 0) {
      velocidadeAtual = 0;
      print("O carro já está parado.");
    }
  }

  // Método para desligar o carro
  void desligar() {
    velocidadeAtual = 0;
    print("Carro desligado. Velocidade zerada.");
  }

  // Método para exibir o estado do carro
  void exibirEstado() {
    print(
      "Carro: $modelo | "
      "Velocidade atual: $velocidadeAtual km/h | "
      "Velocidade máxima: $velocidadeMaxima km/h",
    );
  }
}

void main() {
  // Criando o objeto
  Carro carro = Carro(modelo: "Fusca", velocidadeMaxima: 120);

  // Testes de aceleração
  carro.acelerar(50);
  carro.acelerar(80);

  carro.exibirEstado();

  // Testes de frenagem
  carro.frear(30);
  carro.frear(70);
  carro.frear(50);

  carro.exibirEstado();

  // Acelerando novamente e desligando
  carro.acelerar(60);
  carro.desligar();

  // Exibindo o estado final
  carro.exibirEstado();
}
