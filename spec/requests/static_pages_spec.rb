require 'spec_helper'

describe "StaticPages" do
  subject { page }
  before { visit root_path }
  describe "Home Page" do
     it { should have_selector('h1',    text: 'Torneo Dream Team') }
     it { should have_selector('title', text: full_title('')) }
 
  end
end
