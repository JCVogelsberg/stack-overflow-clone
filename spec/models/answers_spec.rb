require "spec_helper"

describe Answer do
  it { should validate_presence_of :reply }
  it { should validate_presence_of :user_id }
  it { should validate_presence_of :question_id }

  it { should belong_to :user}
  it { should belong_to :question }
end
