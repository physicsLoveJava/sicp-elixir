defmodule Exercise1 do
  @moduledoc false

  def e1_11(n) do
    e1_11_iter(3, 3, 3, 1, n)
  end

  defp e1_11_iter(a, b, c, count, max_count) do
    if count == max_count do
      a
    else
      e1_11_iter(b, c, c + 2 * b + 3 * a, count + 1, max_count)
    end
  end

end
