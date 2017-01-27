class EntryChain
  include Enumerable
  def initialize(db)
    @db = db
  end

  def chain(target_entry_id, chained_entry_id)
    query = "INSERT INTO `chains` (`entry_id`, `chained_id`) VALUES (?, ?)"
    stmt = @db.prepare(query)
    stmt.execute(target_entry_id, chained_entry_id)
  end

  def fetch_chaining_entry(entry_id)
    query = "SELECT * FROM `chains` JOIN `entries` ON `chains`.`chained_id` = `entries`.`id` WHERE `chains`.`entry_id` = ?;"
    stmt = @db.prepare(query)
    return stmt.execute(entry_id)
  end
end
