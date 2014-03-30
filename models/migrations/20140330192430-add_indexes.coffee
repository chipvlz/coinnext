module.exports =
  up: (migration, DataTypes, done) ->
    migration.addIndex "auth_stats", ["user_id"]
    migration.addIndex "auth_stats", ["ip"]
    migration.addIndex "auth_stats", ["created_at"]
    
    migration.addIndex "chats", ["user_id"]
    migration.addIndex "chats", ["created_at"]

    migration.addIndex "market_stats", ["type"]

    migration.addIndex "orders", ["user_id"]
    migration.addIndex "orders", ["action"]
    migration.addIndex "orders", ["buy_currency"]
    migration.addIndex "orders", ["sell_currency"]
    migration.addIndex "orders", ["status"]
    migration.addIndex "orders", ["close_time"]
    migration.addIndex "orders", ["created_at"]

    migration.addIndex "payments", ["user_id"]
    migration.addIndex "payments", ["wallet_id"]
    migration.addIndex "payments", ["status"]
    migration.addIndex "payments", ["created_at"]

    migration.addIndex "trade_stats", ["type"]
    migration.addIndex "trade_stats", ["start_time"]

    migration.addIndex "transactions", ["user_id"]
    migration.addIndex "transactions", ["wallet_id"]
    migration.addIndex "transactions", ["balance_loaded"]
    migration.addIndex "transactions", ["created_at"]

    migration.addIndex "users", ["updated_at"]
    migration.addIndex "users", ["created_at"]

    migration.addIndex "user_tokens", ["user_id"]
    migration.addIndex "user_tokens", ["type"]
    migration.addIndex "user_tokens", ["token"]
    migration.addIndex "user_tokens", ["active"]
    migration.addIndex "user_tokens", ["created_at"]
    
    migration.addIndex "wallets", ["user_id"]
    migration.addIndex "wallets", ["address"]
    migration.addIndex "wallets", ["currency"]
    migration.addIndex "wallets", ["balance"]
    migration.addIndex "wallets", ["created_at"]
    
    done()
    return

  down: (migration, DataTypes, done) ->
    migration.removeIndex "auth_stats", ["user_id"]
    migration.removeIndex "auth_stats", ["ip"]
    migration.removeIndex "auth_stats", ["created_at"]

    migration.removeIndex "chats", ["user_id"]
    migration.removeIndex "chats", ["created_at"]

    migration.removeIndex "market_stats", ["type"]

    migration.removeIndex "orders", ["user_id"]
    migration.removeIndex "orders", ["action"]
    migration.removeIndex "orders", ["buy_currency"]
    migration.removeIndex "orders", ["sell_currency"]
    migration.removeIndex "orders", ["status"]
    migration.removeIndex "orders", ["close_time"]
    migration.removeIndex "orders", ["created_at"]

    migration.removeIndex "payments", ["user_id"]
    migration.removeIndex "payments", ["wallet_id"]
    migration.removeIndex "payments", ["status"]
    migration.removeIndex "payments", ["created_at"]

    migration.removeIndex "trade_stats", ["type"]
    migration.removeIndex "trade_stats", ["start_time"]

    migration.removeIndex "transactions", ["user_id"]
    migration.removeIndex "transactions", ["wallet_id"]
    migration.removeIndex "transactions", ["balance_loaded"]
    migration.removeIndex "transactions", ["created_at"]

    migration.removeIndex "users", ["updated_at"]
    migration.removeIndex "users", ["created_at"]

    migration.removeIndex "user_tokens", ["user_id"]
    migration.removeIndex "user_tokens", ["type"]
    migration.removeIndex "user_tokens", ["token"]
    migration.removeIndex "user_tokens", ["active"]
    migration.removeIndex "user_tokens", ["created_at"]

    migration.removeIndex "wallets", ["user_id"]
    migration.removeIndex "wallets", ["address"]
    migration.removeIndex "wallets", ["currency"]
    migration.removeIndex "wallets", ["balance"]
    migration.removeIndex "wallets", ["created_at"]

    done()
    return