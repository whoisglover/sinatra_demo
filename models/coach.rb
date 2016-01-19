class Coach
  @@coaches = ['Danny', 'Stephanie', 'Jacqulin', 'Josh']

  def self.all
    @@coaches
  end

  def self.find(id)
    @@coaches[id.to_i]
  end

  def self.create(name)
    @@coaches << name
  end

  def self.delete(index)
    @@coaches.delete_at(index.to_i)
  end
end
