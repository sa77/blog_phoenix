defmodule BlogPhoenix.PageControllerTest do
  use BlogPhoenix.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "Welcome to blog engine powered by Phoenix!"
  end
end
