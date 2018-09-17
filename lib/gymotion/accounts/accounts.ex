defmodule Gymotion.Accounts do
  @moduledoc """
  The Accounts context.
  """

  import Ecto.Query, warn: false

  alias Gymotion.Repo
  alias Gymotion.Accounts.User

  @doc """
  Gets a single user.

  Raises `Ecto.NoResultsError` if the User does not exist.

  ## Examples

      iex> get_user!(123)
      %User{}

      iex> get_user!(456)
      ** (Ecto.NoResultsError)

  """
  def get_user!(%{email: email}), do: Repo.get_by!(User, email: email)
  def get_user!(id), do: Repo.get!(User, id)
end
