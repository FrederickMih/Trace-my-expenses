RSpec.describe Outlay, type: :model do
  describe 'associations' do
    it { should belong_to(:author) }
    it { should have_many(:outlays_groups) }
    it { should have_many(:groups) }
  end

  describe 'validations for name' do
    it { should validate_presence_of(:name) }
    it { should validate_length_of(:name).is_at_least(3) }
    it { should validate_length_of(:name).is_at_most(60) }
  end

  describe 'validations for amount' do
    it { should validate_presence_of(:amount) }
  end

  before(:example) do
    @user = User.create!(name: 'Mih1', email: 'mih@gmail.com', password: '222222')
    @amount = 60
  end

  it 'is valid with valid attributes' do
    outlay = Outlay.new(name: 'fred', amount: @amount, author_id: @user.id)
    expect(outlay.valid?).to be true
  end

  it 'is valid with valid attributes' do
    outlay = Outlay.new(name: 'fred', amount: @amount, author_id: @user.id)
    expect(outlay).to be_valid
  end

  it ' Does not validate if the user does not exist' do
    outlay = Outlay.new(name: 'fd', amount: @amount, author_id: @user.id)
    expect(outlay.valid?).to be false
  end

  it 'Does not validate with name length < 3' do
    outlay = Outlay.new(name: 'fr', amount: @amount, author_id: @user.id)
    expect(outlay.valid?).to be false
  end

  it 'Does not validate if the amount is not a number' do
    outlay = Outlay.new(name: 'fr', amount: 'dollar', author_id: @user.id)
    expect(outlay.valid?).to be false
  end

  it 'Validate outlay if the name is in the range 3 < name <= 60 ' do
    outlay = Outlay.new(name: 'Ngum1', amount: @amount, author_id: @user.id)
    expect(outlay.valid?).to be true
  end
end
