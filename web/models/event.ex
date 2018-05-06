defmodule Countdown.Event do
  use Countdown.Web, :model

  schema "events" do
    field :title, :string
    field :due, :naive_datetime

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :due])
    |> validate_required([:title, :due])
  end
end
