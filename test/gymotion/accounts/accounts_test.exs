defmodule Gymotion.AccountsTest do
  use Gymotion.DataCase

  alias Gymotion.Accounts
  alias Gymotion.Repo

  describe "users" do
    alias Gymotion.Accounts.User

    @valid_attrs %{
      email: "some email",
      name: "some name",
      password: "some password",
      role: "some role"
    }
    @invalid_attrs %{email: nil, name: nil, password: nil, role: nil}

    def user_fixture(attrs \\ %{}) do
      {:ok, user} =
        %User{}
        |> User.changeset(Enum.into(attrs, @valid_attrs))
        |> Repo.insert()

      user
    end

    test "get_user!/1 returns the user with given id" do
      user = user_fixture()
      assert Accounts.get_user!(user.id) == user
    end

    test "get_user!/1 returns the user with given email" do
      email = %{email: "tester@example.com"}
      user = user_fixture(email)
      assert Accounts.get_user!(email) == user
    end
  end
end
