---
name: sdd-development
description: スペック駆動開発（SDD）の全体の流れを、PRD → 機能設計書 → アーキテクチャ設計書 → リポジトリ構造定義書 → 用語集 → ステアリング（計画と実装）の順に進めるためのスキル。「SDD で進めて」「メモから作って」「仕様から作って」と言われたとき、どこから手を付けるか迷ったときに使用する。
---

# SDD 開発スキル

仕様を書いてから作る。各段階は、それぞれのスキルに従って進める。

| 段階 | スキル | 成果物 |
|------|-------|-------|
| 1. 何を作るか | prd-writing | `.sdd/product-requirements.md` |
| 2. どう作るか（機能） | functional-design | `.sdd/functional-design.md` |
| 3. どう作るか（技術） | architecture-design | `.sdd/architecture.md` |
| 4. どこに置くか | repository-structure | `.sdd/repository-structure.md` |
| 5. 言葉をそろえる | glossary | `.sdd/glossary.md` |
| 6. この作業の計画 | steering（計画） | `.sdd/steering/[YYYYMMDD]-[機能名]/` |
| 7. 実装 | steering（実装） | コードと tasklist.md の進捗 |

## 進め方

- 既にある成果物は作り直さず、必要なら更新する。足りない段階から始める。
- 永続ドキュメント（1〜5）がそろっているプロジェクトでの機能追加や修正は、6から始める。要件や設計が変わるなら、先に該当する永続ドキュメントを更新する。
- 各段階の成果物ができたら、要点をユーザーに伝えて確認を取ってから次へ進む。
