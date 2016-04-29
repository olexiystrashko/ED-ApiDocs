install:
	bundle install

compile:
	bundle exec middleman build --clean

clean:
	rm -rf ./build

run:
	bundle exec middleman server
