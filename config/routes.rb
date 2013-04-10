PaperBoi::Application.routes.draw do
  root to: "newspapers#new"

  resources :newspapers
end
