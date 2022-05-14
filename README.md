## ローカルでのテスト方法
- github pagesのGemfile作る (任意?)
```
source 'https://rubygems.org'
gem 'github-pages'
gem 'rdiscount'
```
- docker コンテナを作る
```
docker compose up -d
```

- ビルドと起動
```
bundle install
# --force_polling でファイルが変更されたら自動でビルドされる
bundle exec jekyll serve --force_polling --host 0.0.0.0 --port 5555
```

- ローカルのブラウザから `http://0.0.0.0:5555` にアクセス

ビルドが走ったら、ブラウザを更新する


### 参考
- https://www.codit.work/notes/7sgrfyoex15pt6njnjs9/
- https://web.plus-idea.net/on/docker-web-server-access-denied/