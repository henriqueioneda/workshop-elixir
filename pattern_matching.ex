defmodule PatternMatching do
    def tuple_match(tuple) do
        case tuple do
            {:ok, message} -> IO.puts(message)
            {:error, message} -> IO.puts(message <> " Well, not exactly...")
            _ -> IO.puts("Wat")
        end
    end

    def only_name(%{name: variable}) do
        IO.puts(variable)
    end

    def print_list([head | tail]) do
        IO.puts("Head: #{head}")
        IO.puts("Tail: #{Enum.join(tail, ",")}")
    end

    def arguments_match(0), do: IO.puts("Passei pelo 0")
    def arguments_match(_n) do
        IO.puts("Passei normal")
    end

    defmodule Aux do
        def ok() do
            {:ok, "It's OK!"}
        end

        def error() do
            {:error, "It's OK!"}
        end

        def wat() do
            {:wat, "It's OK!"}
        end

        def some_map() do
            %{a: 2, b: 3, c: 4, name: "Beethoven"}
        end

        def some_list() do
            [1, 2, 3, 4, 5, 6, 7, 8]
        end
    end
end

