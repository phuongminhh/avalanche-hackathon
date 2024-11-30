CREATE DATABASE IF NOT EXISTS avalanche_hackathon_db;

USE avalanche_hackathon_db;

CREATE TABLE IF NOT EXISTS Wallets (
  id CHAR(36) PRIMARY KEY, -- Use UUID as the id type
  address VARCHAR(255) NOT NULL, 
  private_key VARCHAR(255) NOT NULL, 
  deleted_at TIMESTAMP DEFAULT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS Articles (
  id CHAR(36) PRIMARY KEY, -- Use UUID as the id type
  title VARCHAR(255),  
  content TEXT,  
  url VARCHAR(255), 
  deleted_at TIMESTAMP DEFAULT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS AiEvaluations (
  id CHAR(36) PRIMARY KEY, -- Use UUID as the id type
  data JSON NOT NULL, 
  deleted_at TIMESTAMP DEFAULT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS transaction_history (
  id CHAR(36) PRIMARY KEY, -- Use UUID as the id type
  address VARCHAR(255),  
  amount DECIMAL(20,8),  
  token_symbol VARCHAR(50),  
  type VARCHAR(50),  
  status VARCHAR(50),
  deleted_at TIMESTAMP DEFAULT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS predictions (
  id CHAR(36) PRIMARY KEY, -- Use UUID as the id type
  coin VARCHAR(255),  
  symbol VARCHAR(50), 
  signal VARCHAR(50), 
  signal_strength VARCHAR(50), 
  prediction VARCHAR(255), 
  confidence_level DECIMAL(5, 2),
  market_trend JSON,  
  ai_decision_reasoning TEXT,
  deleted_at TIMESTAMP DEFAULT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

