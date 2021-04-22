defmodule Fib do
  @moduledoc false

  def fib(n) do
    case n do
      1 -> 1
      2 -> 1
      default -> fib(n - 1) + fib(n - 2)
    end
  end

#  f0=0
#  f1=1
#  f2=f0+f1=1
#  f3=f1+f2
  def fib_iter(n) do
    fib_iter_inner(0, 1, 0, n)
  end

  defp fib_iter_inner(prev, next, count, max_count) do
    if count == max_count do
      prev
    else
      fib_iter_inner(next, prev + next, count + 1, max_count)
    end
  end

end
