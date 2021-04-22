defmodule Pascal do
  @moduledoc false

  def pascal(row, col) do
    cond do
      col > row -> -1
      col == 0 || col == row -> 1
      true -> pascal(row - 1, col - 1) + pascal(row - 1, col)
    end
  end

end
