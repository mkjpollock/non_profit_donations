require 'spec_helper'

describe Plan do
  it { should belong_to :company }
  it { should validate_numericality_of :amount }
  it { should validate_presence_of :interval }
  it { should validate_presence_of :currency }
  it { should validate_presence_of :stripeid }
  it { should validate_presence_of :name }
  it { should validate_presence_of :company_id }
  it { should validate_presence_of :amount }
end
