# ai-plugins

[![textlint](https://github.com/TakeshiSaito/ai-plugins/actions/workflows/textlint.yml/badge.svg)](https://github.com/TakeshiSaito/ai-plugins/actions/workflows/textlint.yml)

個人のAIプラグイン集

## Plugins

このリポジトリで配布しているプラグインは次のとおりです。

| プラグイン | 内容 |
| --- | --- |
| [sdd](plugins/sdd) | スペック駆動開発（SDD）のスキル集。PRD、機能設計書、アーキテクチャ設計書、リポジトリ構造定義書、用語集、ステアリングを扱う |

## Installation

リポジトリをマーケットプレイスとして一度だけ登録し、使うプラグインを個別にインストールします。以下は sdd プラグインを入れる例です。ほかのプラグインも `sdd` の部分を差し替えれば同じ手順で入ります。

### Claude Code

Claude Code のセッション内で次のコマンドを実行します。

```text
/plugin marketplace add TakeshiSaito/ai-plugins
/plugin install sdd@takeshi-plugins
```

### GitHub Copilot CLI

ターミナルで次のコマンドを実行します。

```sh
copilot plugin marketplace add TakeshiSaito/ai-plugins
copilot plugin install sdd@takeshi-plugins
```

### Codex CLI

ターミナルで次のコマンドを実行します。

```sh
codex plugin marketplace add TakeshiSaito/ai-plugins
codex plugin add sdd@takeshi-plugins
```


## License

[MIT](LICENSE)
