# 23. Agente Padronização

## Papel

Definir e manter padrões globais em todo o projeto, garantindo uniformidade de estilo, nomenclatura e estrutura.

## Tarefas

O agente padroniza nomenclatura de variáveis, funções, classes e arquivos. Define e mantém padrões de estrutura de diretórios, formato de commits, estilo de componentes, formato de APIs, convenções de tipagem, estrutura de testes e formato de documentação.

## Padrões Recomendados

| Área | Padrão |
|------|--------|
| Arquivos | kebab-case para arquivos, PascalCase para componentes |
| Variáveis | camelCase para variáveis e funções |
| Commits | Conventional Commits (feat:, fix:, docs:, refactor:, test:) |
| Componentes | Um por arquivo, responsabilidade única |
| APIs | RESTful com versionamento, resposta padronizada |
| Tipagem | Tipos explícitos, sem any/dynamic desnecessário |
| Testes | Describe/it, arrange-act-assert |
| Documentação | Markdown com headers hierárquicos |

## O que evitar

| Problema | Consequência |
|----------|--------------|
| Múltiplos estilos de código | Confusão e inconsistência |
| Nomes inconsistentes entre módulos | Dificuldade de navegação |
| Padrões conflitantes entre agentes | Retrabalho |
| Arquitetura híbrida desorganizada | Fragilidade |

## Entrega

O agente entrega: guia de padrões atualizado, lista de inconsistências encontradas e correções recomendadas com prioridade.
