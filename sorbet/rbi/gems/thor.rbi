# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/thor/all/thor.rbi
#
# thor-1.3.2

class Thor
  def help(command = nil, subcommand = nil); end
  def self.at_least_one(*args, &block); end
  def self.banner(command, namespace = nil, subcommand = nil); end
  def self.baseclass; end
  def self.check_unknown_options!(options = nil); end
  def self.check_unknown_options?(config); end
  def self.command_exists?(command_name); end
  def self.command_help(shell, command_name); end
  def self.create_command(meth); end
  def self.create_task(meth); end
  def self.default_command(meth = nil); end
  def self.default_task(meth = nil); end
  def self.deprecation_warning(message); end
  def self.desc(usage, description, options = nil); end
  def self.disable_required_check!(*command_names); end
  def self.disable_required_check; end
  def self.disable_required_check?(command); end
  def self.dispatch(meth, given_args, given_opts, config); end
  def self.dynamic_command_class; end
  def self.exclusive(*args, &block); end
  def self.find_command_possibilities(meth); end
  def self.find_task_possibilities(meth); end
  def self.help(shell, subcommand = nil); end
  def self.initialize_added; end
  def self.long_desc(long_description, options = nil); end
  def self.map(mappings = nil, **kw); end
  def self.method_at_least_one(*args, &block); end
  def self.method_at_least_one_option_names; end
  def self.method_exclusive(*args, &block); end
  def self.method_exclusive_option_names; end
  def self.method_option(name, options = nil); end
  def self.method_options(options = nil); end
  def self.normalize_command_name(meth); end
  def self.normalize_task_name(meth); end
  def self.option(name, options = nil); end
  def self.options(options = nil); end
  def self.package_name(name, _ = nil); end
  def self.print_at_least_one_required_options(shell, command = nil); end
  def self.print_exclusive_options(shell, command = nil); end
  def self.printable_commands(all = nil, subcommand = nil); end
  def self.printable_tasks(all = nil, subcommand = nil); end
  def self.register(klass, subcommand_name, usage, description, options = nil); end
  def self.retrieve_command_name(args); end
  def self.retrieve_task_name(args); end
  def self.sort_commands!(list); end
  def self.stop_on_unknown_option!(*command_names); end
  def self.stop_on_unknown_option; end
  def self.stop_on_unknown_option?(command); end
  def self.subcommand(subcommand, subcommand_class); end
  def self.subcommand_classes; end
  def self.subcommand_help(cmd); end
  def self.subcommands; end
  def self.subtask(subcommand, subcommand_class); end
  def self.subtask_help(cmd); end
  def self.subtasks; end
  def self.task_help(shell, command_name); end
  extend Thor::Base::ClassMethods
  extend Thor::Invocation::ClassMethods
  include Thor::Base
  include Thor::Invocation
  include Thor::Shell
end
class Anonymous_Struct_20 < Struct
  def ancestor_name; end
  def ancestor_name=(_); end
  def description; end
  def description=(_); end
  def long_description; end
  def long_description=(_); end
  def name; end
  def name=(_); end
  def options; end
  def options=(_); end
  def options_relation; end
  def options_relation=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.keyword_init?; end
  def self.members; end
  def self.new(*arg0); end
  def usage; end
  def usage=(_); end
  def wrap_long_description; end
  def wrap_long_description=(_); end
end
class Thor::Command < Anonymous_Struct_20
  def formatted_usage(klass, namespace = nil, subcommand = nil); end
  def handle_argument_error?(instance, error, caller); end
  def handle_no_method_error?(instance, error, caller); end
  def hidden?; end
  def initialize(name, description, long_description, wrap_long_description, usage, options = nil, options_relation = nil); end
  def initialize_copy(other); end
  def local_method?(instance, name); end
  def method_at_least_one_option_names; end
  def method_exclusive_option_names; end
  def not_debugging?(instance); end
  def private_method?(instance); end
  def public_method?(instance); end
  def required_arguments_for(klass, usage); end
  def required_options; end
  def run(instance, args = nil); end
  def sans_backtrace(backtrace, caller); end
end
class Thor::HiddenCommand < Thor::Command
  def hidden?; end
end
class Thor::DynamicCommand < Thor::Command
  def initialize(name, options = nil); end
  def run(instance, args = nil); end
end
module Thor::CoreExt
end
class Thor::CoreExt::HashWithIndifferentAccess < Hash
  def [](key); end
  def []=(key, value); end
  def convert_key(key); end
  def delete(key); end
  def except(*keys); end
  def fetch(key, *args); end
  def initialize(hash = nil); end
  def key?(key); end
  def merge!(other); end
  def merge(other); end
  def method_missing(method, *args); end
  def replace(other_hash); end
  def reverse_merge!(other_hash); end
  def reverse_merge(other); end
  def slice(*keys); end
  def to_hash; end
  def values_at(*indices); end
end
module Thor::Correctable
  def corrections; end
  def to_s; end
end
class Thor::Error < StandardError
end
class Thor::UndefinedCommandError < Thor::Error
  def all_commands; end
  def command; end
  def initialize(command, all_commands, namespace); end
end
class Thor::UndefinedCommandError::SpellChecker
  def corrections; end
  def error; end
  def initialize(error); end
  def spell_checker; end
end
class Thor::AmbiguousCommandError < Thor::Error
end
class Thor::InvocationError < Thor::Error
end
class Thor::UnknownArgumentError < Thor::Error
  def initialize(switches, unknown); end
  def switches; end
  def unknown; end
end
class Thor::UnknownArgumentError::SpellChecker
  def corrections; end
  def error; end
  def initialize(error); end
  def spell_checker; end
end
class Thor::RequiredArgumentMissingError < Thor::InvocationError
end
class Thor::MalformattedArgumentError < Thor::InvocationError
end
class Thor::ExclusiveArgumentError < Thor::InvocationError
end
class Thor::AtLeastOneRequiredArgumentError < Thor::InvocationError
end
module Thor::Invocation
  def _parse_initialization_options(args, opts, config); end
  def _retrieve_class_and_command(name, sent_command = nil); end
  def _retrieve_class_and_task(name, sent_command = nil); end
  def _shared_configuration; end
  def current_command_chain; end
  def initialize(args = nil, options = nil, config = nil, &block); end
  def invoke(name = nil, *args); end
  def invoke_all; end
  def invoke_command(command, *args); end
  def invoke_task(command, *args); end
  def invoke_with_padding(*args); end
  def self.included(base); end
end
module Thor::Invocation::ClassMethods
  def prepare_for_invocation(key, name); end
end
class Thor::NestedContext
  def enter; end
  def entered?; end
  def initialize; end
  def pop; end
  def push; end
end
class Thor::Argument
  def banner; end
  def default; end
  def default_banner; end
  def description; end
  def enum; end
  def enum_to_s; end
  def human_name; end
  def initialize(name, options = nil); end
  def name; end
  def print_default; end
  def required; end
  def required?; end
  def show_default?; end
  def type; end
  def usage; end
  def valid_type?(type); end
  def validate!; end
end
class Thor::Arguments
  def check_requirement!; end
  def current_is_value?; end
  def initialize(arguments = nil); end
  def last?; end
  def no_or_skip?(arg); end
  def parse(args); end
  def parse_array(name); end
  def parse_hash(name); end
  def parse_numeric(name); end
  def parse_string(name); end
  def peek; end
  def remaining; end
  def self.parse(*args); end
  def self.split(args); end
  def shift; end
  def unshift(arg); end
  def validate_enum_value!(name, value, message); end
end
class Thor::Option < Thor::Argument
  def aliases; end
  def aliases_for_usage; end
  def array?; end
  def boolean?; end
  def dasherize(str); end
  def dasherized?; end
  def group; end
  def hash?; end
  def hide; end
  def human_name; end
  def initialize(name, options = nil); end
  def lazy_default; end
  def normalize_aliases(aliases); end
  def numeric?; end
  def repeatable; end
  def self.parse(key, value); end
  def show_default?; end
  def string?; end
  def switch_name; end
  def undasherize(str); end
  def usage(padding = nil); end
  def validate!; end
  def validate_default_type!; end
end
class Thor::Options < Thor::Arguments
  def assign_result!(option, result); end
  def check_at_least_one!; end
  def check_exclusive!; end
  def check_unknown!; end
  def current_is_switch?; end
  def current_is_switch_formatted?; end
  def current_is_value?; end
  def initialize(hash_options = nil, defaults = nil, stop_on_unknown = nil, disable_required_check = nil, relations = nil); end
  def names_to_switch_names(names = nil); end
  def normalize_switch(arg); end
  def parse(args); end
  def parse_boolean(switch); end
  def parse_peek(switch, option); end
  def parsing_options?; end
  def peek; end
  def remaining; end
  def self.to_switches(options); end
  def shift; end
  def switch?(arg); end
  def switch_option(arg); end
  def unshift(arg, is_value: nil); end
end
module Thor::Base
  def args; end
  def args=(arg0); end
  def initialize(args = nil, local_options = nil, config = nil); end
  def options; end
  def options=(arg0); end
  def parent_options; end
  def parent_options=(arg0); end
  def self.included(base); end
  def self.register_klass_file(klass); end
  def self.shell; end
  def self.shell=(arg0); end
  def self.subclass_files; end
  def self.subclasses; end
end
module Thor::Shell
  def _shared_configuration; end
  def ask(*args, &block); end
  def error(*args, &block); end
  def file_collision(*args, &block); end
  def initialize(args = nil, options = nil, config = nil); end
  def no?(*args, &block); end
  def print_in_columns(*args, &block); end
  def print_table(*args, &block); end
  def print_wrapped(*args, &block); end
  def say(*args, &block); end
  def say_error(*args, &block); end
  def say_status(*args, &block); end
  def set_color(*args, &block); end
  def shell; end
  def shell=(arg0); end
  def terminal_width(*args, &block); end
  def with_padding; end
  def yes?(*args, &block); end
end
module Thor::LineEditor
  def self.best_available; end
  def self.readline(prompt, options = nil); end
end
class Thor::LineEditor::Basic
  def echo?; end
  def get_input; end
  def initialize(prompt, options); end
  def options; end
  def prompt; end
  def readline; end
  def self.available?; end
end
class Thor::LineEditor::Readline < Thor::LineEditor::Basic
  def add_to_history?; end
  def completion_options; end
  def completion_proc; end
  def readline; end
  def self.available?; end
  def use_path_completion?; end
end
class Thor::LineEditor::Readline::PathCompletion
  def absolute_matches; end
  def base_path; end
  def glob_pattern; end
  def initialize(text); end
  def matches; end
  def relative_matches; end
  def text; end
end
module Thor::Sandbox
end
module Thor::Util
  def self.camel_case(str); end
  def self.escape_globs(path); end
  def self.escape_html(string); end
  def self.find_by_namespace(namespace); end
  def self.find_class_and_command_by_namespace(namespace, fallback = nil); end
  def self.find_class_and_task_by_namespace(namespace, fallback = nil); end
  def self.globs_for(path); end
  def self.load_thorfile(path, content = nil, debug = nil); end
  def self.namespace_from_thor_class(constant); end
  def self.namespaces_in_content(contents, file = nil); end
  def self.ruby_command; end
  def self.snake_case(str); end
  def self.thor_classes_in(klass); end
  def self.thor_root; end
  def self.thor_root_glob; end
  def self.user_home; end
end
module Thor::Base::ClassMethods
  def all_commands; end
  def all_tasks; end
  def allow_incompatible_default_type!; end
  def argument(name, options = nil); end
  def arguments; end
  def attr_accessor(*); end
  def attr_reader(*); end
  def attr_writer(*); end
  def baseclass; end
  def basename; end
  def build_option(name, options, scope); end
  def build_options(options, scope); end
  def built_option_names(target, opt = nil, &block); end
  def check_default_type!; end
  def check_default_type; end
  def check_unknown_options!; end
  def check_unknown_options; end
  def check_unknown_options?(config); end
  def class_at_least_one(*args, &block); end
  def class_at_least_one_option_names; end
  def class_exclusive(*args, &block); end
  def class_exclusive_option_names; end
  def class_option(name, options = nil); end
  def class_options(options = nil); end
  def class_options_help(shell, groups = nil); end
  def command_scope_member(name, options = nil); end
  def commands; end
  def create_command(meth); end
  def create_task(meth); end
  def disable_required_check?(command_name); end
  def dispatch(command, given_args, given_opts, config); end
  def exit_on_failure?; end
  def find_and_refresh_command(name); end
  def find_and_refresh_task(name); end
  def from_superclass(method, default = nil); end
  def group(name = nil); end
  def handle_argument_error(command, error, args, arity); end
  def handle_no_command_error(command, has_namespace = nil); end
  def handle_no_task_error(command, has_namespace = nil); end
  def inherited(klass); end
  def initialize_added; end
  def is_thor_reserved_word?(word, type); end
  def method_added(meth); end
  def namespace(name = nil); end
  def no_commands(&block); end
  def no_commands?; end
  def no_commands_context; end
  def no_tasks(&block); end
  def print_options(shell, options, group_name = nil); end
  def public_command(*names); end
  def public_task(*names); end
  def register_options_relation_for(target, relation, *args, &block); end
  def remove_argument(*names); end
  def remove_class_option(*names); end
  def remove_command(*names); end
  def remove_task(*names); end
  def start(given_args = nil, config = nil); end
  def stop_on_unknown_option?(command_name); end
  def strict_args_position!; end
  def strict_args_position; end
  def strict_args_position?(config); end
  def tasks; end
end
module Thor::Actions
  def _cleanup_options_and_set(options, key); end
  def _shared_configuration; end
  def action(instance); end
  def add_file(destination, *args, &block); end
  def add_link(destination, *args); end
  def append_file(path, *args, &block); end
  def append_to_file(path, *args, &block); end
  def apply(path, config = nil); end
  def behavior; end
  def behavior=(arg0); end
  def capture(*args); end
  def chmod(path, mode, config = nil); end
  def comment_lines(path, flag, *args); end
  def concat(string); end
  def copy_file(source, *args, &block); end
  def create_file(destination, *args, &block); end
  def create_link(destination, *args); end
  def destination_root; end
  def destination_root=(root); end
  def directory(source, *args, &block); end
  def empty_directory(destination, config = nil); end
  def find_in_source_paths(file); end
  def get(source, *args, &block); end
  def gsub_file(path, flag, *args, &block); end
  def in_root; end
  def initialize(args = nil, options = nil, config = nil); end
  def inject_into_class(path, klass, *args, &block); end
  def inject_into_file(destination, *args, &block); end
  def inject_into_module(path, module_name, *args, &block); end
  def insert_into_file(destination, *args, &block); end
  def inside(dir = nil, config = nil, &block); end
  def link_file(source, *args); end
  def output_buffer; end
  def output_buffer=(arg0); end
  def prepend_file(path, *args, &block); end
  def prepend_to_file(path, *args, &block); end
  def relative_to_original_destination_root(path, remove_dot = nil); end
  def remove_dir(path, config = nil); end
  def remove_file(path, config = nil); end
  def run(command, config = nil); end
  def run_ruby_script(command, config = nil); end
  def self.included(base); end
  def source_paths; end
  def template(source, *args, &block); end
  def thor(command, *args); end
  def uncomment_lines(path, flag, *args); end
  def with_output_buffer(buf = nil); end
end
class Thor::Actions::EmptyDirectory
  def base; end
  def config; end
  def convert_encoded_instructions(filename); end
  def destination; end
  def destination=(destination); end
  def exists?; end
  def given_destination; end
  def initialize(base, destination, config = nil); end
  def invoke!; end
  def invoke_with_conflict_check(&block); end
  def on_conflict_behavior; end
  def on_file_clash_behavior; end
  def pretend?; end
  def relative_destination; end
  def revoke!; end
  def say_status(status, color); end
end
class Thor::Actions::CreateFile < Thor::Actions::EmptyDirectory
  def data; end
  def force_on_collision?; end
  def force_or_skip_or_conflict(force, skip, &block); end
  def identical?; end
  def initialize(base, destination, data, config = nil); end
  def invoke!; end
  def on_conflict_behavior(&block); end
  def render; end
end
class Thor::Actions::CreateLink < Thor::Actions::CreateFile
  def data; end
  def exists?; end
  def identical?; end
  def invoke!; end
end
class Thor::Actions::Directory < Thor::Actions::EmptyDirectory
  def execute!; end
  def file_level_lookup(previous_lookup); end
  def files(lookup); end
  def initialize(base, source, destination = nil, config = nil, &block); end
  def invoke!; end
  def revoke!; end
  def source; end
end
class Thor::Actions::CapturableERB < ERB
  def set_eoutvar(compiler, eoutvar = nil); end
end
class Thor::Actions::InjectIntoFile < Thor::Actions::EmptyDirectory
  def behavior; end
  def content; end
  def flag; end
  def initialize(base, destination, data, config); end
  def invoke!; end
  def replace!(regexp, string, force); end
  def replacement; end
  def replacement_present?; end
  def revoke!; end
  def say_status(behavior, warning: nil, color: nil); end
end
module Thor::Actions::ClassMethods
  def add_runtime_options!; end
  def source_paths; end
  def source_paths_for_search; end
  def source_root(path = nil); end
end
class Thor::Group
  def _invoke_for_class_method(klass, command = nil, *args, &block); end
  def self.banner; end
  def self.baseclass; end
  def self.class_options_help(shell, groups = nil); end
  def self.command_exists?(command_name); end
  def self.create_command(meth); end
  def self.create_task(meth); end
  def self.desc(description = nil); end
  def self.dispatch(command, given_args, given_opts, config); end
  def self.get_options_from_invocations(group_options, base_options); end
  def self.handle_argument_error(command, error, _args, arity); end
  def self.help(shell); end
  def self.invocation_blocks; end
  def self.invocations; end
  def self.invoke(*names, &block); end
  def self.invoke_from_option(*names, &block); end
  def self.printable_commands(*); end
  def self.printable_tasks(*); end
  def self.remove_invocation(*names); end
  def self.self_command; end
  def self.self_task; end
  extend Thor::Base::ClassMethods
  extend Thor::Invocation::ClassMethods
  include Thor::Base
  include Thor::Invocation
  include Thor::Shell
end
