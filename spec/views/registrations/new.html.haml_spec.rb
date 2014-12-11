require 'rails_helper'

RSpec.describe "registrations/new.html.haml", :type => :view do
  before do
    assign(:user, User.new)
    render
  end

  it { rendered }
end
