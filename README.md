# Elixir

## Tipos de Dados

### Atoms
  - comumente utilizados para expressar o estado de uma operação
    - `:ok`
    - `:error`
  - `true` and `false` are also atoms
  
### Lists
  - Linked lists hold zero, one, or more elements in the chosen order.
    - `[1, "two", 3, :four]`
  - Can be concatenated and subtracted
    - `[1, 2, 3] ++ [4, 5, 6]`
    - `[1, 2, 3] -- [4, 5, 6]`
  - An element can be prepended to a list using `|`
    - ```elixir
      new = 0
      list = [1, 2, 3]
      [new | list]
      [0, 1, 2, 3]
      ```
  - head
    - `hd [1, 2, 3]` returns `1`
  - tail
    - `tl list` returns `[2, 3]`
  - in
    - `2 in [1, 2]` returns `true`

### Tuples
  - Tuples are typically used either when a function has multiple return values or
for error handling
  - `{:ok, "Hello Elixir"}`
  - `{:error, :enoent}`

### Maps
  - Maps are the "go to" key-value data structure in Elixir.
    - `%{a: 1, b: 2, c: 3}`
    - `%{"a" => 1, "b" => 2, "c" => 3}`
  - To access atom keys
    - `Map.get` `Map.fetch`
    - `map.key`
  - To access string keys
    - `map["key"]`
  - To add new values
    - `my_map = Map.put(my_map, :key, value)`
  - To update a value
    - `my_map = %{my_map | key: "value" }` only for existing keys
  - An List of Maps
    - `[%{age: 2, name: "Fiti"}, %{age: 1.5, name: "Titi"}]`

## Pattern Matching

  - x = 4
    - isso não é uma atribuição como no JS
    - no elixir é verificado um Match
    - quanto x deve valer para x = 4 ser true? 4! a ideia é essa!

  - List
  - `[a, b, c] = [1, 2, 3] :: a = 1, b = 2, c = 3`
  - Map
  - `x = %{ email: "mail", name: "Ivan"}`
    - `%{ email: caixa_postal, name: username } = x`
      - `caixa_postal -> "mail", username -> "Ivan"`
  - Tuple
  - `{:ok, result} = File.read("hello-elixir.txt")`
    - `result -> "Bem vindo ao Elixir!!!"`
  - Pin
  - `x = 4`
    - `^x = 5` -> (MatchError) no match of right hand side value: 5
  - Anonymous functions `fn`
  - `add = fn a, b -> a + b end`
    - `add.(2, 2)` -> `4`
```elixir
    verify = fn 
    true -> "verdade!" 
    false -> "mentira!!" 
    end
```
  - Kernel
  - `add = &Kernel.+/2`
    - `add.(4, 4)` -> `8`
  - String 
  - `get_length = &String.length/1`
    - `get_length.("Ivan")` -> 4

  - capture operator
  - `add = &(&a + &b)`

  - WOW moment
```elixir
read_file = fn
{:ok, result} -> "content: #{result}"
{:error, err} -> "#{err}: Arquivo não encontrado"
end

read_file.(File.read("existing.txt"))
<!-- this returns "content: Any file content" -->

read_file.(File.read("non-existing.txt"))
<!-- this returns "enoent: Arquivo não encontrado" -->
```

## Primeiro Projeto

  - mix new sum_list
  - lib -> modulo principal
  - test -> test do modulo
  - mix -> configurações
  - formatter -> formatador
