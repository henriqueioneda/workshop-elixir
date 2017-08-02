defmodule DpFibonacci do
    def at(n) do
        start_agent()
        recursion(n)
    end

    def recursion(n) when n in [0, 1], do: 1
    def recursion(n) do
        case get_from_agent(n) do
            result when is_integer(result) -> result
            _ -> with result <- recursion(n - 1) + recursion(n - 2) do 
                    put_in_agent(n, result)
                    result
                 end
        end
    end

    defp start_agent do
        Agent.start_link(fn -> Map.new() end, name: __MODULE__)
    end

    defp get_from_agent(n) do
        Agent.get(__MODULE__, fn dp -> Map.get(dp, n) end)
    end

    defp put_in_agent(n, result) do
        Agent.update(__MODULE__, fn dp -> Map.put(dp, n, result) end)
    end
end
