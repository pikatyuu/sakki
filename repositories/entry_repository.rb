class EntryRepository
  def initialize
    @entries = []
  end

  def save(entry)
    @entries.push(entry)
    return @entries.length - 1
  end

  def fetch(id)
    return @entries[id]
  end
end
