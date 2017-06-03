Rails.application.routes.draw do
  root    'static_pages#home'
  get     '/about_me',            to: 'static_pages#about_me'
  get     '/video_submission',    to: 'static_pages#video_submission'
  get     '/contact_me',          to: 'static_pages#contact_me'
  post    '/contact_me',          to: 'static_pages#contact_me'
  get     '/login',               to: 'sessions#new'
  post    '/login',               to: 'sessions#create'
  delete  '/logout',              to: 'sessions#destroy'
  post    '/slack_me',            to: 'static_pages#slack_me'
  resources :blogs
end
