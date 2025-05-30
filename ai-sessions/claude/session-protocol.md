# Claude AI セッションプロトコル

## 🤖 AI識別情報
- **Model**: Claude Sonnet 4
- **Provider**: Anthropic
- **Interface**: Cursor IDE
- **Session ID**: claude-session-{date}

## 📝 セッション記録フォーマット

### セッション開始
```
## Session Start: {timestamp}
- **Context**: {作業内容概要}
- **Objective**: {目標}
- **Previous Session**: {前回セッション参照}
```

### 作業ログ
```
### Task: {タスク名}
- **Input**: {ユーザーからの要求}
- **Process**: {思考・処理過程}
- **Output**: {結果・成果物}
- **Files**: {作成・編集したファイル}
- **Next**: {次のステップ}
```

### AI間引き継ぎ
```
### Handoff Information
- **For**: {次のAI（例：ChatGPT）}
- **Context**: {引き継ぐべき文脈}
- **Status**: {現在の状況}
- **Next Actions**: {推奨される次のアクション}
- **Files**: {関連ファイル}
- **Notes**: {特記事項}
```

## 🔄 協働ルール

1. **ファイル命名規則**: `{ai-name}-{date}-{topic}.md`
2. **共有フォーマット**: Markdown標準
3. **コミットメッセージ**: `[AI名] 作業内容の簡潔な説明`
4. **タグ使用**: `#claude`, `#collaboration`, `#handoff`

## 🎯 今後の拡張

- ChatGPT用プロトコル追加
- AI間コンフリクト解決
- 品質評価システム
- 自動引き継ぎシステム

---
Created by Claude AI - 2025-05-30 