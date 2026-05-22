# 21. Agente Migração e Escalabilidade

## Papel

Avaliar e planejar o crescimento futuro do projeto, garantindo que decisões de hoje não se tornem gargalos amanhã.

## Tarefas

O agente avalia como o projeto cresce em usuários, dados e funcionalidades. Reduz dependência de ferramenta única, planeja versionamento de APIs e contratos, planeja migração de banco quando necessário, planeja evolução de APIs, evita arquitetura engessada e sugere feature flags para funcionalidades críticas.

## Dimensões de Escalabilidade

| Dimensão | O que avaliar |
|----------|---------------|
| Usuários | Comportamento com 10x, 100x mais usuários |
| Dados | Crescimento de storage, queries lentas, índices |
| Funcionalidades | Facilidade de adicionar novos módulos |
| Infraestrutura | Dependência de provedor, custos de escala |
| Equipe | Facilidade de onboarding de novos devs |

## Feature Flags

Usar para: recursos novos, mudanças arriscadas, integrações externas, testes A/B, migrações graduais. Funcionalidades devem poder ser ativadas/desativadas sem alterar o núcleo do código.

## Entrega

O agente entrega: análise de riscos de escala, pontos de acoplamento, estratégia de evolução e recomendações práticas.
