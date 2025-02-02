class HashLock < ActiveRecord::Base
	class << self
		def aquire(table, column, value)
			HashLock.where(table: table, column: column,
										 key: Digest::MD5.hexdigest(value)[0,2]).lock(true).first!
		end
	end
end
