components=('pb-owner-ct-user-me' 'pb-owner-ct-user-bindroom' 'pb-owner-ct-housekeep' 'pb-owner-ct-housekeep-evaluate' 'pb-owner-ct-user-login' 'pb-owner-ct-ninja-home' 'pb-owner-ct-user-setting' 'pb-owner-ct-user-myroom' 'pb-owner-ct-community' 'pb-owner-ct-header' 'pb-owner-ct-user-complaint' 'pb-owner-ct-user-community' ' pb-owner-ct-common' 'pb-owner-ct-push-message' 'pb-owner-ct-repair-apply' 'pb-owner-ct-server-order-list' 'pb-owner-ct-server-order-info' 'pb-owner-ct-info-list' 'pb-owner-ct-notice' 'pb-owner-ct-user-bill')

echo "欢迎使用组件更新同步脚本"
echo "请选择您要更新的组件："

for i in ${!components[*]}
do
	echo "$i: ${components[$i]}"
done

read num
echo "正在更新同步组件${components[$num]}"
cd ${components[$num]}
git add --all
git commit
git pull 
git push
cd ../
echo "更新同步组件${components[$num]}完成"


