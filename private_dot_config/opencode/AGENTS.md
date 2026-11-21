# Skill & Automazioni Personali dell'Utente

> **Skill Personali**: Le skill personali che l'utente gestisce in autonomia si trovano nella directory indicata dalla variabile d'ambiente `$USER_SKILLS_DIR`. Non assumere un percorso fisso: risolvi sempre la directory da `$USER_SKILLS_DIR`. Consulta sempre preventivamente il file `$USER_SKILLS_DIR/README.md` per individuare la skill corretta e i relativi trigger operativi prima di eseguire azioni.

## Immagini e contesto visivo

> **Limite immagini**: il modello configurato (DeepRelay / DeepSeek V4.1 Flash) accetta al massimo **16 immagini per richiesta** e a ogni turno viene reinviata l'intera cronologia della sessione. Non leggere quindi più di **16 immagini in totale per sessione**, contando anche quelle già presenti nella conversazione.

- Prima di leggere file immagine, stima quante immagini sono già state caricate nella sessione; non rileggere un'immagine già letta.
- Una volta analizzata un'immagine, riporta i dettagli rilevanti in testo (markdown, note o script) e continua a lavorare su quelli.
- Se il budget sta per esaurirsi, o se una richiesta supererebbe le 16 immagini, fermati e chiedi all'utente di aprire una nuova sessione invece di continuare a leggere immagini.
- L'errore `A request may carry at most 16 images; this one has 18.` blocca l'intera sessione (anche `/compact` fallisce): segnalalo subito e proponi una nuova sessione, oppure la rimozione delle immagini dalla cronologia previo backup.
