# Dev Agents — Sistema Multiagente Dinâmico para Desenvolvimento de Software

Sistema de agentes especializados para iniciar, adaptar, evoluir e revisar projetos de software com qualidade profissional. O `dev-agents` não é um produto final: ele é uma base reutilizável de governança, prompts, agentes, templates e metodologia.

Funciona com ferramentas de IA que aceitam instruções de projeto ou contexto de repositório, como GitHub Copilot Agent Mode, Codex, ChatGPT, Claude, Cursor, VS Code Agent Mode e outras.

---

## O Que É

Um framework de trabalho com IA para desenvolvimento de software. Em vez de acionar todos os agentes o tempo inteiro, o sistema usa um **Orquestrador Técnico** para decidir quais agentes são necessários para cada tarefa, fase e tipo de projeto.

Exemplos:

| Situação | Agentes prováveis |
|---|---|
| Ideia inicial de produto | Início de Projeto, Produto, Arquitetura, Documentação |
| Novo app com interface | Produto, Arquitetura, Design System, Acessibilidade, Responsividade, QA |
| Backend/API | Arquitetura, Segurança, Banco de Dados, QA, DevOps, Observabilidade |
| Correção pequena | Programador, Revisor, QA, Guardião de Consistência |
| Tradução opcional | Internacionalização, Tradutor, UX Writing, Responsividade |
| Auditoria geral | Revisor, Segurança, QA, Performance, Documentação, Padronização |

---

## Regra Central

```text
dev-agents = caixa de ferramentas
produto real = repositório próprio
```

Nunca implemente código de produto dentro do repositório `dev-agents`. Copie ou instale os agentes no repositório do produto quando quiser que eles passem a orientar aquele projeto.

---

## Instalação em Um Projeto

### Opção 1: Copiar para o projeto

```bash
git clone https://github.com/MicaelMrozinski/dev-agents.git
cp -r dev-agents/.github/ /caminho/do/seu/projeto/
```

### Opção 2: Script de instalação

Execute na raiz do repositório do produto:

```bash
curl -sL https://raw.githubusercontent.com/MicaelMrozinski/dev-agents/main/install.sh | bash
```

### Opção 3: Submódulo

```bash
cd seu-projeto
git submodule add https://github.com/MicaelMrozinski/dev-agents.git .dev-agents
cp -r .dev-agents/.github/ .github/
```

---

## Como Usar

Use os prompts em `.github/prompts/` conforme o momento:

| Prompt | Quando usar |
|---|---|
| `agent-start.prompt.md` | Iniciar o sistema multiagente |
| `create-project.prompt.md` | Começar um projeto novo em um repositório de produto |
| `adapt-project.prompt.md` | Adaptar um projeto existente à metodologia |
| `continue-project.prompt.md` | Continuar uma fase já iniciada |
| `review-project.prompt.md` | Revisar o projeto |
| `fix-project.prompt.md` | Corrigir problemas encontrados |

O fluxo sempre começa com diagnóstico do projeto e seleção dinâmica de agentes.

---

## Os 24 Agentes

| # | Agente | Responsabilidade |
|---|---|---|
| 1 | Orquestrador Técnico | Decidir agentes, coordenar fases e resolver conflitos |
| 2 | Produto | Transformar ideia em produto claro e MVP |
| 3 | Arquiteto de Software | Estrutura técnica, módulos, camadas e contratos |
| 4 | Pesquisador de Dependências | Verificar ferramentas, versões, licenças e riscos |
| 5 | Programador Principal | Implementar código limpo conforme arquitetura |
| 6 | Revisor de Código | Revisar qualidade técnica e manutenibilidade |
| 7 | QA / Testador | Planejar e executar testes |
| 8 | Segurança / Pentester Ético | Segurança defensiva, OWASP e threat model |
| 9 | Internacionalização | Preparar textos e chaves de tradução |
| 10 | Tradutor e Localizador | Traduzir e adaptar textos quando solicitado |
| 11 | UX Writing | Melhorar clareza, tom e concisão dos textos |
| 12 | Responsividade | Garantir adaptação a telas e textos variáveis |
| 13 | Formatos 9:16 e 16:9 | Adaptar experiência vertical e horizontal |
| 14 | Design System | Tokens, componentes, consistência visual e imagens |
| 15 | Acessibilidade | WCAG, foco, teclado, contraste e leitores de tela |
| 16 | Banco de Dados | Modelagem, migrations, índices e integridade |
| 17 | DevOps / Build / CI | Scripts, pipeline, automação e ambientes |
| 18 | Documentador | README, arquitetura, decisões e handoffs |
| 19 | Performance | Eficiência, bundle, cache e carregamento |
| 20 | Observabilidade | Logs, erros, métricas e rastreabilidade |
| 21 | Migração e Escalabilidade | Crescimento, versionamento e feature flags |
| 22 | Guardião de Consistência | Conflitos, duplicações e coerência entre agentes |
| 23 | Padronização | Convenções globais de código, docs e commits |
| 24 | Início de Projeto | Criar documentação inicial, roadmap e etapas até o objetivo final |

---

## Ativação Dinâmica

Nenhum agente deve atuar apenas por existir. Antes de cada tarefa, o Orquestrador deve registrar:

```text
Tarefa:
Agentes ativados:
Motivo de cada agente:
Agentes não ativados:
Motivo da não ativação:
Critério de conclusão:
```

Agentes opcionais, como Tradutor, Formatos 9:16/16:9, Observabilidade avançada ou geração de imagens, devem ser confirmados com o usuário quando não forem indispensáveis.

---

## Hierarquia de Decisão

Quando houver conflito entre agentes:

1. Segurança
2. Integridade de dados
3. Estabilidade
4. Acessibilidade
5. Responsividade
6. Internacionalização
7. Performance
8. Design visual
9. Conveniência de implementação

---

## Estrutura de Arquivos

```text
.github/
├── copilot-instructions.md
├── AGENTS.md
├── agents/
│   ├── 01-orchestrator.agent.md
│   ├── ...
│   └── 24-project-starter.agent.md
├── prompts/
│   ├── agent-start.prompt.md
│   ├── create-project.prompt.md
│   ├── adapt-project.prompt.md
│   ├── continue-project.prompt.md
│   ├── review-project.prompt.md
│   └── fix-project.prompt.md
└── templates/
    ├── PROJECT_PROFILE.template.md
    ├── PROJECT_ROADMAP.template.md
    ├── AGENT_OPTIONS.template.md
    ├── DECISIONS.template.md
    ├── SESSION_HANDOFF.template.md
    └── TODO.template.md
```

---

## Licença

MIT — use livremente em qualquer projeto.
