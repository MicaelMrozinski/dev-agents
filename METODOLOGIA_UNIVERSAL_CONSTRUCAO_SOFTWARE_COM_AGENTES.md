# Metodologia Universal Dinâmica de Construção de Software com Agentes

> Documento base para iniciar, adaptar, conduzir, auditar e evoluir projetos de software usando agentes especializados acionados sob demanda.
>
> O executor técnico pode ser Codex, GitHub Copilot Agent Mode, ChatGPT, Claude, Cursor, VS Code Agent Mode ou qualquer IA/ferramenta capaz de ler arquivos do projeto e executar instruções.

---

## 1. Propósito do `dev-agents`

O repositório `dev-agents` é uma caixa de ferramentas universal para projetos de software.

Ele deve conter:

- agentes reutilizáveis;
- prompts base;
- metodologia;
- checklists;
- templates de documentação;
- padrões de revisão, segurança, qualidade e entrega;
- modelos de decisão técnica.

Ele não deve conter código de produtos finais.

```text
dev-agents
├── agentes universais
├── prompts
├── templates
└── metodologia

produto-a
└── código real do Produto A

produto-b
└── código real do Produto B
```

Regra central:

> `dev-agents` é a caixa de ferramentas.  
> O produto é a obra.  
> Nunca construa a obra dentro da caixa de ferramentas.

---

## 2. Separação Obrigatória Entre Base e Produto

### 2.1 `dev-agents`

Uso correto:

- armazenar agentes, prompts, templates e regras universais;
- evoluir a metodologia;
- servir como fonte para instalação em projetos;
- permanecer desacoplado de qualquer produto específico.

Uso incorreto:

- hospedar código real de produto;
- hospedar branches de produto;
- misturar histórico de vários produtos;
- publicar segredos, dados sensíveis ou `.env` reais;
- tratar `dev-agents` como template clonado e renomeado sem revisão.

### 2.2 Repositório do Produto

Todo projeto real deve ter repositório próprio.

Esse repositório deve conter:

- código-fonte real;
- documentação do produto;
- decisões técnicas específicas;
- issues, releases e histórico de commits;
- workflows de CI/CD;
- handoffs, testes e builds.

### 2.3 Checagem Antes de Qualquer Execução

Antes de alterar código, executar ou solicitar:

```bash
git remote -v
git branch --show-current
git status
```

Se o remote apontar para `dev-agents` e a tarefa for de produto, parar imediatamente e avisar o usuário.

---

## 3. Metodologia Dinâmica

A metodologia não aciona todos os agentes o tempo inteiro. O Orquestrador decide quais agentes atuam conforme:

- tipo de projeto;
- fase atual;
- tarefa solicitada;
- riscos envolvidos;
- arquivos afetados;
- stack detectada;
- objetivo final do usuário;
- opções aprovadas pelo usuário.

Fluxo universal:

```text
1. Diagnosticar contexto
2. Identificar perfil do projeto
3. Definir objetivo e fase
4. Selecionar agentes necessários
5. Confirmar opções relevantes com o usuário
6. Executar escopo pequeno
7. Validar com evidência
8. Documentar decisão, status e próximo passo
```

O sistema deve trabalhar com agentes como uma equipe enxuta: chamar quem precisa entrar, no momento certo.

---

## 4. Papel do Orquestrador

O Orquestrador Técnico é o agente sempre ativo.

Responsabilidades:

- entender a tarefa;
- validar o repositório correto;
- ler documentação existente;
- identificar stack, scripts, estrutura e riscos;
- decidir quais agentes ativar;
- justificar agentes ativados e não ativados;
- evitar sobreposição entre agentes;
- resolver conflitos pela hierarquia de decisão;
- manter entregas pequenas e verificáveis;
- bloquear avanço sem evidência.

Antes de cada execução, o Orquestrador deve registrar:

```text
Tarefa:
Perfil do projeto:
Fase atual:
Agentes ativados:
Motivo de cada agente:
Agentes não ativados:
Motivo da não ativação:
Opções que precisam de confirmação:
Critérios de aceite:
Validações planejadas:
```

---

## 5. Perfil do Projeto

Todo projeto deve ter um `PROJECT_PROFILE.md` ou seção equivalente em `docs/PROJECT_STATUS.md`.

Esse perfil deve registrar:

- nome do produto;
- objetivo final desejado pelo usuário;
- público-alvo;
- tipo de projeto;
- stack;
- plataformas;
- idiomas;
- autenticação;
- banco de dados;
- integrações externas;
- requisitos de segurança;
- requisitos visuais;
- restrições técnicas;
- agentes opcionais aprovados;
- agentes opcionais recusados;
- riscos principais;
- critérios de finalização.

O perfil deve ser atualizado quando decisões importantes mudarem.

---

## 6. Agente de Início de Projeto

O Agente de Início de Projeto atua quando:

- o usuário quer iniciar um projeto novo;
- existe apenas uma ideia inicial;
- é necessário transformar objetivo final em roadmap;
- um projeto existente ainda não tem documentação de controle;
- a equipe precisa organizar fases antes de codar.

Ele deve criar ou atualizar:

```text
README.md
docs/PROJECT_PROFILE.md
docs/PROJECT_ROADMAP.md
docs/DECISIONS.md
docs/SESSION_HANDOFF.md
docs/TODO.md
.env.example
.gitignore
```

Ele também deve dividir o projeto em etapas até o objetivo final desejado:

```text
Fase 0 — Diagnóstico e preparação
Fase 1 — Base técnica mínima
Fase 2 — Núcleo funcional
Fase 3 — Fluxos principais
Fase 4 — Integrações e persistência
Fase 5 — Qualidade, segurança e UX
Fase 6 — Preparação de entrega
Fase 7 — Finalização do objetivo desejado
```

As fases podem mudar conforme o tipo de projeto, mas cada fase precisa ter:

- objetivo;
- escopo permitido;
- fora de escopo;
- agentes prováveis;
- arquivos esperados;
- critérios de aceite;
- validações;
- pendências conhecidas.

---

## 7. Confirmação de Agentes Opcionais

O sistema deve perguntar quando uma capacidade for útil, mas não obrigatória.

Exemplos de perguntas:

```text
Você quer ativar internacionalização e tradução desde o início?
Você quer suporte a pt-BR, en-US, es-ES e ja-JP?
Você quer que o Design System gere imagens com ferramentas da OpenAI se forem necessárias?
Você quer preparar layout 9:16 e 16:9?
Você quer observabilidade avançada já no MVP?
```

Se o usuário não responder e a opção não for bloqueadora, o Orquestrador deve assumir uma decisão conservadora, registrar a suposição e continuar.

---

## 8. Geração de Imagens

O Agente Design System pode solicitar ou usar ferramentas de geração de imagens da OpenAI quando o projeto precisar de:

- imagens de hero;
- ilustrações;
- assets visuais;
- mockups;
- texturas;
- estados vazios;
- imagens de produto fictício;
- variações visuais para teste.

Regras:

- só gerar imagem quando houver necessidade real de produto ou UX;
- manter coerência com marca, paleta, público e acessibilidade;
- registrar prompt, finalidade, arquivo gerado e local de uso;
- validar licença/uso quando houver imagem de terceiros;
- não substituir design system por imagens decorativas sem função;
- pedir aprovação quando a imagem definir identidade visual importante.

---

## 9. Fluxo Para Novo Projeto

Novo projeto não deve ser criado dentro de `dev-agents`.

Fluxo recomendado:

```text
1. Criar repositório dedicado do produto.
2. Instalar/copiar `.github/` do `dev-agents`.
3. Executar `create-project.prompt.md`.
4. Orquestrador valida remote, branch e estado.
5. Agente de Início de Projeto cria docs e roadmap.
6. Usuário aprova opções opcionais.
7. Fase 0 começa com escopo pequeno.
8. Cada fase termina com validação, docs e handoff.
```

Checklist inicial:

```text
[ ] Remote aponta para o produto, não para dev-agents.
[ ] Objetivo final do usuário está escrito.
[ ] PROJECT_PROFILE.md criado.
[ ] PROJECT_ROADMAP.md criado.
[ ] Agentes opcionais confirmados ou registrados como pendentes.
[ ] Critérios de aceite da Fase 0 definidos.
[ ] Validações possíveis definidas.
```

---

## 10. Fluxo Para Projeto Existente

Quando o projeto já existe, não reestruturar tudo automaticamente.

Fluxo recomendado:

```text
1. Ler estado atual.
2. Identificar stack, scripts, arquitetura e padrões.
3. Ler README, docs, package files, configs e testes.
4. Criar diagnóstico de aderência à metodologia.
5. Propor adaptação incremental.
6. Criar documentação mínima faltante.
7. Corrigir riscos críticos primeiro.
8. Só depois reorganizar padrões e melhorias.
```

Antes de qualquer adaptação, classificar:

```text
Manter:
Adaptar agora:
Adaptar depois:
Não mexer:
Riscos:
```

---

## 11. Tipos de Sessão

### 11.1 Planejamento

Objetivo:

- organizar ideia;
- transformar desejo em escopo;
- identificar riscos;
- escolher fases;
- definir agentes necessários.

Entrega:

- perfil do projeto;
- roadmap;
- critérios de aceite;
- validações previstas.

### 11.2 Execução

Objetivo:

- implementar apenas o escopo aprovado;
- executar validações;
- atualizar documentação;
- entregar evidências.

Entrega:

- arquivos alterados;
- comandos executados;
- resultados;
- pendências;
- próximo passo.

### 11.3 Correção

Objetivo:

- corrigir problemas de uma fase;
- não iniciar fase nova;
- estabilizar código e documentação.

### 11.4 Revisão

Objetivo:

- encontrar problemas;
- classificar severidade;
- propor ordem de correção;
- aprovar, reprovar ou pedir ajustes.

---

## 12. Estados de Uma Fase

### Aprovada

Use quando:

- escopo foi cumprido;
- validações principais passaram;
- documentação foi atualizada;
- não há pendência bloqueante.

### Aprovada com ressalvas

Use quando:

- funcionalidade principal foi entregue;
- há pendência pequena;
- a pendência está documentada;
- a próxima fase não depende dela.

### Reprovada

Use quando:

- escopo não foi cumprido;
- build/testes falharam sem justificativa aceitável;
- houve alteração fora do pedido;
- houve risco de segurança ou dados;
- o repositório errado foi usado.

### Pendente de validação

Use quando:

- faltou ambiente;
- integração externa não pôde ser testada;
- validação manual ainda é necessária;
- comando não pôde ser executado.

---

## 13. Documentos Recomendados no Produto

```text
README.md
docs/PROJECT_PROFILE.md
docs/PROJECT_ROADMAP.md
docs/ARCHITECTURE.md
docs/SECURITY.md
docs/TESTING.md
docs/DECISIONS.md
docs/SESSION_HANDOFF.md
docs/TODO.md
.env.example
.gitignore
```

Documentos opcionais conforme projeto:

```text
docs/I18N.md
docs/RESPONSIVE.md
docs/DESIGN_SYSTEM.md
docs/DEPENDENCIES.md
docs/OBSERVABILITY.md
docs/PERFORMANCE.md
docs/CHANGELOG.md
```

Não criar documentação pesada sem utilidade. Criar o suficiente para continuidade, validação e decisões futuras.

---

## 14. Regras de Segurança

Nunca colocar em prompt, código ou commit:

- tokens;
- senhas;
- API keys;
- cookies;
- credenciais de banco;
- dados reais de clientes;
- arquivos `.env` reais;
- dumps de banco;
- logs com informações sensíveis.

Sempre usar `.env.example` com valores fictícios.

---

## 15. Regras de Dependências

Antes de adicionar dependência:

- justificar motivo;
- verificar documentação oficial;
- verificar manutenção;
- verificar licença;
- verificar vulnerabilidades;
- avaliar impacto no bundle/ambiente;
- preferir solução nativa quando razoável.

Proibido sem aprovação explícita:

- upgrade major;
- troca de framework;
- troca de bundler;
- troca de linguagem principal;
- dependência pesada para problema pequeno.

---

## 16. Validação Técnica

O executor deve descobrir quais comandos existem no projeto antes de inventar comandos.

Exemplos comuns:

```bash
npm run typecheck
npm run lint
npm run test
npm run build
python -m pytest
python -m ruff check .
cargo test
docker compose config
```

Relatório de validação:

```text
Executado e passou:
Executado e falhou:
Não executado por limitação:
Não aplicável:
```

Nunca afirmar que passou sem evidência.

---

## 17. Regras de Git

Antes de trabalhar:

```bash
git status
git remote -v
git branch --show-current
git pull --ff-only
```

Commits devem usar Conventional Commits:

```text
feat: adiciona fluxo de login
fix: corrige validação do formulário
docs: atualiza roadmap
test: adiciona cobertura de permissões
refactor: reorganiza camada de serviços
chore: atualiza configuração de agentes
```

Não commitar:

```text
node_modules/
dist/
build/
target/
.env
.env.local
*.log
coverage/
```

---

## 18. Critérios Para Avançar de Fase

Só avançar quando:

```text
[ ] Escopo da fase foi entregue.
[ ] Não há erro bloqueante.
[ ] Validações aplicáveis passaram ou foram justificadas.
[ ] Documentação de estado foi atualizada.
[ ] Decisões importantes foram registradas.
[ ] Pendências foram classificadas.
[ ] Próxima fase está definida.
```

Se houver dúvida, fazer sessão de correção antes de avançar.

---

## 19. Modelo de Relatório Final

```markdown
# Relatório Final — [Fase/Tarefa]

## Resumo

## Agentes Ativados

## Escopo Executado

## Arquivos Alterados

## Decisões

## Validação

| Comando | Resultado | Observação |
|---|---|---|

## Segurança

## Dependências

## Documentação

## Pendências

## Próximo Passo Recomendado
```

---

## 20. Frase-Guia

> Diagnosticar antes de agir.
> Acionar apenas os agentes necessários.
> Executar em fases pequenas.
> Validar com evidência.
> Documentar para continuar sem depender da memória.
