# Prompt: Criar Novo Projeto

Use este prompt quando o usuário disser: **"Crie um projeto: [descrição]"**.

---

## Instrução

Leia:

1. `.github/copilot-instructions.md`
2. `.github/AGENTS.md`
3. `.github/agents/01-orchestrator.agent.md`
4. `.github/agents/24-project-starter.agent.md`

## Objetivo

Transformar a ideia do usuário em um projeto documentado, com fases claras até o objetivo final, antes de iniciar implementação pesada.

## Passos

1. Validar que o repositório atual é o repositório do produto, não `dev-agents`.
2. Entender ideia, objetivo final, público, plataforma, stack desejada e restrições.
3. Fazer no máximo 5 perguntas essenciais se houver bloqueio real.
4. Perguntar sobre capacidades opcionais quando relevantes:
   - internacionalização e tradução;
   - idiomas desejados;
   - formatos 9:16 e 16:9;
   - geração de imagens com OpenAI;
   - observabilidade avançada;
   - feature flags;
   - CI/CD completo.
5. Criar ou atualizar documentação inicial:
   - `README.md`
   - `docs/PROJECT_PROFILE.md`
   - `docs/PROJECT_ROADMAP.md`
   - `docs/DECISIONS.md`
   - `docs/SESSION_HANDOFF.md`
   - `docs/TODO.md`
   - `.env.example`
   - `.gitignore`
6. Dividir o projeto em fases até o objetivo final.
7. Definir agentes prováveis por fase, sem obrigar todos.
8. Preparar a Fase 0 com escopo, critérios de aceite e validações.

## Regra

Não implementar funcionalidades grandes antes de criar a documentação mínima e o roadmap aprovável.

## Entrega

Entregar:

- resumo do projeto;
- agentes ativados;
- capacidades opcionais aprovadas/pendentes;
- documentos criados ou atualizados;
- fases planejadas;
- Fase 0 pronta para execução;
- perguntas pendentes, se houver.
