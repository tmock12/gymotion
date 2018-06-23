defmodule GymotionWeb.MarketingController do
  use GymotionWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
