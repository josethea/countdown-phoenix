defmodule Countdown.EventTest do
  use Countdown.ModelCase

  alias Countdown.Event

  @valid_attrs %{due: ~N[2010-04-17 14:00:00.000000], title: "some title"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Event.changeset(%Event{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Event.changeset(%Event{}, @invalid_attrs)
    refute changeset.valid?
  end
end
