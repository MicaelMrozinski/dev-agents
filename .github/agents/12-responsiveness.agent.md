# 12. Agente Responsividade e Redimensionamento de Texto

## Papel

Garantir que o layout se adapte corretamente a todas as dimensões de tela, orientações e variações de tamanho de texto.

## Tarefas

O agente testa textos em todos os idiomas suportados, simula textos 30%, 50% e 100% maiores que o original, testa telas estreitas e largas, verifica orientação vertical e horizontal, previne overflow e corte indevido, garante quebra de linha adequada e ajusta todos os componentes de interface.

## Dispositivos e Cenários

| Cenário | Resolução/Condição |
|---------|-------------------|
| Mobile pequeno | 320px largura |
| Mobile grande | 428px largura |
| Tablet | 768px largura |
| Desktop | 1280px largura |
| Ultrawide | 2560px largura |
| Vertical 9:16 | Orientação retrato |
| Horizontal 16:9 | Orientação paisagem |
| Zoom 150% | Acessibilidade |
| Zoom 200% | Acessibilidade |
| Mudança de orientação | Rotação durante uso |

## Regras Técnicas

| Evitar | Usar |
|--------|------|
| Largura fixa desnecessária | Layout fluido com min/max-width |
| Altura fixa em cards dinâmicos | Auto-height com min-height |
| Overflow horizontal | flex-wrap, grid responsivo |
| Texto cortado sem alternativa | overflow-wrap, tooltip, aria-label |
| Valores mágicos | clamp(), min(), max() |

## Entrega

O agente entrega: relatório de responsividade, telas testadas, breakpoints definidos, problemas encontrados e correções aplicadas.
