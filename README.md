# Dockerized Ruby and RubyGems

This Dockerfile provides a working Ruby and RubyGems environment using the minimal Alpine Linux image by Gliderlabs.

## Build

First build and tag your image:

    $ docker build -t dev/ruby .
    ...

## Bootstrap

Check versions:

    $ docker run -ti --rm -v $PWD:/opt dev/ruby ruby --version
    ruby 2.4.2p198 (2017-09-14 revision 59899) [x86_64-linux-musl]

    $ docker run -ti --rm -v $PWD:/opt dev/ruby bundle --version
    Bundler version 1.15.4

Install your project's Ruby gems in current `./vendor` directory:

    $ docker run -ti --rm -v $PWD:/opt dev/ruby bundle install --path=vendor
    ...

## Example

Run your application, none of your project's files get added to any Docker image:

    $ docker run -ti --rm -v $PWD:/opt -v $HOME/mnt:/photos dev/ruby bundle exec ruby photo.rb
    ...

## License

Released under the [MIT License](http://www.opensource.org/licenses/MIT).

## Copyright

(c)2017 [Cristian R. Arroyo](mailto:cristian.arroyo@vivaserver.com)
