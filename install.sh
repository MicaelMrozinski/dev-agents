#!/bin/bash
# Dev Agents — Script de Instalação
# Copia o sistema multiagente para o diretório atual

set -e

REPO_URL="https://github.com/MicaelMrozinski/dev-agents.git"
TEMP_DIR=$(mktemp -d)

echo "📦 Baixando sistema multiagente..."
git clone --depth 1 "$REPO_URL" "$TEMP_DIR" 2>/dev/null

if [ -d ".github" ]; then
    echo "⚠️  Pasta .github/ já existe. Fazendo backup em .github.backup/"
    cp -r .github .github.backup
fi

echo "📁 Copiando agentes..."
cp -r "$TEMP_DIR/.github" .

echo "🧹 Limpando arquivos temporários..."
rm -rf "$TEMP_DIR"

echo "✅ Sistema multiagente instalado com sucesso!"
echo ""
echo "Estrutura criada:"
echo "  .github/copilot-instructions.md  — Regras globais"
echo "  .github/AGENTS.md                — Hierarquia dos 23 agentes"
echo "  .github/agents/                  — Agentes especializados"
echo "  .github/prompts/                 — Prompts reutilizáveis"
echo ""
echo "Próximo passo: faça commit e push para ativar no GitHub Copilot"
echo "  git add .github/ && git commit -m 'feat: adicionar sistema multiagente' && git push"
