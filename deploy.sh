#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
hexo clean
hexo g
hexo d

# 如果是发布到自定义域名
# echo 'www.example.com' > CNAME

git add -A
git commit -m ':pencil: update content'
git push

cd -
