defmodule Pooly.WorkerSupervisorTest do
  use ExUnit.Case

  test "create the supervisor specifications" do
    assert {:ok, worker_sup} = Pooly.WorkerSupervisor.start_link({Pooly.Worker, :start_link, []})
    assert {:ok, _pid} = Supervisor.start_child(worker_sup, [[]])
  end
end
