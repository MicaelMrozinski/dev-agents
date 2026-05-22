# Guia de Uso — Sistema Multiagente

Este documento explica como utilizar o sistema multiagente em cada plataforma.

---

## No Manus

### Configuração

1. Vincule o repositório `dev-agents` ao seu projeto no Manus (na seção de repositórios GitHub)
2. Alternativamente, copie a pasta `.github/` para o repositório do seu projeto

### Uso

Ao iniciar uma tarefa de desenvolvimento, use um dos comandos:

| Comando | Quando usar |
|---------|-------------|
| `Crie um projeto: [descrição]` | Novo projeto do zero |
| `Continue o projeto: [contexto]` | Continuar trabalho existente |
| `Revise este projeto` | Auditoria completa |
| `Corrija este projeto` | Aplicar correções |

O Manus lerá automaticamente os arquivos `.github/` e seguirá o sistema multiagente.

---

## No VS Code com GitHub Copilot

### Configuração

1. Copie a pasta `.github/` para a raiz do seu repositório
2. Faça commit e push
3. Abra o VS Code com o Copilot Agent Mode habilitado

### Uso

1. Abra o Copilot Chat no modo Agent
2. Os agentes `.agent.md` serão reconhecidos automaticamente
3. Use o prompt `@workspace /agent-start` ou cole o conteúdo de `.github/prompts/agent-start.prompt.md`
4. Peça tarefas normalmente — o Copilot seguirá as instruções dos agentes

### Dica

Se o Agent Mode não estiver disponível, use o Chat Mode e cole manualmente o conteúdo de `copilot-instructions.md` como contexto.

---

## No ChatGPT / Claude / Outra IA

### Configuração

1. Copie o conteúdo completo de `.github/copilot-instructions.md`
2. Cole como "Custom Instructions" ou "System Prompt"
3. Opcionalmente, adicione o conteúdo de `.github/AGENTS.md` para contexto completo

### Uso

Use os mesmos comandos:

- "Crie um projeto: [descrição]"
- "Continue o projeto: [contexto]"
- "Revise este projeto"
- "Corrija este projeto"

A IA executará os 23 papéis em sequência como revisões internas.

---

## Em Qualquer Novo Repositório

### Opção A: Copiar manualmente

```bash
git clone https://github.com/MicaelMrozinski/dev-agents.git /tmp/dev-agents
cp -r /tmp/dev-agents/.github/ /caminho/do/seu/projeto/
rm -rf /tmp/dev-agents
```

### Opção B: Script de instalação

```bash
curl -sL https://raw.githubusercontent.com/MicaelMrozinski/dev-agents/main/install.sh | bash
```

### Opção C: Git submodule

```bash
git submodule add https://github.com/MicaelMrozinski/dev-agents.git .dev-agents
cp -r .dev-agents/.github/ .github/
```

---

## Personalização por Projeto

Após copiar a estrutura base, você pode adicionar regras específicas:

1. Crie arquivos em `.github/instructions/` para regras de domínio (ex: `firebase.instructions.md`)
2. Crie prompts em `.github/prompts/` para tarefas recorrentes do projeto
3. Não altere os arquivos base dos agentes — crie extensões separadas

---

## Atualização

Para atualizar os agentes quando houver nova versão:

```bash
cd .dev-agents && git pull origin main
cp -r .github/ ../
```

Ou simplesmente copie novamente a pasta `.github/` do repositório atualizado.
