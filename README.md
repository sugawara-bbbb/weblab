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
- dockerコンテナのIPアドレスを調べる
```
# コンテナIDを調べる
docker ps
# コンテナのIPアドレスを調べる
docker inspect ${CONTAINER_ID} | grep grep '\"IPAddress\":'
```

- ビルドと起動
```
bundle install
# --force_polling でファイルが変更されたら自動でビルドされる
bundle exec jekyll serve --force_polling --${CONTAINER_IP_ADDRESS} --port 5555
```

- ブラウザからアクセス

ビルドが走ったら、ブラウザを更新する


### 参考
- https://www.codit.work/notes/7sgrfyoex15pt6njnjs9/
- https://web.plus-idea.net/on/docker-web-server-access-denied/