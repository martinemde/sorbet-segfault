# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: false
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/rake/all/rake.rbi
#
# rake-13.2.1

module Rake
  def self.add_rakelib(*files); end
  def self.application; end
  def self.application=(app); end
  def self.each_dir_parent(dir); end
  def self.from_pathname(path); end
  def self.load_rakefile(path); end
  def self.original_dir; end
  def self.suggested_thread_count; end
  def self.with_application(block_application = nil); end
  extend Rake::FileUtilsExt
end
module Rake::Version
end
class Module
  def rake_extension(method); end
end
class String
  def ext(newext = nil); end
  def pathmap(spec = nil, &block); end
  def pathmap_explode; end
  def pathmap_partial(n); end
  def pathmap_replace(patterns, &block); end
end
module Rake::Win32
  def self.normalize(path); end
  def self.win32_system_dir; end
  def self.windows?; end
end
class Rake::Win32::Win32HomeError < RuntimeError
end
class Rake::LinkedList
  def ==(other); end
  def conj(item); end
  def each; end
  def empty?; end
  def head; end
  def initialize(head, tail = nil); end
  def inspect; end
  def self.cons(head, tail); end
  def self.empty; end
  def self.make(*args); end
  def tail; end
  def to_s; end
  include Enumerable
end
class Rake::LinkedList::EmptyLinkedList < Rake::LinkedList
  def empty?; end
  def initialize; end
  def self.cons(head, tail); end
end
class Rake::CpuCounter
  def count; end
  def count_with_default(default = nil); end
  def self.count; end
end
class Rake::Scope < Rake::LinkedList
  def path; end
  def path_with_task_name(task_name); end
  def trim(n); end
end
class Rake::Scope::EmptyScope < Rake::LinkedList::EmptyLinkedList
  def path; end
  def path_with_task_name(task_name); end
end
class Rake::TaskArgumentError < ArgumentError
end
class Rake::RuleRecursionOverflowError < StandardError
  def add_target(target); end
  def initialize(*args); end
  def message; end
end
module Rake::TaskManager
  def [](task_name, scopes = nil); end
  def add_location(task); end
  def attempt_rule(task_name, task_pattern, args, extensions, block, level); end
  def clear; end
  def create_rule(*args, &block); end
  def current_scope; end
  def define_task(task_class, *args, &block); end
  def enhance_with_matching_rule(task_name, level = nil); end
  def find_location; end
  def generate_did_you_mean_suggestions(task_name); end
  def generate_message_for_undefined_task(task_name); end
  def generate_name; end
  def get_description(task); end
  def in_namespace(name); end
  def initialize; end
  def intern(task_class, task_name); end
  def last_description; end
  def last_description=(arg0); end
  def lookup(task_name, initial_scope = nil); end
  def lookup_in_scope(name, scope); end
  def make_sources(task_name, task_pattern, extensions); end
  def resolve_args(args); end
  def resolve_args_with_dependencies(args, hash); end
  def resolve_args_without_dependencies(args); end
  def self.record_task_metadata; end
  def self.record_task_metadata=(arg0); end
  def synthesize_file_task(task_name); end
  def tasks; end
  def tasks_in_scope(scope); end
  def trace_rule(level, message); end
end
module Rake::Cloneable
  def initialize_copy(source); end
end
module FileUtils
  def create_shell_runner(cmd); end
  def ruby(*args, **options, &block); end
  def safe_ln(*args, **options); end
  def set_verbose_option(options); end
  def sh(*cmd, &block); end
  def sh_show_command(cmd); end
  def split_all(path); end
end
module Rake::FileUtilsExt
  def cd(*args, **options, &block); end
  def chdir(*args, **options, &block); end
  def chmod(*args, **options, &block); end
  def chmod_R(*args, **options, &block); end
  def chown(*args, **options, &block); end
  def chown_R(*args, **options, &block); end
  def copy(*args, **options, &block); end
  def cp(*args, **options, &block); end
  def cp_lr(*args, **options, &block); end
  def cp_r(*args, **options, &block); end
  def install(*args, **options, &block); end
  def link(*args, **options, &block); end
  def ln(*args, **options, &block); end
  def ln_s(*args, **options, &block); end
  def ln_sf(*args, **options, &block); end
  def ln_sr(*args, **options, &block); end
  def makedirs(*args, **options, &block); end
  def mkdir(*args, **options, &block); end
  def mkdir_p(*args, **options, &block); end
  def mkpath(*args, **options, &block); end
  def move(*args, **options, &block); end
  def mv(*args, **options, &block); end
  def nowrite(value = nil); end
  def rake_check_options(options, *optdecl); end
  def rake_output_message(message); end
  def remove(*args, **options, &block); end
  def rm(*args, **options, &block); end
  def rm_f(*args, **options, &block); end
  def rm_r(*args, **options, &block); end
  def rm_rf(*args, **options, &block); end
  def rmdir(*args, **options, &block); end
  def rmtree(*args, **options, &block); end
  def safe_unlink(*args, **options, &block); end
  def self.nowrite_flag; end
  def self.nowrite_flag=(arg0); end
  def self.verbose_flag; end
  def self.verbose_flag=(arg0); end
  def symlink(*args, **options, &block); end
  def touch(*args, **options, &block); end
  def verbose(value = nil); end
  def when_writing(msg = nil); end
  extend Rake::FileUtilsExt
  include FileUtils
end
class Rake::FileList
  def &(*args, &block); end
  def *(other); end
  def +(*args, &block); end
  def -(*args, &block); end
  def <<(obj); end
  def <=>(*args, &block); end
  def ==(array); end
  def [](*args, &block); end
  def []=(*args, &block); end
  def add(*filenames); end
  def add_matching(pattern); end
  def all?(*args, &block); end
  def any?(*args, &block); end
  def append(*args, &block); end
  def assoc(*args, &block); end
  def at(*args, &block); end
  def bsearch(*args, &block); end
  def bsearch_index(*args, &block); end
  def chain(*args, &block); end
  def chunk(*args, &block); end
  def chunk_while(*args, &block); end
  def clear(*args, &block); end
  def clear_exclude; end
  def collect!(*args, &block); end
  def collect(*args, &block); end
  def collect_concat(*args, &block); end
  def combination(*args, &block); end
  def compact!(*args, &block); end
  def compact(*args, &block); end
  def compact_blank!(*args, &block); end
  def compact_blank(*args, &block); end
  def concat(*args, &block); end
  def count(*args, &block); end
  def cycle(*args, &block); end
  def deconstruct(*args, &block); end
  def delete(*args, &block); end
  def delete_at(*args, &block); end
  def delete_if(*args, &block); end
  def detect(*args, &block); end
  def difference(*args, &block); end
  def dig(*args, &block); end
  def drop(*args, &block); end
  def drop_while(*args, &block); end
  def each(*args, &block); end
  def each_cons(*args, &block); end
  def each_entry(*args, &block); end
  def each_index(*args, &block); end
  def each_slice(*args, &block); end
  def each_with_index(*args, &block); end
  def each_with_object(*args, &block); end
  def egrep(pattern, *options); end
  def empty?(*args, &block); end
  def entries(*args, &block); end
  def exclude(*patterns, &block); end
  def exclude?(*args, &block); end
  def excluded_from_list?(fn); end
  def excluding(*args, &block); end
  def existing!; end
  def existing; end
  def ext(newext = nil); end
  def extract_options!(*args, &block); end
  def fetch(*args, &block); end
  def fetch_values(*args, &block); end
  def fill(*args, &block); end
  def filter!(*args, &block); end
  def filter(*args, &block); end
  def filter_map(*args, &block); end
  def find(*args, &block); end
  def find_all(*args, &block); end
  def find_index(*args, &block); end
  def first(*args, &block); end
  def flat_map(*args, &block); end
  def flatten!(*args, &block); end
  def flatten(*args, &block); end
  def grep(*args, &block); end
  def grep_v(*args, &block); end
  def group_by(*args, &block); end
  def gsub!(pat, rep); end
  def gsub(pat, rep); end
  def import(array); end
  def in_order_of(*args, &block); end
  def include(*filenames); end
  def include?(*args, &block); end
  def including(*args, &block); end
  def index(*args, &block); end
  def index_by(*args, &block); end
  def index_with(*args, &block); end
  def initialize(*patterns); end
  def inject(*args, &block); end
  def insert(*args, &block); end
  def inspect(*args, &block); end
  def intersect?(*args, &block); end
  def intersection(*args, &block); end
  def is_a?(klass); end
  def join(*args, &block); end
  def keep_if(*args, &block); end
  def kind_of?(klass); end
  def last(*args, &block); end
  def lazy(*args, &block); end
  def length(*args, &block); end
  def many?(*args, &block); end
  def map!(*args, &block); end
  def map(*args, &block); end
  def max(*args, &block); end
  def max_by(*args, &block); end
  def maximum(*args, &block); end
  def member?(*args, &block); end
  def min(*args, &block); end
  def min_by(*args, &block); end
  def minimum(*args, &block); end
  def minmax(*args, &block); end
  def minmax_by(*args, &block); end
  def none?(*args, &block); end
  def one?(*args, &block); end
  def pack(*args, &block); end
  def partition(&block); end
  def pathmap(spec = nil, &block); end
  def permutation(*args, &block); end
  def pick(*args, &block); end
  def pluck(*args, &block); end
  def pop(*args, &block); end
  def prepend(*args, &block); end
  def product(*args, &block); end
  def push(*args, &block); end
  def rassoc(*args, &block); end
  def reduce(*args, &block); end
  def reject!(*args, &block); end
  def reject(*args, &block); end
  def repeated_combination(*args, &block); end
  def repeated_permutation(*args, &block); end
  def replace(*args, &block); end
  def resolve; end
  def resolve_add(fn); end
  def resolve_exclude; end
  def reverse!(*args, &block); end
  def reverse(*args, &block); end
  def reverse_each(*args, &block); end
  def rindex(*args, &block); end
  def rotate!(*args, &block); end
  def rotate(*args, &block); end
  def sample(*args, &block); end
  def select!(*args, &block); end
  def select(*args, &block); end
  def self.[](*args); end
  def self.glob(pattern, *args); end
  def shelljoin(*args, &block); end
  def shift(*args, &block); end
  def shuffle!(*args, &block); end
  def shuffle(*args, &block); end
  def size(*args, &block); end
  def slice!(*args, &block); end
  def slice(*args, &block); end
  def slice_after(*args, &block); end
  def slice_before(*args, &block); end
  def slice_when(*args, &block); end
  def sole(*args, &block); end
  def sort!(*args, &block); end
  def sort(*args, &block); end
  def sort_by!(*args, &block); end
  def sort_by(*args, &block); end
  def sub!(pat, rep); end
  def sub(pat, rep); end
  def sum(*args, &block); end
  def take(*args, &block); end
  def take_while(*args, &block); end
  def tally(*args, &block); end
  def to_a; end
  def to_ary; end
  def to_formatted_s(*args, &block); end
  def to_fs(*args, &block); end
  def to_h(*args, &block); end
  def to_s; end
  def to_sentence(*args, &block); end
  def to_set(*args, &block); end
  def to_xml(*args, &block); end
  def transpose(*args, &block); end
  def union(*args, &block); end
  def uniq!(*args, &block); end
  def uniq(*args, &block); end
  def unshift(*args, &block); end
  def values_at(*args, &block); end
  def without(*args, &block); end
  def zip(*args, &block); end
  def |(*args, &block); end
  include Rake::Cloneable
end
class Rake::Promise
  def chore; end
  def complete?; end
  def discard; end
  def error?; end
  def initialize(args, &block); end
  def recorder; end
  def recorder=(arg0); end
  def result?; end
  def stat(*args); end
  def value; end
  def work; end
end
class Rake::ThreadPool
  def __queue__; end
  def future(*args, &block); end
  def gather_history; end
  def history; end
  def initialize(thread_count); end
  def join; end
  def process_queue_item; end
  def safe_thread_count; end
  def start_thread; end
  def stat(event, data = nil); end
  def statistics; end
end
module Rake::PrivateReader
  def self.included(base); end
end
module Rake::PrivateReader::ClassMethods
  def private_reader(*names); end
end
class Rake::ThreadHistoryDisplay
  def initialize(stats); end
  def items; end
  def rename(hash, key, renames); end
  def show; end
  def stats; end
  def threads; end
  extend Rake::PrivateReader::ClassMethods
  include Rake::PrivateReader
end
module Rake::TraceOutput
  def trace_on(out, *strings); end
end
class Rake::CommandLineOptionError < StandardError
end
class Rake::Application
  def add_import(fn); end
  def add_loader(ext, loader); end
  def collect_command_line_tasks(args); end
  def default_task_name; end
  def deprecate(old_usage, new_usage, call_site); end
  def display_cause_details(ex); end
  def display_error_message(ex); end
  def display_exception_backtrace(ex); end
  def display_exception_details(ex); end
  def display_exception_details_seen; end
  def display_exception_message_details(ex); end
  def display_prerequisites; end
  def display_tasks_and_comments; end
  def dynamic_width; end
  def dynamic_width_stty; end
  def dynamic_width_tput; end
  def exit_because_of_exception(ex); end
  def find_rakefile_location; end
  def glob(path, &block); end
  def handle_options(argv); end
  def has_cause?(ex); end
  def has_chain?(exception); end
  def have_rakefile; end
  def init(app_name = nil, argv = nil); end
  def initialize; end
  def invoke_task(task_string); end
  def load_debug_at_stop_feature; end
  def load_imports; end
  def load_rakefile; end
  def name; end
  def options; end
  def original_dir; end
  def parse_task_string(string); end
  def print_rakefile_directory(location); end
  def rake_require(file_name, paths = nil, loaded = nil); end
  def rakefile; end
  def rakefile_location(backtrace = nil); end
  def raw_load_rakefile; end
  def run(argv = nil); end
  def run_with_threads; end
  def select_tasks_to_show(options, show_tasks, value); end
  def select_trace_output(options, trace_option, value); end
  def set_default_options; end
  def sort_options(options); end
  def standard_exception_handling; end
  def standard_rake_options; end
  def standard_system_dir; end
  def system_dir; end
  def terminal_columns; end
  def terminal_columns=(arg0); end
  def terminal_width; end
  def thread_pool; end
  def top_level; end
  def top_level_tasks; end
  def trace(*strings); end
  def truncate(string, width); end
  def truncate_output?; end
  def tty_output=(arg0); end
  def tty_output?; end
  def unix?; end
  def windows?; end
  include Rake::TaskManager
  include Rake::TraceOutput
end
class Rake::PseudoStatus
  def >>(n); end
  def exited?; end
  def exitstatus; end
  def initialize(code = nil); end
  def stopped?; end
  def to_i; end
end
class Rake::TaskArguments
  def [](index); end
  def each(&block); end
  def extras; end
  def fetch(*args, &block); end
  def has_key?(key); end
  def initialize(names, values, parent = nil); end
  def inspect; end
  def key?(key); end
  def lookup(name); end
  def method_missing(sym, *args); end
  def names; end
  def new_scope(names); end
  def to_a; end
  def to_hash; end
  def to_s; end
  def values_at(*keys); end
  def with_defaults(defaults); end
  include Enumerable
end
class Rake::InvocationChain < Rake::LinkedList
  def append(invocation); end
  def member?(invocation); end
  def prefix; end
  def self.append(invocation, chain); end
  def to_s; end
end
class Rake::InvocationChain::EmptyInvocationChain < Rake::LinkedList::EmptyLinkedList
  def append(invocation); end
  def member?(obj); end
  def to_s; end
end
module Rake::InvocationExceptionMixin
  def chain; end
  def chain=(value); end
end
class Rake::Task
  def actions; end
  def add_chain_to(exception, new_chain); end
  def add_comment(comment); end
  def add_description(description); end
  def all_prerequisite_tasks; end
  def already_invoked; end
  def application; end
  def application=(arg0); end
  def arg_description; end
  def arg_names; end
  def clear; end
  def clear_actions; end
  def clear_args; end
  def clear_comments; end
  def clear_prerequisites; end
  def collect_prerequisites(seen); end
  def comment; end
  def comment=(comment); end
  def enhance(deps = nil, &block); end
  def execute(args = nil); end
  def first_sentence(string); end
  def format_trace_flags; end
  def full_comment; end
  def initialize(task_name, app); end
  def inspect; end
  def investigation; end
  def invoke(*args); end
  def invoke_prerequisites(task_args, invocation_chain); end
  def invoke_prerequisites_concurrently(task_args, invocation_chain); end
  def invoke_with_call_chain(task_args, invocation_chain); end
  def locations; end
  def lookup_prerequisite(prerequisite_name); end
  def name; end
  def name_with_args; end
  def needed?; end
  def order_only_prerequisites; end
  def prereqs; end
  def prerequisite_tasks; end
  def prerequisites; end
  def reenable; end
  def scope; end
  def self.[](task_name); end
  def self.clear; end
  def self.create_rule(*args, &block); end
  def self.define_task(*args, &block); end
  def self.format_deps(deps); end
  def self.scope_name(scope, task_name); end
  def self.task_defined?(task_name); end
  def self.tasks; end
  def set_arg_names(args); end
  def source; end
  def sources; end
  def sources=(arg0); end
  def timestamp; end
  def to_s; end
  def transform_comments(separator, &block); end
  def |(deps); end
end
class Rake::EarlyTime
  def <=>(other); end
  def self.allocate; end
  def self.new(*, **); end
  def to_s; end
  extend Singleton::SingletonClassMethods
  include Comparable
  include Singleton
end
class Rake::FileTask < Rake::Task
  def needed?; end
  def out_of_date?(stamp); end
  def self.scope_name(scope, task_name); end
  def timestamp; end
end
class Rake::FileCreationTask < Rake::FileTask
  def needed?; end
  def timestamp; end
end
class Rake::MultiTask < Rake::Task
  def invoke_prerequisites(task_args, invocation_chain); end
end
module Rake::DSL
  def cd(*args, **options, &block); end
  def chdir(*args, **options, &block); end
  def chmod(*args, **options, &block); end
  def chmod_R(*args, **options, &block); end
  def chown(*args, **options, &block); end
  def chown_R(*args, **options, &block); end
  def copy(*args, **options, &block); end
  def cp(*args, **options, &block); end
  def cp_lr(*args, **options, &block); end
  def cp_r(*args, **options, &block); end
  def desc(description); end
  def directory(*args, &block); end
  def file(*args, &block); end
  def file_create(*args, &block); end
  def import(*fns); end
  def install(*args, **options, &block); end
  def link(*args, **options, &block); end
  def ln(*args, **options, &block); end
  def ln_s(*args, **options, &block); end
  def ln_sf(*args, **options, &block); end
  def ln_sr(*args, **options, &block); end
  def makedirs(*args, **options, &block); end
  def mkdir(*args, **options, &block); end
  def mkdir_p(*args, **options, &block); end
  def mkpath(*args, **options, &block); end
  def move(*args, **options, &block); end
  def multitask(*args, &block); end
  def mv(*args, **options, &block); end
  def namespace(name = nil, &block); end
  def nowrite(value = nil); end
  def rake_check_options(options, *optdecl); end
  def rake_output_message(message); end
  def remove(*args, **options, &block); end
  def rm(*args, **options, &block); end
  def rm_f(*args, **options, &block); end
  def rm_r(*args, **options, &block); end
  def rm_rf(*args, **options, &block); end
  def rmdir(*args, **options, &block); end
  def rmtree(*args, **options, &block); end
  def ruby(*args, **options, &block); end
  def rule(*args, &block); end
  def safe_ln(*args, **options); end
  def safe_unlink(*args, **options, &block); end
  def sh(*cmd, &block); end
  def split_all(path); end
  def symlink(*args, **options, &block); end
  def task(*args, &block); end
  def touch(*args, **options, &block); end
  def verbose(value = nil); end
  def when_writing(msg = nil); end
  include Rake::FileUtilsExt
end
class Rake::DefaultLoader
  def load(fn); end
end
class Rake::LateTime
  def <=>(other); end
  def self.allocate; end
  def self.new(*, **); end
  def to_s; end
  extend Singleton::SingletonClassMethods
  include Comparable
  include Singleton
end
class Rake::NameSpace
  def [](name); end
  def initialize(task_manager, scope_list); end
  def scope; end
  def tasks; end
end
module Rake::Backtrace
  def self.collapse(backtrace); end
end
