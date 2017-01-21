Rails.application.routes.draw do
  patch 'visits/update'

  get 'phis/update'

  patch 'studysubjects/update'

  patch 'phenotypes/update'

  patch 'demographics/update'

  get 'subjects/index'

  post 'subjects/show'

  post 'subjects/find'

  patch 'subjects/update'

  get 'querytables/new'

  get 'querytables/create'

  put 'querytables/update'

  get 'querytables/delete'

  get 'querytables/show'

  get 'querytables/index'

  get 'aliases/index'
  post 'aliases/change_placeholder'
  root 'subjects#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
