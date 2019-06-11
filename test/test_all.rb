# frozen_string_literal: true

$LOAD_PATH.unshift(File.expand_path("lib"))
$LOAD_PATH.unshift(File.expand_path("ext"))
require 'digest/keccak'
require File.expand_path('test/test_usage')
require File.expand_path('test/test_vectors')
require File.expand_path('test/test_new')
