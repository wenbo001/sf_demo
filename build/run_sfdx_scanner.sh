echo "Skip this for now"
#echo "Installing JDK"
#sudo apt-get update
#sudo apt-get --fix-missing install default-jdk
#echo "Install nvm"
#nvm install 18.0.0
#nvm use 18.0.0
#echo "Install SFDX Scanner"
#echo -e 'y/n' | sfdx plugins:install @salesforce/sfdx-scanner
#
#echo "Running SFDX Scanner"
#npx sfdx scanner:run --target "**/default/**" --format "csv" --outfile "sfdxScannerAnalysis.csv" --violations-cause-error