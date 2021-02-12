class Character
  attr_reader :id,
              :allies,
              :enemies,
              :name,
              :affiliation,
              :photo

  def initialize(data)
    @id = data[:id]
    @allies = data[:allies]
    @enemies = data[:enemies]
    @name = data[:name]
    @affiliation = data[:affiliation]
    @photo = data[:photoUrl]
  end

  def has_allies?
    @allies.count > 0
  end

  def has_enemies?
    @enemies.count > 0
  end
end
