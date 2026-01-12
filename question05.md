# Questão 5 - Problema dos Veículos

## Resposta

**Quando os dois veículos se cruzarem, ambos estarão à MESMA DISTÂNCIA de Ribeirão Preto.**

---

### Dados do Problema

- **Distância total**: 125 km (Ribeirão Preto ↔ Barretos)
- **Velocidade do carro**: 90 km/h (saindo de Ribeirão Preto)
- **Velocidade do caminhão**: 80 km/h (saindo de Barretos)
- **Obstáculos**: 3 pedágios que atrasam o carro em 5 minutos cada = 15 minutos total (0,25 horas)

---

## Resolução Passo a Passo

### Passo 1: Calcular o tempo até o encontro

O carro perde tempo nos pedágios, então precisamos ajustar o cálculo:

**Equação do encontro:**
- Seja `t` o tempo total até o encontro (em horas)
- Distância percorrida pelo carro: `90t - 22,5` km (descontando o tempo parado)
  - Tempo parado: 0,25h × 90 km/h = 22,5 km "perdidos"
- Distância percorrida pelo caminhão: `80t` km

Como a soma das distâncias deve ser 125 km:

```
(90t - 22,5) + 80t = 125
170t - 22,5 = 125
170t = 147,5
t = 0,868 horas ≈ 52 minutos
```

---

### Passo 2: Calcular as distâncias percorridas

**Caminhão (saindo de Barretos):**
```
Distância = 80 × 0,868 = 69,44 km
```

**Carro (saindo de Ribeirão Preto):**
```
Distância = 90 × 0,868 - 22,5 = 55,56 km
```

**Verificação:**
```
69,44 + 55,56 = 125 km ✓
```

---

### Passo 3: Distância de cada veículo até Ribeirão Preto

**Carro:**
- Saiu de Ribeirão Preto e percorreu 55,56 km
- **Distância até Ribeirão Preto = 55,56 km**

**Caminhão:**
- Saiu de Barretos (125 km de Ribeirão Preto)
- Percorreu 69,44 km em direção a Ribeirão Preto
- **Distância até Ribeirão Preto = 125 - 69,44 = 55,56 km**

---

## Conclusão

**No momento do cruzamento, ambos os veículos estão no mesmo ponto da rodovia (55,56 km de Ribeirão Preto), portanto, estão à MESMA DISTÂNCIA de Ribeirão Preto.**

---

## Raciocínio Lógico

A questão possui um componente de raciocínio lógico importante que é, quando dois veículos **se cruzam**, por definição, eles ocupam o **mesmo ponto exato** da rodovia naquele momento. 

Portanto, independentemente de qual percorreu mais distância ou viajou mais rápido, no momento do encontro ambos estão necessariamente à mesma distância de qualquer ponto de referência, incluindo Ribeirão Preto.