
select clients.id, clients.first_name, clients.last_name, clients.email, accounts.account_no, accounts.balance  from clients  left join accounts  on clients.id = accounts.client_id;

create view v_clients_accounts as select clients.id, clients.first_name, clients.last_name, clients.email, accounts.account_no, accounts.balance  from clients  left join accounts  on clients.id = accounts.client_id;

select accounts.account_no, accounts.client_id, account_types.name from accounts  right join account_types on accounts.type = account_types.id ;

create view v_accounts_types as select accounts.account_no, accounts.client_id, account_types.name from accounts  right join account_types on accounts.type = account_types.id;

select transactions.id as transaction, transactions.amount, transactions_types.name as transaction_type  from transactions inner join transactions_types  on transactions.transaction_type = transactions_types.id ;

create view v_transactions_detail as select transactions.id as transaction, transactions.amount, transactions_types.name as transaction_type  from transactions inner join transactions_types  on transactions.transaction_type = transactions_types.id ;

select transactions.id, transactions.amount, transactions_types.name from transactions_types   cross join transactions

create view v_transaactions_types_detail as select transactions.id, transactions.amount, transactions_types.name from transactions_types   cross join transactions