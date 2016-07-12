Rails.application.routes.draw do
  resources :cards, except: [:new, :edit] 

  scope '/api/v1' do
    resources :cards, except: [:new, :edit]
  end
  
end
