defmodule GymotionWeb.MarketingController do
  use GymotionWeb, :controller
  plug(:put_layout, "marketing.html")

  def index(conn, _params) do
    classes = [
      %{
        day: "Luni",
        classes: [
          %{name: "Barre Stretch", time: "18:00"},
          %{name: "Toning", time: "19:00"},
          %{name: "Zumba Fitness", time: "20:00"}
        ]
      },
      %{
        day: "Marţi",
        classes: [
          %{name: "Pilates", time: "7:00"},
          %{name: "Barre Fitness", time: "19:00"},
          %{name: "Pilates", time: "20:00"}
        ]
      },
      %{
        day: "Miercuri",
        classes: [
          %{name: "Barre Fitness", time: "18:00"},
          %{name: "Zumba Fitness", time: "19:00"},
          %{name: "Pilates", time: "20:00"}
        ]
      },
      %{
        day: "Joi",
        classes: [
          %{name: "Pilates", time: "7:00"},
          %{name: "Trim & Tone", time: "18:00"},
          %{name: "Barre Fitness", time: "19:00"},
          %{name: "Zumba Fitness", time: "20:00"}
        ]
      },
      %{
        day: "Vineri",
        classes: [
          %{name: "Pilates", time: "18:00"},
          %{name: "Tabata", time: "19:00"}
        ]
      },
      %{
        day: "Sâmbătă",
        classes: [
          %{name: "Pilates", time: "10:00"}
        ]
      }
    ]

    render(conn, "index.html", classes: classes)
  end
end
