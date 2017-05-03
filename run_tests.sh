#!/bin/sh

rake db:migrate
rake db:seed RAILS_ENV=test --trace

# run TDD tests
echo "Starting TDD tests"
#ruby -I test test/*/*_test.rb
rspec spec/features/*.rb
if [ $? -eq 0 ]
then
    rspec spec/requests/*.rb

    if [ $? -eq 0 ]
    then
        # run BDD tests
        echo "Starting BDD tests"
        cucumber
        
        if [ $? -eq 0 ]
        then
            echo "All tests passed!"
        else
            echo "BDD tests failed!"
        fi
    else
        echo "TDD tests failed!"
    fi

else
    echo "TDD tests failed!"
fi

