defmodule Ackermann do
  @moduledoc false

  def a(x, y) do
    cond do
      y == 0 -> 0
      x == 0 -> 2 * y
      y == 1 -> 2
      true -> a(x - 1, a(x, y - 1))
    end
  end

end
