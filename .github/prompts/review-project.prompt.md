# Prompt: Revisar Projeto

Use este prompt quando o usuário disser: **"Revise este projeto"**.

---

## Instrução

Leia `.github/copilot-instructions.md` e `.github/AGENTS.md` antes de iniciar.

## Passos

1. Validar repositório, branch e status.
2. Identificar tipo de projeto, stack, scripts e documentação.
3. Selecionar agentes de revisão conforme o projeto real.
4. Não acionar revisores irrelevantes.
5. Classificar achados por severidade.
6. Recomendar ordem de correção.

## Revisores Possíveis

Acione conforme necessidade:

| Área | Agentes |
|---|---|
| Qualidade técnica | Revisor de Código, Padronização, Guardião |
| Segurança | Segurança, DevOps, Banco de Dados |
| Testes | QA |
| UI/UX | Design System, UX Writing, Responsividade, Acessibilidade |
| Tradução | i18n, Tradutor, Responsividade |
| Performance | Performance |
| Documentação | Documentador, Início de Projeto quando docs base faltarem |
| Dependências | Pesquisador, Segurança |

## Entrega

Entregar relatório consolidado com:

| Campo | Descrição |
|---|---|
| Problema | Issue encontrada |
| Severidade | Crítico, alto, médio, baixo |
| Arquivos afetados | Onde está o problema |
| Agente responsável | Quem deveria tratar |
| Correção recomendada | Como resolver |
| Risco | Impacto de não corrigir |
| Prioridade | Ordem recomendada |

Finalize com uma recomendação: aprovado, aprovado com ressalvas, reprovado ou pendente de validação.
