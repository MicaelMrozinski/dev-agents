# Prompt: Revisar Projeto

Use este prompt quando disser: **"Revise este projeto"**

---

## Instrução

Leia `.github/copilot-instructions.md` e `.github/AGENTS.md` antes de iniciar.

Acione os seguintes agentes em sequência:

1. **Revisor de Código** — Qualidade técnica, duplicação, acoplamento
2. **Segurança** — Vulnerabilidades, OWASP, segredos expostos
3. **QA** — Cobertura de testes, cenários faltantes
4. **Internacionalização** — Textos hardcoded, chaves faltantes
5. **Responsividade** — Overflow, breakpoints, orientação
6. **Acessibilidade** — Contraste, foco, labels, leitores de tela
7. **Performance** — Bundle, renderização, cache
8. **Guardião de Consistência** — Conflitos, divergências, duplicações
9. **Padronização** — Nomenclatura, estrutura, convenções
10. **Documentador** — Docs desatualizados, faltantes

Entregar relatório consolidado com:

| Campo | Descrição |
|-------|-----------|
| Problemas | Lista completa de issues encontradas |
| Severidade | Crítico, alto, médio, baixo |
| Arquivos afetados | Onde está o problema |
| Correção recomendada | Como resolver |
| Riscos | Impacto de não corrigir |
| Prioridade | Ordem de correção recomendada |
