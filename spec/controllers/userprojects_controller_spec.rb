require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe UserprojectsController do

  # This should return the minimal set of attributes required to create a valid
  # Userproject. As you add validations to Userproject, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # UserprojectsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all userprojects as @userprojects" do
      userproject = Userproject.create! valid_attributes
      get :index, {}, valid_session
      assigns(:userprojects).should eq([userproject])
    end
  end

  describe "GET show" do
    it "assigns the requested userproject as @userproject" do
      userproject = Userproject.create! valid_attributes
      get :show, {:id => userproject.to_param}, valid_session
      assigns(:userproject).should eq(userproject)
    end
  end

  describe "GET new" do
    it "assigns a new userproject as @userproject" do
      get :new, {}, valid_session
      assigns(:userproject).should be_a_new(Userproject)
    end
  end

  describe "GET edit" do
    it "assigns the requested userproject as @userproject" do
      userproject = Userproject.create! valid_attributes
      get :edit, {:id => userproject.to_param}, valid_session
      assigns(:userproject).should eq(userproject)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Userproject" do
        expect {
          post :create, {:userproject => valid_attributes}, valid_session
        }.to change(Userproject, :count).by(1)
      end

      it "assigns a newly created userproject as @userproject" do
        post :create, {:userproject => valid_attributes}, valid_session
        assigns(:userproject).should be_a(Userproject)
        assigns(:userproject).should be_persisted
      end

      it "redirects to the created userproject" do
        post :create, {:userproject => valid_attributes}, valid_session
        response.should redirect_to(Userproject.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved userproject as @userproject" do
        # Trigger the behavior that occurs when invalid params are submitted
        Userproject.any_instance.stub(:save).and_return(false)
        post :create, {:userproject => {}}, valid_session
        assigns(:userproject).should be_a_new(Userproject)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Userproject.any_instance.stub(:save).and_return(false)
        post :create, {:userproject => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested userproject" do
        userproject = Userproject.create! valid_attributes
        # Assuming there are no other userprojects in the database, this
        # specifies that the Userproject created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Userproject.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => userproject.to_param, :userproject => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested userproject as @userproject" do
        userproject = Userproject.create! valid_attributes
        put :update, {:id => userproject.to_param, :userproject => valid_attributes}, valid_session
        assigns(:userproject).should eq(userproject)
      end

      it "redirects to the userproject" do
        userproject = Userproject.create! valid_attributes
        put :update, {:id => userproject.to_param, :userproject => valid_attributes}, valid_session
        response.should redirect_to(userproject)
      end
    end

    describe "with invalid params" do
      it "assigns the userproject as @userproject" do
        userproject = Userproject.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Userproject.any_instance.stub(:save).and_return(false)
        put :update, {:id => userproject.to_param, :userproject => {}}, valid_session
        assigns(:userproject).should eq(userproject)
      end

      it "re-renders the 'edit' template" do
        userproject = Userproject.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Userproject.any_instance.stub(:save).and_return(false)
        put :update, {:id => userproject.to_param, :userproject => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested userproject" do
      userproject = Userproject.create! valid_attributes
      expect {
        delete :destroy, {:id => userproject.to_param}, valid_session
      }.to change(Userproject, :count).by(-1)
    end

    it "redirects to the userprojects list" do
      userproject = Userproject.create! valid_attributes
      delete :destroy, {:id => userproject.to_param}, valid_session
      response.should redirect_to(userprojects_url)
    end
  end

end
