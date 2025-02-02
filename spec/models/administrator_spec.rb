require 'rails_helper'

RSpec.describe Administrator, :type => :model do
	describe '#password=' do
		example '文字列を与えると、hashed_passwordは長さ６０の文字列に' do
			admin = Administrator.new
			admin.password = 'baukis'
			expect(admin.hashed_password).to be_kind_of(String)
			expect(admin.hashed_password.size).to eq(60)
		end

		example 'nilを与えると、hashed_passwordはnilに' do
			admin = Administrator.new(hashed_password: 'x')
			admin.password = nil
			expect(admin.hashed_password).to be_nil
		end
	end
		
end
