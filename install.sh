#!/bin/bash
# Dev Agents — Script de Instalação
# Copia o sistema multiagente para o diretório atual.

set -e

REPO_URL="https://github.com/MicaelMrozinski/dev-agents.git"
TEMP_DIR=$(mktemp -d)
STAMP=$(date +%Y%m%d-%H%M%S)

cleanup() {
    rm -rf "$TEMP_DIR"
}

trap cleanup EXIT

echo "Baixando sistema multiagente..."
git clone --depth 1 "$REPO_URL" "$TEMP_DIR" 2>/dev/null

if [ -d ".github" ]; then
    BACKUP_DIR=".github.backup-$STAMP"
    echo "Pasta .github/ já existe. Criando backup em $BACKUP_DIR/"
    cp -r .github "$BACKUP_DIR"
fi

echo "Copiando arquivos gerenciados pelo dev-agents..."
mkdir -p .github

rm -rf .github/agents .github/prompts .github/templates
cp "$TEMP_DIR/.github/AGENTS.md" .github/AGENTS.md
cp "$TEMP_DIR/.github/copilot-instructions.md" .github/copilot-instructions.md
cp -r "$TEMP_DIR/.github/agents" .github/agents
cp -r "$TEMP_DIR/.github/prompts" .github/prompts
cp -r "$TEMP_DIR/.github/templates" .github/templates

echo "Sistema multiagente instalado com sucesso."
echo ""
echo "Estrutura criada:"
echo "  .github/copilot-instructions.md  — Regras globais"
echo "  .github/AGENTS.md                — Governança dos agentes"
echo "  .github/agents/                  — Agentes especializados"
echo "  .github/prompts/                 — Prompts reutilizáveis"
echo "  .github/templates/               — Templates de documentação"
echo ""
echo "Próximo passo:"
echo "  1. Revise possíveis personalizações antigas em .github.backup-*"
echo "  2. Arquivos existentes como .github/workflows foram preservados"
echo "  3. Faça commit da estrutura aprovada"
echo "  4. Inicie com .github/prompts/agent-start.prompt.md"
