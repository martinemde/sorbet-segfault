# typed: true
# frozen_string_literal: true

require "aws-sdk-s3"
require "debug"
require "forwardable"
require "open3"
require "sorbet-runtime"
require "stringio"
require "tempfile"
require "zeitwerk"
