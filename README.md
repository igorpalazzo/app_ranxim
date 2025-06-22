# 🏆 App do Ranxim (Terminal Edition)

Um simples, porém robusto, gerenciador de ranking e partidas para jogos locais, rodando diretamente no seu terminal. Desenvolvido com Dart.

> **⚠️ Projeto em Desenvolvimento (MVP) ⚠️**
>
> Este projeto é um exercício de aprendizado em Dart e representa a primeira versão (MVP - Produto Mínimo Viável) da ideia. O objetivo principal foi focar na lógica de programação, estruturas de dados e interação com o terminal. Funcionalidades mais avançadas e uma interface gráfica estão nos planos futuros\!

## 📖 Sobre o Projeto

O "App do Ranxim" nasceu da necessidade de um grupo de amigos gerenciar de forma justa e divertida as partidas de sinuca (ou qualquer outro jogo\!). Chega de anotações em papel ou discussões sobre quem tem mais pontos. Este app resolve isso de forma definitiva, direto do terminal.

A versão atual é focada na funcionalidade principal: registrar quem ganhou de quem e manter um ranking atualizado.

## ✨ Funcionalidades Atuais

  * **Ver Ranking:** Exibe a lista de todos os jogadores, ordenada pela pontuação.
  * **Registrar Partida:** Permite registrar o resultado de uma partida entre dois jogadores.
  * **Cálculo de Pontos:** Atualiza automaticamente a pontuação do vencedor (+10 pts) e do perdedor (-5 pts).
  * **Histórico de Partidas:** Mantém um registro de todos os jogos que aconteceram.

## 🚀 Como Rodar

Para executar este projeto na sua máquina, siga os passos abaixo.

### Pré-requisitos

  * Você precisa ter o **Dart SDK** instalado. Se não tiver, siga as instruções no [site oficial do Dart](https://dart.dev/get-dart).

### Instalação e Execução

1.  Clone o repositório para a sua máquina:
    ```sh
    git clone https://github.com/SEU_USUARIO/app-do-ranxim.git
    ```
2.  Navegue até a pasta do projeto:
    ```sh
    cd app-do-ranxim
    ```
3.  Execute o programa:
    ```sh
    dart run bin/ranxim_app.dart
    ```

## 🎮 Como Usar

Ao executar o programa, um menu interativo será exibido no terminal. Basta digitar o número da opção desejada e pressionar Enter para interagir com o aplicativo.

```
--- BEM-VINDO AO APP DO RANXIM (TERMINAL) ---
1. Ver Ranking
2. Registrar Nova Partida
3. Ver Histórico de Partidas
4. Sair
Escolha uma opção:
```

## 🗺️ Roadmap (Funcionalidades Futuras)

Este projeto é a base para algo maior. Os próximos passos planejados são:

  * [ ] Persistência de dados em um arquivo (`.json`) para que o ranking não seja perdido ao fechar o app.
  * [ ] Adicionar mais informações aos jogadores (ex: número de vitórias/derrotas).
  * [ ] Suporte a partidas em duplas (2v2).
  * [ ] Implementar um sistema de "desafios".
  * [ ] Evoluir o projeto para uma interface gráfica com **Flutter**.

## 📄 Licença

Distribuído sob a licença MIT. Veja o arquivo `LICENSE` para mais informações.