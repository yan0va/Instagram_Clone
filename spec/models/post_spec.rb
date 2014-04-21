require 'spec_helper'

describe Post do
  context 'validations' do
    let(:post) { Post.new }

    specify 'description is required' do
      expect(post).to have(1).errors_on(:description)
    end
  end
end