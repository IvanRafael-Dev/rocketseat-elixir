defmodule SumList do
  def call(list), do: sum(list, 0)

  def call_enum_mult(list, mult), do: Enum.map(list, fn el -> el * mult end)

  def call_enum_mod(list, mod), do: Enum.any?(list, fn el -> Integer.mod(el, mod) == 0 end)

  defp sum([], acc) do
    acc
  end

  defp sum([head | tail], acc) do
    # IO.inspect(acc)
    acc = acc + head
    sum(tail, acc)
  end
end
