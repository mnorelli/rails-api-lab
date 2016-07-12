Rails.application.routes.draw do

  scope '/api/v1' do
    resources :cards, except: [:new, :edit]
  end
  
end
