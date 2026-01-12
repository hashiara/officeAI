CREATE TABLE IF NOT EXISTS chat_history (
    id SERIAL PRIMARY KEY,
    conversation_id VARCHAR(100) NOT NULL,
    user_id VARCHAR(100) NOT NULL,
    message TEXT NOT NULL,
    role VARCHAR(20) NOT NULL, -- 'user' or 'assistant'
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 会話単位での履歴取得に便利なインデックス
CREATE INDEX IF NOT EXISTS idx_chat_history_conversation ON chat_history(conversation_id);
