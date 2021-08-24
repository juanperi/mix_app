defmodule TheBug.PageController do
  use TheBug.Decorator


  @decorate fallback()
  def index(conn, params) do
    %{} = params
    %{} = conn.assigns

    conn
  end
end
