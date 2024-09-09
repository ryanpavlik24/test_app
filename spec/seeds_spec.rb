require 'rails_helper'

RSpec.describe 'Database Seeding' do
  before(:all) do
    # Load the seed data
    load Rails.root.join('db', 'seeds.rb')
  end

  it 'creates books' do
    expect(Book.find_by(title: 'Hunger Games')).not_to be_nil
    expect(Book.find_by(title: 'Unwanteds')).not_to be_nil
    expect(Book.find_by(title: 'Harry Potter')).not_to be_nil
    expect(Book.find_by(title: 'Baseball')).not_to be_nil
    expect(Book.find_by(title: 'Math')).not_to be_nil
  end
end
