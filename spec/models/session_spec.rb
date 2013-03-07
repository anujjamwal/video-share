require 'spec_helper'

describe Session do
  context :validations do
    it { should have_attached_file(:video) }
    it { should validate_attachment_presence(:video) }
  end
end
