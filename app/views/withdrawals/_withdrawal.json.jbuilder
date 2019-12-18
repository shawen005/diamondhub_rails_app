json.extract! withdrawal, :id, :user_id, :invest_id, :Account, :Amount, :charges, :payable, :w_date, :created_at, :updated_at
json.url withdrawal_url(withdrawal, format: :json)
