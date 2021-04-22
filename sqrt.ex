defmodule Sqrt do
  @moduledoc false

  def sqrt(x) do
    sqrt_iter(1.0, x)
  end

  def sqrt_iter(guess, x) do
    if(good_enough?(guess, x)) do
      guess
    else
      sqrt_iter(improve(guess, x), x)
    end
  end

  defp good_enough?(guess, x) do
    abs(guess * guess - x) < 0.001
  end

  defp improve(guess, x) do
    (guess + (x / guess)) / 2
  end

end
