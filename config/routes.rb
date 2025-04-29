Rails.application.routes.draw do
  
  get("/", {:controller => "calculator", :action => "square_calc"})

  get("/square/new", {:controller => "calculator", :action => "square_calc"})
  get("/square/results", {:controller => "calculator", :action => "square_results"})

  get("/square_root/new", {:controller => "calculator", :action => "square_root_calc"})
  get("/square_root/results", {:controller => "calculator", :action => "square_root_results"})

  get("/random/new", {:controller => "calculator", :action => "random_calc"})
  get("/random/results", {:controller => "calculator", :action => "random_results"})
  
  get("/payment/new", {:controller => "calculator", :action => "payment_calc"})
  get("/payment/results", {:controller => "calculator", :action => "payment_results"})


end
