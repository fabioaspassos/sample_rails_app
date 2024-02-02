echo 'Instaling Gems...'
cd /workspaces/sample_rails_app
bundle install

echo 'Starting Database...'
rails db:create
rails db:migrate

echo 'Yarn Install...'
yarn install --check-files

echo 'Ready to use, enjoy! ;)'