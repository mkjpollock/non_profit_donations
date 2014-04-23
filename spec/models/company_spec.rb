require 'spec_helper'

describe Company do
  it { should belong_to :user }
  it { should have_many :plans }
end
