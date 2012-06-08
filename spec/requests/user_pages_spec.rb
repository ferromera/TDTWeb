require 'spec_helper'

describe "User pages" do

  subject { page }

  describe "profile page" do
    let(:user) { FactoryGirl.create(:user) }
    before { visit user_path(user) }

    it { should have_selector('h1',    text: user.name) }
    it { should have_selector('title', text: user.name) }
  end
  
  describe "signup" do

    before { visit signup_path }

    let(:submit) { "Create my account" }

    describe "with invalid information" do
      it "should not create a user" do
        expect { click_button submit }.not_to change(User, :count)
      end
    end

    describe "with valid information" do
      before do
        fill_in "Nombre",         with: "Example"
        fill_in "Apellido",         with: "User"
        fill_in "Email",        with: "user@example.com"
        fill_in "Password",     with: "foobar"
        fill_in "Confirmacion", with: "foobar"
      end

      it "should create a user" do
        expect { click_button submit }.to change(User, :count).by(1)
      end
    end
  end
  describe "edit" do
    let(:user) { FactoryGirl.create(:user) }
    before { visit edit_user_path(user) }

    describe "page" do
      it { should have_selector('h1',    text: "Actualiza tu Perfil") }
      it { should have_selector('title', text: "Editar Usuario") }
      it { should have_link('cambiar', href: 'http://gravatar.com/emails') }
    end

    describe "with invalid information" do
      before { click_button "Guardar cambios" }

      it { should have_content('error') }
    end
     describe "with valid information" do
      let(:new_name)  { "New Name2" }
      let(:new_lastname)  { "Last Name2" }
      let(:new_email) { "new2@example.com" }
      before do
        fill_in "Nombre",             with: new_name
        fill_in "Email",            with: new_lastname
        fill_in "Lastname",         with: new_email
        fill_in "Pass",         with: user.password
        fill_in "Confirm Pass", with: user.password
        click_button "Guardar cambios"
      end

      it { should have_selector('title', text: new_name) }
      it { should have_selector('div.alert.alert-success') }
      it { should have_link('Salir', href: signout_path) }
      specify { user.reload.name.should  == new_name }
      specify { user.reload.lastname.should  == new_name }
      specify { user.reload.email.should == new_email }
    end
  end
end