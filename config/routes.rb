Surveyor::Engine.routes.draw do

  get '/', to: 'surveyor#new', as: 'available_surveys'
  post '/:survey_code', to: 'surveyor#create', as: 'take_survey'
  get '/:survey_code', to: 'surveyor#export', as: 'export_survey'
  get '/:survey_code/:response_set_code', to: 'surveyor#show', as: 'view_my_survey'
  get '/:survey_code/:response_set_code/take', to: 'surveyor#edit', as: 'edit_my_survey'
  put '/:survey_code/:response_set_code', to: 'surveyor#update', as: 'update_my_survey'

end
