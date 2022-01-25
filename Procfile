release: rails db:migrate

web: bundle exec puma -t 5:5 -p ${PORT:-4000} -e ${RACK_ENV:-development}

wp-client: HMR=true RAILS_ENV=development NODE_ENV=development bin/webpack-dev-server
wp-server: bundle exec rake react_on_rails:locale && HMR=true SERVER_BUNDLE_ONLY=yes bin/webpack --watch