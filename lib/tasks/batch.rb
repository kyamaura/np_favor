class Tasks
  class Batch
  def self.execute
    # 実行したいコードを書く
    Task.where("reception_deadline < 'today'").update_all(status: 30)
    Task.destroy_all("reception_deadline < 'today'")
  end
  end
end
