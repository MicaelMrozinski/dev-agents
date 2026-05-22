# Dev Agents — Sistema Multiagente Profissional para Desenvolvimento de Software

Sistema de **23 agentes especializados** que trabalham em conjunto para garantir que todo software produzido tenha padrão profissional desde o início. Funciona no **Manus**, **GitHub Copilot**, **VS Code Agent Mode**, **ChatGPT**, **Claude** e qualquer outra IA que aceite instruções de sistema.

---

## O que é

Um framework de governança para desenvolvimento de software com IA. Ao invés de simplesmente gerar código, o sistema atua como uma equipe completa de engenharia:

| Fase | Agentes Principais |
|------|-------------------|
| Entendimento | Orquestrador, Produto |
| Planejamento | Arquiteto, Pesquisador, Segurança, Banco de Dados |
| Preparação | DevOps, Design System, Internacionalização |
| Implementação | Programador, todos os revisores |
| Revisão | Revisor, Segurança, QA, Guardião de Consistência |
| Validação | QA, Performance, Acessibilidade, Responsividade |
| Entrega | Documentador, DevOps |

---

## Instalação

### Opção 1: Copiar para seu projeto

Copie a pasta `.github/` para a raiz de qualquer repositório:

```bash
# Clone este repositório
git clone https://github.com/MicaelMrozinski/dev-agents.git

# Copie a pasta .github para seu projeto
cp -r dev-agents/.github/ /caminho/do/seu/projeto/
```

### Opção 2: Usar como submódulo

```bash
cd seu-projeto
git submodule add https://github.com/MicaelMrozinski/dev-agents.git .dev-agents
ln -s .dev-agents/.github .github
```

### Opção 3: Usar como referência no Manus

Basta vincular este repositório ao seu projeto no Manus. Os agentes serão carregados automaticamente.

---

## Como Usar

### No Manus

1. Vincule este repositório ao seu projeto
2. Use os comandos:
   - `Crie um projeto: [descrição]` — Executa o fluxo completo de 7 fases
   - `Continue o projeto: [contexto]` — Lê estado atual e continua
   - `Revise este projeto` — Aciona todos os agentes de revisão
   - `Corrija este projeto` — Analisa e aplica correções em etapas

### No VS Code / GitHub Copilot

1. Copie `.github/` para a raiz do seu repositório
2. Os arquivos `.agent.md` criam agentes personalizados no Agent Mode
3. Use o prompt `.github/prompts/agent-start.prompt.md` para iniciar

### No ChatGPT / Claude / Outra IA

1. Copie o conteúdo de `.github/copilot-instructions.md` como instrução de sistema
2. A IA executará os 23 papéis em sequência como revisões internas

---

## Os 23 Agentes

| # | Agente | Responsabilidade |
|---|--------|-----------------|
| 1 | Orquestrador Técnico | Coordenar todos os agentes, resolver conflitos |
| 2 | Produto | Transformar ideia em produto claro, definir MVP |
| 3 | Arquiteto de Software | Estrutura técnica, módulos, camadas |
| 4 | Pesquisador de Dependências | Verificar ferramentas, versões, vulnerabilidades |
| 5 | Programador Principal | Implementar código limpo |
| 6 | Revisor de Código | Revisar qualidade técnica |
| 7 | QA / Testador | Testes unitários, integração, e2e |
| 8 | Segurança / Pentester | Segurança defensiva, OWASP, threat model |
| 9 | Internacionalização | Remover textos do código, criar chaves |
| 10 | Tradutor e Localizador | Tradução e adaptação cultural |
| 11 | UX Writing | Clareza e concisão dos textos |
| 12 | Responsividade | Layout adaptável, breakpoints |
| 13 | Formatos 9:16 e 16:9 | Vertical e horizontal |
| 14 | Design System | Tokens, componentes, consistência visual |
| 15 | Acessibilidade | Usabilidade universal, WCAG |
| 16 | Banco de Dados | Modelagem, migrations, integridade |
| 17 | DevOps / Build / CI | Scripts, pipeline, automação |
| 18 | Documentador | README, arquitetura, decisões técnicas |
| 19 | Performance | Eficiência, bundle, lazy loading |
| 20 | Observabilidade | Logs, erros, monitoramento |
| 21 | Migração e Escalabilidade | Crescimento futuro, feature flags |
| 22 | Guardião de Consistência | Impedir conflitos entre agentes |
| 23 | Padronização | Padrões globais de código e estrutura |

---

## Hierarquia de Decisão

Quando houver conflito entre agentes:

1. **Segurança** (prioridade máxima)
2. **Integridade de dados**
3. **Estabilidade**
4. **Acessibilidade**
5. **Responsividade**
6. **Internacionalização**
7. **Performance**
8. **Design visual**
9. **Conveniência de implementação** (prioridade mínima)

---

## Estrutura de Arquivos

```
.github/
├── copilot-instructions.md       # Regras globais obrigatórias
├── AGENTS.md                     # Hierarquia, coordenação, fluxo
├── agents/
│   ├── 01-orchestrator.agent.md
│   ├── 02-product.agent.md
│   ├── 03-architecture.agent.md
│   ├── 04-research.agent.md
│   ├── 05-programmer.agent.md
│   ├── 06-code-reviewer.agent.md
│   ├── 07-qa-testing.agent.md
│   ├── 08-security.agent.md
│   ├── 09-i18n.agent.md
│   ├── 10-translator.agent.md
│   ├── 11-ux-writing.agent.md
│   ├── 12-responsiveness.agent.md
│   ├── 13-aspect-ratio.agent.md
│   ├── 14-design-system.agent.md
│   ├── 15-accessibility.agent.md
│   ├── 16-database.agent.md
│   ├── 17-devops.agent.md
│   ├── 18-documentation.agent.md
│   ├── 19-performance.agent.md
│   ├── 20-observability.agent.md
│   ├── 21-scalability.agent.md
│   ├── 22-consistency-guardian.agent.md
│   └── 23-standardization.agent.md
├── instructions/
│   └── (regras específicas por domínio)
└── prompts/
    ├── create-project.prompt.md
    ├── continue-project.prompt.md
    ├── review-project.prompt.md
    └── fix-project.prompt.md
```

---

## Licença

MIT — Use livremente em qualquer projeto.
