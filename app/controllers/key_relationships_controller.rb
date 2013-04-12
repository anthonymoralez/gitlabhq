class KeyRelationshipsController < ProjectResourceController
  def create
    rel = KeyRelationship.create(params[:rel])
    
    redirect_to project_deploy_keys_path(@project)
  end
  
  def destroy
    KeyRelationship.find(params[:id]).destroy

    redirect_to project_deploy_keys_path(@project)
  end
end
