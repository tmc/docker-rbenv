DOCKER-VERSION 0.7.6
 
 
FROM pandrew/ubuntu-lts
 
MAINTAINER Paul Andrew Liljenberg <letters@paulnotcom.se>
 
RUN apt-get install -qqy build-essential libssl-dev zlib1g-dev 
 
# Install rbenv
RUN git clone https://github.com/sstephenson/rbenv.git .rbenv
 
# install ruby-build
RUN git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
 
ENV PATH ~/.rbenv/shims:~/.rbenv/bin:$PATH
RUN echo 'eval "$(rbenv init -)"' >  ~/.bash_profile

