defmodule Fibonacci do
    def at(n) when n in [0, 1], do: 1
    def at(n) do
        at(n - 1) + at(n - 2)
    end
end
