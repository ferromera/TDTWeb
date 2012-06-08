require 'spec_helper'

describe "AuthenticationPages" do
   describe "with valid information" do
      let(:user) { FactoryGirl.create(:user) }
      before { sign_in user }

      it { should have_selector('title', text: user.name) }
      it { should have_link('Perfil',  href: user_path(user)) }
      it { should have_link('Ajustes', href: edit_user_path(user)) }
      it { should have_link('Salir', href: signout_path) }
      it { should_not have_link('Registrate', href: signin_path) }
     
    end
    describe "authorization" do

    describe "for non-signed-in users" do
      let(:user) { FactoryGirl.create(:user) }

      describe "in the Users controller" do

        describe "visiting the edit page" do
          before { visit edit_user_path(user) }
          it { should have_selector('title', text: 'Sign in') }
        end

        describe "submitting to the update action" do
          before { put user_path(user) }
          specify { response.should redirect_to(signin_path) }
        end
      end
    end
  end
end
