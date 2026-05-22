# Metodologia Universal de Construção de Software com Agentes

> Documento base para iniciar, conduzir, auditar e evoluir projetos de software usando:
>
> - **ChatGPT** como arquiteto, estrategista, revisor e gerador de prompts.
> - **Manus** como executor técnico principal.
> - **VS Code** como ambiente local de execução, acabamento, testes e continuidade.
> - **GitHub** como fonte canônica do código e histórico.
>
> Este documento pertence ao repositório `dev-agents` e deve ser reutilizado como base para novos projetos.

---

## 1. Propósito deste repositório

O repositório `dev-agents` é uma base universal para iniciar projetos de software com metodologia assistida por agentes.

Ele deve conter:

- agentes;
- prompts base;
- metodologias;
- checklists;
- padrões de documentação;
- modelos de decisão técnica;
- regras de revisão e validação;
- templates para iniciar novos produtos.

Ele **não deve conter código de produtos finais**.

Cada produto deve ter seu próprio repositório dedicado.

Exemplo:

```text
dev-agents
├── agentes universais
├── metodologia
├── templates
└── prompts base

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

## 2. Separação obrigatória entre base e produto

### 2.1 Repositório `dev-agents`

Uso correto:

- armazenar agentes reutilizáveis;
- armazenar metodologia universal;
- servir como ponto de partida para novos projetos;
- manter padrões de arquitetura, revisão, QA, documentação e segurança;
- permanecer público, se essa for a decisão do proprietário.

Uso incorreto:

- hospedar código de produto;
- hospedar branches de produto;
- misturar histórico de vários produtos;
- usar como repositório final de uma aplicação;
- publicar acidentalmente segredos ou dados sensíveis.

### 2.2 Repositório do produto

Todo projeto real deve ter um repositório próprio.

Exemplo:

```text
MicaelMrozinski/nome-do-produto
```

Esse repositório deve conter:

- código-fonte real;
- documentação do produto;
- decisões técnicas específicas;
- issues;
- releases;
- workflows;
- histórico de commits;
- handoffs;
- testes;
- builds.

### 2.3 Regra de ouro

Antes de qualquer execução técnica, validar:

```bash
git remote -v
git branch --show-current
git status
```

Se o remote apontar para `dev-agents` e a tarefa for de produto, pare imediatamente.

---

## 3. Papéis no fluxo de trabalho

## 3.1 ChatGPT — Arquiteto, orientador e revisor

O ChatGPT deve ser usado para:

- transformar ideias em escopo técnico;
- quebrar o produto em fases;
- definir prioridades;
- escrever prompts para o Manus;
- revisar entregas do Manus;
- analisar relatórios de teste;
- verificar coerência arquitetural;
- detectar riscos;
- criar checklists;
- revisar documentação;
- decidir se uma fase pode avançar;
- orientar testes manuais e técnicos.

O ChatGPT **não deve inventar resultado de teste**.  
Quando não houver evidência, deve marcar como pendente de validação.

### Responsabilidades do ChatGPT

Para cada fase, o ChatGPT deve ajudar a responder:

- O escopo está claro?
- A fase está pequena o suficiente?
- O Manus recebeu instruções específicas?
- Os testes foram pedidos?
- O build foi pedido?
- O handoff foi pedido?
- Existe risco de mexer em dependências major?
- Existe risco de segredo/token vazar?
- O repositório correto foi citado?
- A próxima fase depende de validação local?

---

## 3.2 Manus — Executor técnico

O Manus deve ser usado para:

- clonar/revisar repositório;
- implementar código;
- criar arquivos;
- alterar estrutura;
- executar comandos;
- rodar testes;
- corrigir erros;
- atualizar documentação;
- criar commits;
- entregar relatório técnico final.

O Manus deve trabalhar sempre com escopo fechado.

Ele não deve:

- implementar funcionalidades fora do pedido;
- iniciar fase nova sem autorização;
- trocar repositório;
- atualizar dependências major sem aprovação;
- apagar arquivos sensíveis sem confirmação;
- esconder falhas de teste;
- afirmar sucesso sem evidência;
- misturar produto com `dev-agents`.

### Comandos mínimos antes de iniciar trabalho

```bash
git status
git remote -v
git branch --show-current
git pull --ff-only
```

### Comandos mínimos antes de finalizar trabalho

```bash
npm run typecheck
npm run lint
npm run test
npm run build
```

Quando o projeto usar Tauri/Rust:

```bash
npm run tauri build
cargo audit
```

Quando algum comando não puder ser executado, o Manus deve explicar claramente o motivo.

---

## 3.3 VS Code — Ambiente local de execução e acabamento

O VS Code deve ser usado para:

- abrir o projeto localmente;
- revisar arquivos;
- executar comandos no terminal;
- fazer testes manuais;
- rodar app em desenvolvimento;
- conferir comportamento real;
- corrigir pequenos detalhes;
- continuar trabalho caso o Manus não consiga;
- validar builds em ambiente local.

O VS Code é a bancada de teste.

Mesmo que o Manus diga que algo passou, sempre que possível valide localmente.

---

## 4. Ciclo universal de fases

Cada projeto deve ser dividido em fases.

A regra operacional é:

```text
1 sessão = 1 fase
1 sessão seguinte = correções da fase
1 nova sessão = próxima fase
1 sessão seguinte = correções da nova fase
```

Nunca misturar muitas fases em uma única sessão.

Fluxo padrão:

```text
Fase 0 — Preparação e aprovação parcial
Correções da Fase 0
Fase 1 — Base inicial
Correções da Fase 1
Fase 2 — Persistência ou núcleo funcional
Correções da Fase 2
Fase 3 — Integrações ou módulos avançados
Correções da Fase 3
...
```

Essa cadência reduz erros porque cada etapa tem:

- objetivo claro;
- implementação controlada;
- validação;
- correção;
- handoff;
- decisão consciente de avanço.

Analogia:

> Não se constrói um prédio colocando encanamento, telhado, pintura, elétrica e mobília no mesmo dia.  
> Primeiro se faz a fundação. Depois se testa. Depois se corrige. Depois sobe o próximo andar.

---

## 5. Tipos de sessão

## 5.1 Sessão de planejamento

Feita com ChatGPT.

Objetivo:

- definir a ideia;
- levantar requisitos;
- criar escopo;
- dividir fases;
- detectar riscos;
- preparar prompt para o Manus.

Entrega esperada:

- prompt técnico;
- critérios de aceite;
- checklists;
- plano de teste.

## 5.2 Sessão de execução

Feita com Manus.

Objetivo:

- implementar somente o escopo aprovado;
- executar validações;
- atualizar documentação;
- commitar alterações;
- entregar relatório final.

Entrega esperada:

- resumo do que foi alterado;
- arquivos modificados;
- comandos executados;
- resultados;
- erros encontrados;
- commit final;
- pendências.

## 5.3 Sessão de correção

Feita com Manus, orientada por prompt do ChatGPT.

Objetivo:

- corrigir falhas da fase anterior;
- não implementar fase nova;
- estabilizar código;
- fechar pendências.

Entrega esperada:

- lista de problemas corrigidos;
- testes reexecutados;
- commit de correção;
- status final.

## 5.4 Sessão de validação local

Feita no VS Code.

Objetivo:

- rodar app localmente;
- conferir comportamento visual;
- testar fluxo manual;
- executar comandos no terminal;
- validar build no ambiente real.

Entrega esperada:

- comandos executados;
- prints ou logs, se útil;
- lista de bugs;
- decisão: aprovado, aprovado com ressalvas ou reprovado.

## 5.5 Sessão de revisão

Feita com ChatGPT.

Objetivo:

- analisar relatório do Manus;
- analisar prints/logs do VS Code;
- decidir se a fase foi aceita;
- criar prompt de correção ou próxima fase.

---

## 6. Estados possíveis de uma fase

Cada fase deve terminar em um destes estados:

### 6.1 Aprovada

Use quando:

- escopo foi cumprido;
- testes principais passaram;
- build passou;
- documentação foi atualizada;
- não há pendências bloqueantes.

### 6.2 Aprovada com ressalvas

Use quando:

- funcionalidade principal foi entregue;
- existe pendência pequena;
- a pendência não bloqueia a próxima fase;
- a pendência está documentada.

### 6.3 Reprovada

Use quando:

- escopo não foi cumprido;
- build quebrou;
- testes falharam;
- houve alteração indevida;
- houve risco de segurança;
- o repositório errado foi usado;
- a documentação ficou inconsistente.

### 6.4 Pendente de validação local

Use quando:

- o ambiente do Manus não conseguiu executar tudo;
- falta rodar Tauri/Rust localmente;
- falta testar integração externa;
- falta validar comportamento no Windows/macOS/Linux.

---

## 7. Checklist antes de iniciar qualquer fase

Antes de pedir ao Manus para executar uma fase, confirmar:

```text
[ ] Repositório correto definido.
[ ] Branch correta definida.
[ ] Escopo limitado.
[ ] Arquivos de contexto citados.
[ ] O que não fazer está explícito.
[ ] Testes obrigatórios foram solicitados.
[ ] Build obrigatório foi solicitado.
[ ] Handoff final foi solicitado.
[ ] Commit final foi solicitado.
[ ] Critérios de aceite foram definidos.
[ ] Nenhum segredo/token foi fornecido no prompt.
```

---

## 8. Checklist obrigatório para prompts ao Manus

Todo prompt para Manus deve conter:

1. Contexto do projeto.
2. Repositório correto.
3. Branch correta.
4. Objetivo da tarefa.
5. Escopo permitido.
6. Escopo proibido.
7. Arquivos que devem ser lidos antes.
8. Passos esperados.
9. Comandos de validação.
10. Regras de segurança.
11. Regras de dependências.
12. Regras de commit.
13. Relatório final obrigatório.
14. Critérios de aceite.

Modelo curto:

```text
Objetivo:
[descrever tarefa]

Repositório:
[owner/repo]

Branch:
[branch]

Antes de alterar:
- git status
- git remote -v
- git branch --show-current
- git pull --ff-only

Leia:
- README.md
- AGENTS.md
- DECISIONS.md
- SESSION_HANDOFF.md
- TODO.md

Escopo permitido:
- [itens]

Fora de escopo:
- [itens proibidos]

Validação obrigatória:
- npm run typecheck
- npm run lint
- npm run test
- npm run build

Se aplicável:
- npm run tauri build
- cargo audit

Commit:
- usar Conventional Commits
- não incluir arquivos gerados, segredos ou node_modules

Relatório final:
- resumo
- arquivos alterados
- comandos executados
- resultados
- pendências
- commit final
```

---

## 9. Documentos obrigatórios no repositório do produto

Cada produto deve ter, no mínimo:

```text
README.md
AGENTS.md
DECISIONS.md
SESSION_HANDOFF.md
TODO.md
.env.example
.gitignore
```

### 9.1 README.md

Deve explicar:

- o que é o projeto;
- stack;
- pré-requisitos;
- como instalar;
- como rodar;
- como testar;
- como buildar;
- estrutura de pastas;
- comandos úteis.

### 9.2 AGENTS.md

Deve explicar:

- quais agentes são aplicados ao projeto;
- hierarquia de decisão;
- regras técnicas;
- prioridades;
- padrões de qualidade.

### 9.3 DECISIONS.md

Deve registrar decisões arquiteturais.

Exemplos:

- escolha de framework;
- banco de dados;
- arquitetura;
- padrão de autenticação;
- estratégia de plugins;
- decisão de migração de repositório;
- motivo de não atualizar dependências major.

Formato recomendado:

```markdown
## ADR-0001 — Título da decisão

**Data:** AAAA-MM-DD  
**Status:** Aprovado | Proposto | Substituído

### Contexto

### Alternativas consideradas

### Decisão

### Consequências

### Riscos
```

### 9.4 SESSION_HANDOFF.md

Deve registrar o estado da sessão mais recente.

Deve conter:

- fase atual;
- o que foi feito;
- comandos executados;
- resultados;
- erros;
- pendências;
- próximo passo recomendado.

### 9.5 TODO.md

Deve manter:

- concluído;
- em andamento;
- pendente;
- bloqueado;
- próximas fases.

---

## 10. Regras de segurança

Nunca colocar em prompt, código ou commit:

- tokens;
- senhas;
- API keys;
- secrets;
- cookies;
- dados reais de clientes;
- credenciais de banco;
- arquivos `.env` reais;
- dumps de banco;
- logs com informações sensíveis.

Sempre usar:

```text
.env.example
```

com valores fictícios.

Exemplo:

```env
OPENAI_API_KEY=your_api_key_here
DATABASE_URL=local_database_url_here
```

Nunca:

```env
OPENAI_API_KEY=sk-valor-real
```

---

## 11. Regras de dependências

Dependências devem ser tratadas com cautela.

Antes de adicionar dependência:

- justificar motivo;
- verificar manutenção;
- verificar licença;
- verificar tamanho/impacto;
- verificar vulnerabilidades;
- preferir soluções simples.

Proibido sem aprovação explícita:

- upgrade major;
- troca de framework;
- troca de bundler;
- troca de linguagem principal;
- adição de dependência pesada para resolver problema pequeno.

Comandos úteis:

```bash
npm outdated
npm audit
cargo audit
```

Se houver major bump disponível, registrar em `DECISIONS.md` ou `SESSION_HANDOFF.md`, mas não atualizar automaticamente.

---

## 12. Regras de Git

### 12.1 Antes de trabalhar

```bash
git status
git remote -v
git branch --show-current
git pull --ff-only
```

### 12.2 Commits

Usar Conventional Commits:

```text
feat: adiciona tela inicial
fix: corrige validação do formulário
docs: atualiza README
test: adiciona testes de persistência
refactor: reorganiza camada de serviços
chore: atualiza arquivos de controle
```

### 12.3 Não commitar

```text
node_modules/
dist/
build/
target/
.env
.env.local
*.log
coverage/
.DS_Store
```

### 12.4 Branches

Para projetos pequenos ou pessoais, pode-se trabalhar em `main` com commits controlados.

Para projetos maiores, usar branches:

```text
phase/01-base
phase/02-database
fix/phase-02-database
docs/update-handoff
```

---

## 13. Validação técnica padrão

### 13.1 Projetos Node/React/Vite

```bash
npm install
npm run typecheck
npm run lint
npm run test
npm run build
```

### 13.2 Projetos Tauri/Rust

```bash
npm run tauri build
cargo test
cargo audit
```

### 13.3 Projetos Python

```bash
python -m pytest
python -m ruff check .
python -m mypy .
```

### 13.4 Projetos com Docker

```bash
docker compose config
docker compose up --build
docker compose down
```

### 13.5 Resultado esperado

O relatório deve separar:

```text
Executado e passou
Executado e falhou
Não executado por limitação do ambiente
Não aplicável
```

Nunca usar termos vagos como:

```text
parece ok
deve funcionar
provavelmente passou
```

---

## 14. Testes por fase

Cada fase deve ter uma estratégia de teste.

### 14.1 Teste automatizado

Exemplos:

- unitário;
- integração;
- componente;
- e2e;
- snapshot, quando fizer sentido;
- teste de migração de banco;
- teste de comando backend.

### 14.2 Teste manual no VS Code

Exemplos:

```bash
npm run dev
npm run tauri dev
npm run build
```

Validar:

- app abre;
- tela carrega;
- navegação funciona;
- dados persistem;
- erros são tratados;
- interface não quebra;
- logs não vazam segredo.

### 14.3 Manus deve orientar como testar

Ao final de cada fase, o Manus deve entregar uma seção:

```markdown
## Como testar localmente

1. Execute:
   ```bash
   npm install
   npm run tauri dev
   ```

2. Valide:
   - [ ] App abriu.
   - [ ] Tela X carregou.
   - [ ] Ação Y funcionou.
   - [ ] Nenhum erro apareceu no console.
```

---

## 15. Padrão de relatório final do Manus

Todo relatório final do Manus deve conter:

```markdown
# Relatório Final — [Nome da Fase]

## 1. Resumo

## 2. Escopo executado

## 3. Arquivos modificados

## 4. Comandos executados

| Comando | Resultado | Observação |
|---|---|---|

## 5. Testes

## 6. Build

## 7. Segurança

## 8. Dependências

## 9. Documentação atualizada

## 10. Commit final

## 11. Como testar localmente

## 12. Pendências

## 13. Próximo passo recomendado
```

---

## 16. Critérios para avançar de fase

Só avançar quando:

```text
[ ] Escopo da fase foi entregue.
[ ] Não há erro bloqueante.
[ ] Typecheck passou ou foi justificado.
[ ] Lint passou ou warnings foram explicados.
[ ] Testes passaram ou limitações foram explicadas.
[ ] Build passou ou limitação ambiental foi explicada.
[ ] Documentação foi atualizada.
[ ] Handoff está claro.
[ ] Próxima fase está definida.
```

Se houver dúvida, fazer sessão de correção antes de avançar.

---

## 17. Como iniciar um novo projeto usando este repositório

### 17.1 Clonar a base

```bash
git clone https://github.com/MicaelMrozinski/dev-agents.git nome-do-novo-projeto-base
cd nome-do-novo-projeto-base
```

### 17.2 Criar repositório dedicado do produto

Criar um novo repositório no GitHub:

```text
MicaelMrozinski/nome-do-produto
```

### 17.3 Remover vínculo com `dev-agents`

No diretório do novo produto:

```bash
git remote -v
git remote remove origin
git remote add origin https://github.com/MicaelMrozinski/nome-do-produto.git
git branch -M main
```

### 17.4 Adaptar documentação

Atualizar:

```text
README.md
AGENTS.md
DECISIONS.md
SESSION_HANDOFF.md
TODO.md
```

### 17.5 Primeiro commit do produto

```bash
git add .
git commit -m "chore(repo): initialize product repository from dev-agents base"
git push -u origin main
```

A partir desse ponto:

- `dev-agents` volta a ser apenas referência;
- o produto evolui somente no repositório novo;
- prompts e handoffs devem apontar para o repositório do produto.

---

## 18. Template de prompt inicial para ChatGPT

```text
Quero iniciar um novo projeto de software usando a metodologia do repositório dev-agents.

Ideia do produto:
[descrever]

Objetivo do MVP:
[descrever]

Público-alvo:
[descrever]

Stack desejada, se houver:
[descrever]

Restrições:
[descrever]

Quero que você:
1. organize a ideia;
2. proponha fases;
3. defina riscos;
4. crie o prompt inicial para o Manus;
5. defina critérios de aceite;
6. defina como testar a Fase 0/Fase 1.
```

---

## 19. Template de prompt inicial para Manus

```text
Objetivo:
Iniciar o projeto [nome-do-produto] a partir da metodologia universal do repositório dev-agents.

Importante:
- dev-agents é apenas base/metodologia/agentes.
- O produto final deve ficar no repositório dedicado:
  [owner/nome-do-produto]
- Não implementar código de produto dentro de dev-agents.

Antes de alterar:
git status
git remote -v
git branch --show-current

Tarefas:
1. Criar/validar estrutura inicial do produto.
2. Atualizar README.md para o produto.
3. Atualizar AGENTS.md para o produto.
4. Criar ou atualizar DECISIONS.md.
5. Criar ou atualizar SESSION_HANDOFF.md.
6. Criar ou atualizar TODO.md.
7. Garantir .gitignore e .env.example.
8. Executar validações aplicáveis.
9. Criar commit organizado.

Validação:
[comandos do projeto]

Relatório final:
- resumo;
- arquivos alterados;
- comandos executados;
- resultados;
- commit final;
- pendências;
- como testar localmente.
```

---

## 20. Template de prompt de correção de fase

```text
Objetivo:
Corrigir a Fase [número/nome] do projeto [nome-do-produto].

Repositório:
[owner/repo]

Branch:
[branch]

Importante:
- Não iniciar a próxima fase.
- Não adicionar features fora do escopo.
- Corrigir apenas os problemas listados.
- Atualizar documentação de handoff.
- Executar testes novamente.

Problemas a corrigir:
1. [problema]
2. [problema]
3. [problema]

Antes de alterar:
git status
git remote -v
git branch --show-current
git pull --ff-only

Validação obrigatória:
[comandos]

Commit:
fix: stabilize phase [n]

Relatório final:
- problemas corrigidos;
- arquivos alterados;
- comandos executados;
- resultados;
- pendências;
- se a fase pode ser considerada aprovada.
```

---

## 21. Template de prompt de revisão para ChatGPT

```text
Analise o relatório final do Manus abaixo.

Quero que você verifique:
1. se o escopo foi cumprido;
2. se ele mexeu em algo fora do pedido;
3. se os comandos necessários foram executados;
4. se typecheck/lint/test/build passaram;
5. se há risco de dependência major indevida;
6. se há risco de segredo/token;
7. se a documentação foi atualizada;
8. se posso aprovar a fase;
9. se devo pedir correções;
10. qual deve ser o próximo prompt.

Relatório do Manus:
[colar relatório]
```

---

## 22. Organização recomendada de chats

Para cada projeto no ChatGPT, usar chats separados:

```text
00 - Ideia e planejamento
01 - Fase 0
02 - Correções da Fase 0
03 - Fase 1
04 - Correções da Fase 1
05 - Fase 2
06 - Correções da Fase 2
...
```

Evite misturar tudo em uma única conversa gigante.

Conversas antigas podem ser mantidas como histórico, mas decisões importantes devem ser copiadas para:

```text
DECISIONS.md
SESSION_HANDOFF.md
TODO.md
```

A fonte final da verdade deve estar no repositório, não apenas no chat.

---

## 23. O que fazer com sessões antigas

Sessões antigas podem ser mantidas para consulta histórica.

Elas só atrapalham quando:

- têm informação ultrapassada;
- contradizem decisões novas;
- apontam para repositório antigo;
- misturam fases diferentes;
- criam confusão sobre o estado atual.

Regra prática:

- manter sessões úteis;
- renomear sessões por fase;
- arquivar ou apagar sessões que só contenham erro, duplicação ou informação superada;
- nunca depender somente do chat como documentação oficial.

Antes de apagar uma sessão, copiar qualquer decisão útil para:

```text
DECISIONS.md
SESSION_HANDOFF.md
TODO.md
```

---

## 24. Princípios finais

1. Uma fase por vez.
2. Uma correção por vez.
3. Um repositório canônico por produto.
4. `dev-agents` é base, não produto.
5. Manus executa, mas deve provar com comandos.
6. ChatGPT planeja, revisa e orienta.
7. VS Code valida no ambiente real.
8. Teste antes de avançar.
9. Documente decisões.
10. Não confie em “parece que funcionou”.
11. Não avance com sujeira escondida.
12. Não misture ferramenta com produto.

---

## 25. Frase-guia

> Planejar com clareza.  
> Executar com escopo.  
> Testar com evidência.  
> Corrigir antes de crescer.  
> Documentar para não depender da memória.
