defmodule Factorial do
  @moduledoc false

  def fact_recur(n) do
    cond do
      n == 1 -> 1
      true -> n * fact_recur(n - 1)
    end
  end

  def fact_iter(n) do
    fact_iter_inner(1, 1, n)
  end

  defp fact_iter_inner(product, counter, max_count) do
    case counter > max_count do
      true -> product
      false -> fact_iter_inner(product * counter, counter + 1, max_count)
    end
  end

end
