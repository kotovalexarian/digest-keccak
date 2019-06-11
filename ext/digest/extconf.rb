#!/usr/bin/env ruby
# frozen_string_literal: true

require 'mkmf'

def cflags(*args)
  args.each do |str|
    $CFLAGS += " #{str.shellescape} "
  end
end

def have_header!(*args)
  exit 1 unless have_header(*args)
end

def have_func!(header, *args)
  exit 1 unless have_func(*args, header)
end

cflags '-fvisibility=hidden'

have_header! 'ruby/digest.h'

have_func! 'rb_str_set_len'

create_makefile 'digest/keccak' or exit 1
