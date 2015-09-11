Rails.application.routes.draw do

  get 'deals/index'

  get 'deals/show'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  root 'home#index'
  scope '/api' do
        scope '/v1' do
            scope '/deals' do
              get '/' => 'deals#index'
              scope '/:name' do
                get '/' => 'deals#show'
              end
            end
        end
  end


end
