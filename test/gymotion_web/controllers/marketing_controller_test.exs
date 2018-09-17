defmodule GymotionWeb.MarketingControllerTest do
  use GymotionWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "Embrace your curves"
  end
end
