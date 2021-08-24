defmodule TheBug.Decorator do
  use Decorator.Define, fallback: 0

  def fallback(
        body,
        context
      ) do
    %{args: controller_args} = context

    quote do
      [conn, params] = unquote(controller_args)

      unquote(body)
    end
  end
end
