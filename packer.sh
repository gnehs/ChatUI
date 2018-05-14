#!/bin/sh
echo "－－－－－－－－－－－－－－－－－－－－－－－－"
echo "   ChatUI Packer"
echo "－－－－－－－－－－－－－－－－－－－－－－－－"

read -p "⭐️ 輸入資料夾位置=> " xiaoandir
read -p "⭐️ 輸入版本號=> " version

#確認資料夾路徑
if [ "$xiaoandir" ];then
	cd "$xiaoandir"
else
    cd "/Volumes/Data/文件/GitHub/ChatUI/"
fi
#打包囉
tar -cvzf "ChatUI_${version}.tar.gz" css fonts LICENSE README.md

echo "🗃 打包完成"