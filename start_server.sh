#!/bin/sh

/jruby/bin/jruby -S bundle install --system
/jruby/bin/jruby -S torquebox run -b 0.0.0.0 -p 8080
