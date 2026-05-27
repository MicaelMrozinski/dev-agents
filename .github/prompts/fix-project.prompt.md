# Prompt: Corrigir Projeto

Use este prompt quando o usuário disser: **"Corrija este projeto"**.

---

## Instrução

Leia `.github/copilot-instructions.md`, `.github/AGENTS.md` e a documentação de estado do projeto antes de iniciar.

## Passos

1. Validar repositório, branch e status.
2. Entender problemas relatados ou encontrados.
3. Selecionar agentes necessários para cada correção.
4. Priorizar correções críticas.
5. Corrigir em etapas pequenas.
6. Validar cada etapa.
7. Atualizar documentação afetada.
8. Não iniciar features novas.

## Prioridade de Correção

1. Vulnerabilidades críticas.
2. Bugs que impedem uso.
3. Quebra de contratos/APIs.
4. Integridade de dados.
5. Falhas de acessibilidade bloqueantes.
6. Problemas graves de responsividade.
7. Testes quebrados.
8. Textos hardcoded quando i18n estiver ativada.
9. Performance.
10. Inconsistências de código.
11. Documentação desatualizada.

## Entrega

Entregar:

- problemas corrigidos;
- agentes ativados;
- arquivos alterados;
- comandos executados;
- resultados;
- pendências;
- se a fase pode ser aprovada.
