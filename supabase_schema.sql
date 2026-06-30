-- Tabla de jugadores
CREATE TABLE players (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  name TEXT NOT NULL UNIQUE,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Tabla de puntuaciones por minijuego
CREATE TABLE scores (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  player_id UUID REFERENCES players(id) ON DELETE CASCADE,
  player_name TEXT NOT NULL,
  minijuego TEXT NOT NULL, -- 'canciones' | 'fotos' | 'frases' | 'trivia'
  puntuacion INTEGER NOT NULL DEFAULT 0,
  completado_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  UNIQUE(player_name, minijuego)
);

-- Habilitar realtime
ALTER PUBLICATION supabase_realtime ADD TABLE scores;
ALTER PUBLICATION supabase_realtime ADD TABLE players;

-- Política RLS (Row Level Security) - permitir todo público para este juego
ALTER TABLE players ENABLE ROW LEVEL SECURITY;
ALTER TABLE scores ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Allow all on players" ON players FOR ALL USING (true) WITH CHECK (true);
CREATE POLICY "Allow all on scores" ON scores FOR ALL USING (true) WITH CHECK (true);
