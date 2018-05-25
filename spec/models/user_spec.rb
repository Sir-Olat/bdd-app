

RSpec.describe User, type: :model do
  it { is_expected.to have_many(:books).dependent(:delete_all) }
end
