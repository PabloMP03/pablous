# PabloUs 🎮

## Estructura del proyecto
```
pablous/
├── index.html          ← El juego completo
├── vercel.json         ← Config de hosting
├── supabase_schema.sql ← SQL para la base de datos
└── public/
    ├── audio/          ← Los 12 fragmentos de canciones
    └── fotos/          ← Las 9 fotos pixeladas
```

## Paso 1 — Configurar Supabase

1. Ve a https://supabase.com → tu proyecto
2. En el menú izquierdo → **SQL Editor**
3. Pega todo el contenido de `supabase_schema.sql` y dale a **Run**
4. ✅ Listo, las tablas están creadas

## Paso 2 — Subir a GitHub

```bash
# En la carpeta del proyecto
git init
git add .
git commit -m "PabloUs v1"
git remote add origin https://github.com/TU_USUARIO/pablous.git
git push -u origin main
```

## Paso 3 — Deploy en Vercel

1. Ve a https://vercel.com → **New Project**
2. Importa tu repo `pablous` de GitHub
3. En **Root Directory** deja `/` (la raíz)
4. Dale a **Deploy**
5. En ~30 segundos tienes tu URL: `pablous.vercel.app` o similar

## Paso 4 — Compartir

Comparte la URL con tu grupo y a jugar 🎉

## Fechas de desbloqueo

| Minijuego | Fecha |
|---|---|
| 🎵 Adivina la canción | 4 de Julio 00:00 |
| 📸 Adivina la foto | 11 de Julio 00:00 |
| 💬 Completa la frase | 11 de Julio 00:00 |
| 🧠 Trivia | 18 de Julio 00:00 |
