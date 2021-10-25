Rails.application.routes.draw do
  root to: "tasks#index" # トップページはタスクの一覧ページ
  
  get "signup", to: "users#new" # ユーザ登録ページのルーティング設定
  resources :tasks # Taskは全てのアクションが可能
end
