require "spec_helper"

describe Question do
  it { should validate_presence_of :question }
#  it { should validate_presence_of :user_id }

  it { should belong_to :user }
  it { should have_many :answers }
end
