# Translator ES → EN

Dictado por voz para todo Windows. Haces clic en cualquier campo de texto, mantienes un atajo, hablas y sueltas: el texto aparece donde está el cursor. Usa Whisper (`faster-whisper`) **localmente**: el audio no sale de tu PC.

## Uso
1. Primera vez: ejecuta `setup.bat` (crea el entorno en `%LOCALAPPDATA%\TranslatorES\venv`, fuera de OneDrive).
2. Abre la app con `run.bat`. La primera vez descarga el modelo (~500 MB para `small`).
3. Haz clic en el campo donde quieres escribir, **mantén el atajo** (por defecto `Ctrl + Alt + Espacio`), habla y suelta.

## Modos
- Hablo español → escribe en inglés (Whisper traduce directamente)
- Hablo español → escribe en español
- Hablo inglés → escribe en inglés

## Corrección gramatical (modo inglés → inglés)
En **Ajustes → Gramática (EN→EN)**:
- **Sin corrección**: escribe lo que Whisper oyó.
- **LanguageTool (local)**: corrige en tu PC, el texto no sale del equipo. Requiere Java instalado; la primera vez descarga ~250 MB.
- **Claude API**: mejor calidad. El texto (no el audio) se envía a Anthropic. Requiere la variable de entorno `ANTHROPIC_API_KEY`. No dictes datos sensibles o de pacientes con esta opción.
- **OpenAI API**: igual que Claude, pero el texto se envía a OpenAI. Requiere `OPENAI_API_KEY`; el modelo se cambia con `OPENAI_MODEL` (por defecto `gpt-4.1-mini`). Misma advertencia sobre datos sensibles.

Si la corrección falla, se escribe el texto original y se avisa en el historial.

## Notas
- Si la app destino corre como administrador, ejecuta Translator también como administrador.
- Los ajustes se guardan en `%APPDATA%\TranslatorES\settings.json`.
- Whisper solo traduce **a inglés**.
- Algunos antivirus marcan librerías de teclado global (`keyboard`); avisa a IT si hace falta.
