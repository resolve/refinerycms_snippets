require 'spec_helper'

module Refinery
  module Snippets
    describe Snippet do
      describe "validations", type: :model do
        subject do
          FactoryGirl.create(:snippet,
          :name => "Refinery CMS")
        end

        it { should be_valid }
        its(:errors) { should be_empty }
        its(:name) { should == "Refinery CMS" }
      end
    end
  end
end
