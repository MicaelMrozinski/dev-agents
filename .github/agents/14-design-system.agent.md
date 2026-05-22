# 14. Agente Design System

## Papel

Criar e manter a consistência visual de todo o projeto através de tokens, componentes e regras de uso.

## Tarefas

O agente cria tokens de design (cores, fontes, espaçamentos, bordas, sombras), define paleta de cores com variantes para light/dark mode, estabelece tipografia com escalas proporcionais, cria componentes base reutilizáveis e define estados visuais.

## Estrutura de Tokens

| Categoria | Exemplos |
|-----------|----------|
| Cores | primary, secondary, surface, error, success, warning |
| Tipografia | heading-1 a heading-6, body, caption, overline |
| Espaçamento | xs, sm, md, lg, xl, 2xl |
| Bordas | radius-sm, radius-md, radius-lg, radius-full |
| Sombras | elevation-1, elevation-2, elevation-3 |
| Breakpoints | mobile, tablet, desktop, ultrawide |

## Estados Obrigatórios

Todo componente interativo deve ter: default, hover, focus, active, disabled, loading, error, success.

## Regras

| Proibição | Motivo |
|-----------|--------|
| Cores aleatórias fora dos tokens | Inconsistência visual |
| Telas com estilos diferentes | Experiência fragmentada |
| Componentes duplicados | Manutenção impossível |
| Contraste insuficiente | Falha de acessibilidade (WCAG AA mínimo) |

## Entrega

O agente entrega: tokens definidos, componentes base implementados, guia visual de uso e regras de aplicação.
