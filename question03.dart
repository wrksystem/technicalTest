import 'dart:math';

class ResultsAnalysis {
  final double lowestValue;
  final double highestValue;
  final int daysAboveAverage;

  ResultsAnalysis({
    required this.lowestValue,
    required this.highestValue,
    required this.daysAboveAverage,
  });

  @override
  String toString() {
    return '''
=== ANÁLISE DE FATURAMENTO ANUAL ===
Menor valor de faturamento: R\$ ${lowestValue.toStringAsFixed(2)}
Maior valor de faturamento: R\$ ${highestValue.toStringAsFixed(2)}
Dias com faturamento acima da média: $daysAboveAverage
''';
  }
}

ResultsAnalysis analyzeBilling(List<double> dailyBilling) {
  // Filtrar dias com faturamento (ignorar dias sem faturamento)
  final daysWithBilling = dailyBilling
      .where((valor) => valor > 0)
      .toList();

  // Verificar se há dados válidos
  if (daysWithBilling.isEmpty) {
    throw Exception('Não há dias com faturamento para analisar');
  }

  // Calcular menor e maior valor
  final lowestValue = daysWithBilling.reduce((a, b) => a < b ? a : b);
  final highestValue = daysWithBilling.reduce((a, b) => a > b ? a : b);

  // Calcular média anual (considerando apenas dias com faturamento)
  final totalSum = daysWithBilling.reduce((a, b) => a + b);
  final averageAnnual = totalSum / daysWithBilling.length;

  // Contar dias acima da média
  final daysAboveAverage = daysWithBilling
      .where((valor) => valor > averageAnnual)
      .length;

  return ResultsAnalysis(
    lowestValue: lowestValue,
    highestValue: highestValue,
    daysAboveAverage: daysAboveAverage,
  );
}

void main() {
  // Simulando um vetor de faturamento anual (365 dias)
  // Dias com 0.0 representam finais de semana/feriados (sem faturamento)
  final random = Random();
  final annualRevenue = <double>[];

  for (int i = 0; i < 365; i++) {
    // Simula que alguns dias não têm faturamento (finais de semana/feriados)
    if (i % 7 == 5 || i % 7 == 6) {
      // Sábado e Domingo
      annualRevenue.add(0.0);
    } else {
      // Faturamento aleatório entre 1000 e 50000
      annualRevenue.add(1000 + random.nextDouble() * 49000);
    }
  }

  // Executar análise
  try {
    final result = analyzeBilling(annualRevenue);
    print(result);
  } catch (e) {
    print('Erro na análise: $e');
  }
}