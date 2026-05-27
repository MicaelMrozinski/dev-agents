# Prompt: Continuar Projeto Existente

Use este prompt quando o usuário disser: **"Continue o projeto: [contexto]"**.

---

## Instrução

Leia:

1. `.github/copilot-instructions.md`
2. `.github/AGENTS.md`
3. `README.md`
4. `docs/PROJECT_PROFILE.md`, se existir
5. `docs/PROJECT_ROADMAP.md`, se existir
6. `docs/DECISIONS.md`, se existir
7. `docs/SESSION_HANDOFF.md`, se existir
8. `docs/TODO.md`, se existir

## Passos

1. Validar repositório, branch e status.
2. Identificar fase atual e próximo passo recomendado.
3. Selecionar agentes necessários para a continuação.
4. Respeitar decisões anteriores.
5. Não iniciar fase nova se a fase atual tiver pendências bloqueantes.
6. Implementar apenas o escopo da tarefa.
7. Validar com comandos reais do projeto.
8. Atualizar `SESSION_HANDOFF`, `TODO` e docs afetados.

## Antes de Alterar

Informe brevemente:

- o que será feito;
- por que;
- agentes ativados;
- arquivos ou áreas afetadas;
- riscos;
- validação planejada.

## Entrega

Entregar:

- resumo;
- arquivos alterados;
- validações executadas;
- decisões registradas;
- pendências;
- próximo passo recomendado.
