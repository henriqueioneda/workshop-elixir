defmodule PipeOperator do
    def normal(numbers_string) do
        numbers_string
            |> String.split(" ")
            |> Enum.map(&String.to_integer(&1) * 2)
            |> Enum.join(" ")
    end

    def pipe(numbers_string) do
        Enum.join(Enum.map(String.split(numbers_string, " "), &String.to_integer(&1) * 2), " ")
    end

    def data() do
        "1 2 3 4 5 6 7 8 9"
    end
end
