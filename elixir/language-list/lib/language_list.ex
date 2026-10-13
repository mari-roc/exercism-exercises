defmodule LanguageList do
  def new() do
    []
  end

  def add(list, language) do
    [language | list]
  end

  def remove(list) do
    [_ | rest] = list
    rest
  end

  def first(list) do
    hd(list)
  end

  def count(list) do
    length(list)
  end

  def functional_list?(list) do
    linguagens_funcionais = ["Elixir", "Clojure", "Haskell", "Lisp", "Scala", "F#", "OCaml", "Erlang", "Scheme", "Racket"]
    is_list(list) and Enum.all?(list, fn linguagem -> linguagem in linguagens_funcionais end)
  end
end
