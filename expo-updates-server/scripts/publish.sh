while getopts d: flag
do
    case "${flag}" in
        d) directory=${OPTARG};;
    esac
done

cd /home/sonnh/Documents/Saymee/my-x-mobile
npx expo export
cd /home/sonnh/Documents/Saymee/custom-expo-updates-server/expo-updates-server
rm -rf updates/$directory/
cp -r /home/sonnh/Documents/Saymee/my-x-mobile/dist/ updates/$directory

node ./scripts/exportClientExpoConfig.js > updates/$directory/expoConfig.json