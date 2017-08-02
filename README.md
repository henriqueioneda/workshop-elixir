# Workshop Elixir

Uma introdução para incitar curiosidade sobre o mundo do Elixir.

## Começando

Você vai precisar ter o Elixir pronto para rodar na sua máquina. Uma sugestão é seguir o tutorial oficial: https://elixir-lang.org/install.html

### Fork

Se você der um fork no projeto, você pode rodar um console com todos os arquivos carregados da seguinte forma, estando na pasta:

```
iex all.ex
```

## Usando os arquivos

### Fibonacci/Optimization/Agent

É interessante perceber como a implementação do Fibonacci é simples, expressiva e descritiva. 

```
Fibonacci.at(5)
Fibonacci.at(6)

Fibonacci.at(38)
Fibonacci.at(40)
```

Como bônus, há também uma implementação da otimização do Fibonacci (Dynamic Programming, Memoization). Veja como a velocidade aumenta dramaticamente. A implementação da otimização utiliza o conceito de Agents (processos especializados em armazenamento de estado).

```
DpFibonacci.at(40)
DpFibonacci.at(100)
DpFibonacci.at(1000)
DpFibonacci.at(10000)
DpFibonacci.at(100000)
```

## Pattern Matching

Exemplos de funcionamento do Pattern Matching. O módulo PatternMatching.Aux já fornece alguns dados para teste:

```
PatternMatching.tuple_match(PatternMatching.Aux.ok())
PatternMatching.tuple_match(PatternMatching.Aux.error())
PatternMatching.tuple_match(PatternMatching.Aux.wat())

PatternMatching.only_name(PatternMatching.Aux.some_map())

PatternMatching.print_list(PatternMatching.Aux.some_list())

PatternMatching.arguments_match(1)
PatternMatching.arguments_match(2)
PatternMatching.arguments_match(0)
```

## Pipe Operator

Note que a função retorna a mesma coisa, e o código fica bem mais limpo utilizando os pipes.

```
PipeOperator.normal(PipeOperator.data())
PipeOperator.pipe(PipeOperator.data())
```

## Umbrella Project

Para criar um projeto guarda-chuva e ver que a compilação na raiz compila também os sub-apps:

```
cd umbrella
mix new workshop --umbrella
cd workshop
cd apps
mix new app1
mix new app2
mix new app3
cd ..
mix compile
```

## Autor

* **Henrique Ioneda** - *Coleta de conteúdo e montagem da apresentação*

## Referências

* https://elixirschool.com
* https://elixir-lang.org
* Apresentações no Youtube
* Buscas no Google (blogs, Stackoverflow)
* Apresentação [a relative link](presentation.pdf)

