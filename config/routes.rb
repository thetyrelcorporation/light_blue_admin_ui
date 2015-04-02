Rails.application.routes.draw do
	root to: "examples#dashboard"
	match "examples/upload" => "examples#upload", via: [:get, :post]
	resources :examples, only: [:show]
	resources :moc_apis, only: [:show]
	get "examples/moc_apis/:id" => "moc_apis#show"
end
