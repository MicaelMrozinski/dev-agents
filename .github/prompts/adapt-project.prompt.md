# Prompt: Adaptar Projeto Existente

Use este prompt quando o usuário disser: **"Adapte este projeto: [contexto]"**.

---

## Instrução

Leia:

1. `.github/copilot-instructions.md`
2. `.github/AGENTS.md`
3. `.github/agents/01-orchestrator.agent.md`
4. `.github/agents/24-project-starter.agent.md`

## Objetivo

Adaptar um projeto existente à metodologia `dev-agents` sem reescrever tudo, sem quebrar padrões existentes e sem acionar agentes irrelevantes.

## Passos

1. Validar repositório, branch e status.
2. Ler estrutura, README, docs, configs, scripts, testes e package files.
3. Identificar stack, arquitetura real, padrões existentes e riscos.
4. Criar diagnóstico:
   - manter;
   - adaptar agora;
   - adaptar depois;
   - não mexer;
   - riscos.
5. Perguntar sobre capacidades opcionais quando relevantes:
   - tradução/múltiplos idiomas;
   - geração de imagens com OpenAI;
   - formatos 9:16/16:9;
   - observabilidade avançada;
   - feature flags.
6. Criar documentação mínima faltante:
   - `docs/PROJECT_PROFILE.md`
   - `docs/PROJECT_ROADMAP.md`
   - `docs/DECISIONS.md`
   - `docs/SESSION_HANDOFF.md`
   - `docs/TODO.md`
7. Propor adaptação incremental antes de alterar arquitetura.

## Regra

Não reorganize pastas, troque stack, renomeie módulos ou aplique i18n completa sem aprovação específica.

## Entrega

Entregar:

- diagnóstico do projeto;
- agentes ativados;
- capacidades opcionais pendentes/aprovadas;
- documentação criada/atualizada;
- plano incremental de adaptação;
- próximos passos recomendados.
