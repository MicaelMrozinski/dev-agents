# Guia de Uso — Sistema Multiagente Dinâmico

Este documento explica como instalar e usar o `dev-agents` em projetos reais.

---

## Conceito Principal

O `dev-agents` não deve receber código de produto. Ele fornece agentes, prompts, templates e metodologia. Para usar em um produto, instale a pasta `.github/` no repositório do produto.

O Orquestrador Técnico sempre começa avaliando o contexto e escolhe somente os agentes necessários para a tarefa.

---

## Instalação

### Opção A: Copiar manualmente

```bash
git clone https://github.com/MicaelMrozinski/dev-agents.git /tmp/dev-agents
cp -r /tmp/dev-agents/.github/ /caminho/do/seu/projeto/
```

### Opção B: Script de instalação

Execute na raiz do repositório do produto:

```bash
curl -sL https://raw.githubusercontent.com/MicaelMrozinski/dev-agents/main/install.sh | bash
```

### Opção C: Submódulo

```bash
git submodule add https://github.com/MicaelMrozinski/dev-agents.git .dev-agents
cp -r .dev-agents/.github/ .github/
```

---

## Uso em Ferramentas de IA

### GitHub Copilot / VS Code Agent Mode

1. Copie `.github/` para a raiz do projeto.
2. Faça commit e push.
3. Abra o Copilot Chat no modo Agent.
4. Use `@workspace /agent-start` ou cole `.github/prompts/agent-start.prompt.md`.

### Codex, ChatGPT, Claude, Cursor ou outra IA

1. Forneça o conteúdo de `.github/copilot-instructions.md`.
2. Adicione `.github/AGENTS.md` quando precisar de governança completa.
3. Use o prompt adequado da pasta `.github/prompts/`.

---

## Prompts Disponíveis

| Prompt | Quando usar |
|---|---|
| `agent-start.prompt.md` | Iniciar o sistema multiagente |
| `create-project.prompt.md` | Criar plano, docs e fases de um projeto novo |
| `adapt-project.prompt.md` | Adaptar projeto existente à metodologia |
| `continue-project.prompt.md` | Continuar uma fase ou tarefa |
| `review-project.prompt.md` | Auditar qualidade, segurança e consistência |
| `fix-project.prompt.md` | Corrigir problemas encontrados |

---

## Novo Projeto

Fluxo recomendado:

1. Crie um repositório dedicado para o produto.
2. Instale `.github/` do `dev-agents` nesse repositório.
3. Execute `create-project.prompt.md`.
4. O Agente de Início de Projeto deve criar documentação inicial e roadmap.
5. O Orquestrador deve perguntar quais capacidades opcionais serão usadas, como tradução, formatos 9:16/16:9, observabilidade avançada ou geração de imagens.
6. Só depois comece a implementação da Fase 0.

---

## Projeto Existente

Fluxo recomendado:

1. Execute `adapt-project.prompt.md`.
2. O Orquestrador deve ler estrutura, scripts, documentação e decisões existentes.
3. O sistema deve propor adaptação incremental.
4. Não reorganize todo o projeto sem aprovação.
5. Priorize riscos críticos, documentação de continuidade e validações.

---

## Personalização por Projeto

Após instalar a estrutura base, você pode:

1. Criar regras específicas em `.github/instructions/`.
2. Criar prompts próprios em `.github/prompts/`.
3. Registrar opções aprovadas em `docs/PROJECT_PROFILE.md`.
4. Adicionar documentação específica em `docs/`.

Evite editar agentes base sem necessidade. Para regras específicas do produto, prefira arquivos complementares.

---

## Atualização

Para atualizar os agentes:

```bash
cd .dev-agents
git pull origin main
cp -r .github/ ../
```

Se instalou sem submódulo, copie novamente a pasta `.github/` do repositório atualizado e revise diferenças antes de sobrescrever personalizações do projeto.
