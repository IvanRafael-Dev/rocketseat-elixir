defmodule ListLength do
  def call(list), do: count(list, 0)

  defp count([], acc) do
    acc
  end

  defp count([_ | tail], acc) do
    acc = acc + 1
    count(tail, acc)
  end
end
