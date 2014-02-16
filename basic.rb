#!/usr/bin/env ruby

require 'csv'
require 'optparse'
require 'pp'

require 'parslet'

require_relative 'arguments'
require_relative 'basic_array'
require_relative 'basic_float'
require_relative 'basic_integer'
require_relative 'basic_numeric'
require_relative 'basic_string'
require_relative 'binary_logic_operation'
require_relative 'binary_math_operation'
require_relative 'binary_operation'
require_relative 'binary_operations'
require_relative 'boolean'
require_relative 'coercion_helper'
require_relative 'comparison_methods'
require_relative 'data_statement'
require_relative 'dim_statement'
require_relative 'end_statement'
require_relative 'errors'
require_relative 'for_statement'
require_relative 'functions'
require_relative 'gosub_statement'
require_relative 'goto_statement'
require_relative 'identifier'
require_relative 'if_statement'
require_relative 'input'
require_relative 'input_reader'
require_relative 'input_statement'
require_relative 'int_function'
require_relative 'left_function'
require_relative 'let_statement'
require_relative 'line'
require_relative 'main'
require_relative 'next_statement'
require_relative 'not_operation'
require_relative 'numeric_identifier'
require_relative 'on_goto_statement'
require_relative 'output'
require_relative 'parser'
require_relative 'print_null'
require_relative 'print_statement'
require_relative 'print_tab'
require_relative 'program'
require_relative 'program_counter'
require_relative 'randomize_statement'
require_relative 'read_statement'
require_relative 'remark_statement'
require_relative 'return_statement'
require_relative 'rnd_function'
require_relative 'runtime'
require_relative 'scalar_reference'
require_relative 'statement'
require_relative 'stop_statement'
require_relative 'string_identifier'
require_relative 'subscript_reference'
require_relative 'tab'
require_relative 'tab_function'
require_relative 'transform'
require_relative 'wrap_value'

Basic::Main.new(ARGV).run if $0 == __FILE__
