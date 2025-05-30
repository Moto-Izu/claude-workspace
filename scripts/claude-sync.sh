#!/bin/bash

# Claude AI 作業内容自動同期スクリプト
# Usage: ./claude-sync.sh "コミットメッセージ"

WORKSPACE_DIR="$HOME/claude-workspace"
cd "$WORKSPACE_DIR"

# 現在の日時を取得
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

# コミットメッセージの設定
if [ -n "$1" ]; then
    COMMIT_MSG="$1"
else
    COMMIT_MSG="Claude AI自動同期: $TIMESTAMP"
fi

echo "=== Claude Workspace 同期開始 ==="
echo "タイムスタンプ: $TIMESTAMP"
echo "コミットメッセージ: $COMMIT_MSG"

# GitHubトークンの確認
if [ -z "$GITHUB_TOKEN" ]; then
    echo "エラー: GITHUB_TOKENが設定されていません"
    exit 1
fi

# 変更のあるファイルを確認
git add .
if git diff --cached --quiet; then
    echo "変更なし - 同期をスキップ"
    exit 0
fi

# コミットとプッシュ
git commit -m "$COMMIT_MSG"

# リモートURLにトークンを含める形でプッシュ
git push https://$GITHUB_TOKEN@github.com/Moto-Izu/claude-workspace.git main

echo "=== 同期完了 ==="
echo "リポジトリURL: https://github.com/Moto-Izu/claude-workspace" 