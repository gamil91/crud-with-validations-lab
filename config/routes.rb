Rails.application.routes.draw do
  resources :songs
  patch '/songs/:id/edit', to: 'songs#edit'

end
