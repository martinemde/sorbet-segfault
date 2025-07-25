# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/net-ssh/all/net-ssh.rbi
#
# net-ssh-7.3.0

module Net
end
module Net::SSH
  def self._sanitize_options(options); end
  def self._support_deprecated_option_paranoid(options); end
  def self.assign_defaults(options); end
  def self.configuration_for(host, use_ssh_config); end
  def self.start(host, user = nil, options = nil, &block); end
end
class Net::SSH::Config
  def self.default_auth_methods; end
  def self.default_files; end
  def self.eval_match_conditions(condition, host, settings); end
  def self.expandable_default_files; end
  def self.for(host, files = nil); end
  def self.included_file_paths(base_dir, config_paths); end
  def self.interpret_size(size); end
  def self.load(path, host, settings = nil, base_dir = nil); end
  def self.merge_challenge_response_with_keyboard_interactive(hash); end
  def self.pattern2regex(pattern); end
  def self.setup_proxy(type, value); end
  def self.tokenize_config_value(str); end
  def self.translate(settings); end
  def self.translate_config_key(hash, key, value, settings); end
  def self.translate_keepalive(hash, value); end
  def self.translate_verify_host_key(value); end
  def self.unquote(string); end
end
class Net::SSH::Exception < RuntimeError
end
class Net::SSH::AuthenticationFailed < Net::SSH::Exception
end
class Net::SSH::ConnectionTimeout < Net::SSH::Exception
end
class Net::SSH::Disconnect < Net::SSH::Exception
end
class Net::SSH::Timeout < Net::SSH::Disconnect
end
class Net::SSH::ChannelRequestFailed < Net::SSH::Exception
end
class Net::SSH::ChannelOpenFailed < Net::SSH::Exception
  def code; end
  def initialize(code, reason); end
  def reason; end
end
class Net::SSH::HostKeyError < Net::SSH::Exception
  def [](key); end
  def callback=(arg0); end
  def data=(arg0); end
  def fingerprint; end
  def host; end
  def ip; end
  def key; end
  def port; end
  def remember_host!; end
end
class Net::SSH::HostKeyMismatch < Net::SSH::HostKeyError
end
class Net::SSH::HostKeyUnknown < Net::SSH::HostKeyError
end
module Net::SSH::Loggable
  def debug; end
  def error; end
  def facility; end
  def fatal; end
  def info; end
  def logger; end
  def logger=(arg0); end
  def lwarn; end
end
class Net::SSH::Version
  def <=>(version); end
  def initialize(major, minor, tiny, pre = nil); end
  def major; end
  def minor; end
  def self.[](major, minor, tiny, pre = nil); end
  def tiny; end
  def to_i; end
  def to_s; end
  include Comparable
end
module Net::SSH::Authentication
end
module Net::SSH::Authentication::PubKeyFingerprint
  def fingerprint(algorithm = nil); end
  def self.fingerprint(blob, algorithm = nil); end
end
module OpenSSL
end
class OpenSSL::BN
  def to_ssh; end
end
module OpenSSL::PKey
end
class OpenSSL::PKey::PKey
  include Net::SSH::Authentication::PubKeyFingerprint
end
class OpenSSL::PKey::DH < OpenSSL::PKey::PKey
  def valid?; end
end
class OpenSSL::PKey::RSA < OpenSSL::PKey::PKey
  def ssh_do_sign(data, sig_alg = nil); end
  def ssh_do_verify(sig, data, options = nil); end
  def ssh_signature_type; end
  def ssh_type; end
  def to_blob; end
end
class OpenSSL::PKey::DSA < OpenSSL::PKey::PKey
  def ssh_do_sign(data, sig_alg = nil); end
  def ssh_do_verify(sig, data, options = nil); end
  def ssh_signature_type; end
  def ssh_type; end
  def to_blob; end
end
class OpenSSL::PKey::EC < OpenSSL::PKey::PKey
  def digester; end
  def self.read_keyblob(curve_name_in_type, buffer); end
  def ssh_do_sign(data, sig_alg = nil); end
  def ssh_do_verify(sig, data, options = nil); end
  def ssh_signature_type; end
  def ssh_type; end
  def to_blob; end
end
class OpenSSL::PKey::EC::Point
  def ssh_signature_type; end
  def ssh_type; end
  def to_blob; end
end
class Net::SSH::Authentication::Certificate
  def critical_options; end
  def critical_options=(arg0); end
  def extensions; end
  def extensions=(arg0); end
  def fingerprint; end
  def key; end
  def key=(arg0); end
  def key_id; end
  def key_id=(arg0); end
  def key_without_type; end
  def nonce; end
  def nonce=(arg0); end
  def options_to_blob(options); end
  def reserved; end
  def reserved=(arg0); end
  def self.read_certblob(buffer, type); end
  def self.read_options(buffer); end
  def self.type_symbol(type); end
  def serial; end
  def serial=(arg0); end
  def sign!(key, sign_nonce = nil); end
  def sign(key, sign_nonce = nil); end
  def signature; end
  def signature=(arg0); end
  def signature_key; end
  def signature_key=(arg0); end
  def signature_valid?; end
  def ssh_do_sign(data, sig_alg = nil); end
  def ssh_do_verify(sig, data, options = nil); end
  def ssh_signature_type; end
  def ssh_time(t); end
  def ssh_type; end
  def to_blob; end
  def to_blob_without_signature; end
  def to_pem; end
  def type; end
  def type=(arg0); end
  def type_value(type); end
  def valid_after; end
  def valid_after=(arg0); end
  def valid_before; end
  def valid_before=(arg0); end
  def valid_principals; end
  def valid_principals=(arg0); end
end
module Net::SSH::Authentication::ED25519Loader
  def self.dependenciesRequiredForED25519; end
  def self.raiseUnlessLoaded(message); end
end
class Net::SSH::Buffer
  def ==(buffer); end
  def append(text); end
  def available; end
  def clear!; end
  def consume!(n = nil); end
  def content; end
  def empty?; end
  def eof?; end
  def initialize(content = nil); end
  def length; end
  def position; end
  def position=(arg0); end
  def read!(count = nil); end
  def read(count = nil); end
  def read_all(&block); end
  def read_bignum; end
  def read_bool; end
  def read_buffer; end
  def read_byte; end
  def read_int64; end
  def read_key; end
  def read_keyblob(type); end
  def read_long; end
  def read_private_keyblob(type); end
  def read_string; end
  def read_to(pattern); end
  def remainder_as_buffer; end
  def reset!; end
  def self.from(*args); end
  def to_s; end
  def write(*data); end
  def write_bignum(*n); end
  def write_bool(*b); end
  def write_byte(*n); end
  def write_int64(*n); end
  def write_key(*key); end
  def write_long(*n); end
  def write_moved(string); end
  def write_mstring(*text); end
  def write_string(*text); end
end
module Net::SSH::HostKeyEntries
end
class Net::SSH::HostKeyEntries::PubKey < Delegator
  def __getobj__; end
  def initialize(key, comment: nil); end
  def matches_key?(server_key); end
  def ssh_type; end
  def ssh_types; end
  def to_blob; end
end
class Net::SSH::HostKeyEntries::CertAuthority
  def initialize(key, comment: nil); end
  def matches_key?(server_key); end
  def ssh_types; end
end
class Net::SSH::HostKeys
  def add_host_key(key); end
  def each(&block); end
  def empty?; end
  def host; end
  def initialize(host_keys, host, known_hosts, options = nil); end
  include Enumerable
end
class Net::SSH::KnownHosts
  def add(host, key); end
  def initialize(source); end
  def keys_for(host, options = nil); end
  def known_host_hash?(hostlist, entries); end
  def match(host, pattern); end
  def self.add(host, key, options = nil); end
  def self.hostfiles(options, which = nil); end
  def self.search_for(host, options = nil); end
  def self.search_in(files, host, options = nil); end
  def source; end
end
module Net::SSH::Transport
end
class Net::SSH::Transport::OpenSSLAESCTR < SimpleDelegator
  def block_size; end
  def initialize(original); end
  def iv=(iv_s); end
  def reset; end
  def self.block_size; end
end
module Net::SSH::Transport::CTR
  def self.extended(orig); end
end
module Net::SSH::Transport::HMAC
  def self.get(name, key = nil, parameters = nil); end
  def self.key_length(name); end
end
class Net::SSH::Transport::HMAC::Abstract
  def aead; end
  def digest(data); end
  def digest_class; end
  def etm; end
  def initialize(key = nil); end
  def key; end
  def key=(value); end
  def key_length; end
  def mac_length; end
  def self.aead(*v); end
  def self.digest_class(*v); end
  def self.etm(*v); end
  def self.key_length(*v); end
  def self.mac_length(*v); end
end
module Net::SSH::Transport::GCMCipher
  def self.extended(orig); end
end
class Net::SSH::Transport::AES128_GCM
  def algo_name; end
  def apply_nonce; end
  def block_size; end
  def cipher; end
  def implicit_mac; end
  def implicit_mac?; end
  def incr_nonce; end
  def initialize(encrypt:, key:); end
  def iv_len; end
  def key; end
  def mac_length; end
  def name; end
  def nonce; end
  def nonce=(iv_s); end
  def read_and_mac(data, mac, _sequence_number); end
  def read_length(data, _sequence_number); end
  def self.block_size; end
  def self.key_length; end
  def update_cipher_mac(payload, _sequence_number); end
  extend Net::SSH::Transport::GCMCipher
  include Net::SSH::Loggable
end
class Net::SSH::Transport::AES128_GCM::ImplicitHMac < Net::SSH::Transport::HMAC::Abstract
  def aead; end
  def key_length; end
end
class Net::SSH::Transport::AES256_GCM
  def algo_name; end
  def apply_nonce; end
  def block_size; end
  def cipher; end
  def implicit_mac; end
  def implicit_mac?; end
  def incr_nonce; end
  def initialize(encrypt:, key:); end
  def iv_len; end
  def key; end
  def mac_length; end
  def name; end
  def nonce; end
  def nonce=(iv_s); end
  def read_and_mac(data, mac, _sequence_number); end
  def read_length(data, _sequence_number); end
  def self.block_size; end
  def self.key_length; end
  def update_cipher_mac(payload, _sequence_number); end
  extend Net::SSH::Transport::GCMCipher
  include Net::SSH::Loggable
end
class Net::SSH::Transport::AES256_GCM::ImplicitHMac < Net::SSH::Transport::HMAC::Abstract
  def aead; end
  def key_length; end
end
module Net::SSH::Transport::KeyExpander
  def self.expand_key(bytes, start, options = nil); end
end
class Net::SSH::Transport::IdentityCipher
  def self.block_size; end
  def self.decrypt; end
  def self.encrypt; end
  def self.final; end
  def self.implicit_mac?; end
  def self.iv=(v); end
  def self.iv_len; end
  def self.key_length; end
  def self.name; end
  def self.reset; end
  def self.update(text); end
end
module Net::SSH::Transport::ChaCha20Poly1305CipherLoader
end
module Net::SSH::Transport::OpenSSLCipherExtensions
  def implicit_mac?; end
end
class Net::SSH::Transport::CipherFactory
  def self.get(name, options = nil); end
  def self.get_lengths(name, options = nil); end
  def self.supported?(name); end
end
module Net::SSH::Transport::Constants
end
class Net::SSH::Transport::HMAC::MD5 < Net::SSH::Transport::HMAC::Abstract
end
class Net::SSH::Transport::HMAC::MD5_96 < Net::SSH::Transport::HMAC::MD5
end
class Net::SSH::Transport::HMAC::SHA1 < Net::SSH::Transport::HMAC::Abstract
end
class Net::SSH::Transport::HMAC::SHA1_96 < Net::SSH::Transport::HMAC::SHA1
end
class Net::SSH::Transport::HMAC::SHA2_256 < Net::SSH::Transport::HMAC::Abstract
end
class Net::SSH::Transport::HMAC::SHA2_256_96 < Net::SSH::Transport::HMAC::SHA2_256
end
class Net::SSH::Transport::HMAC::SHA2_512 < Net::SSH::Transport::HMAC::Abstract
end
class Net::SSH::Transport::HMAC::SHA2_512_96 < Net::SSH::Transport::HMAC::SHA2_512
end
class Net::SSH::Transport::HMAC::SHA2_256_Etm < Net::SSH::Transport::HMAC::Abstract
end
class Net::SSH::Transport::HMAC::SHA2_512_Etm < Net::SSH::Transport::HMAC::Abstract
end
class Net::SSH::Transport::HMAC::RIPEMD160 < Net::SSH::Transport::HMAC::Abstract
end
class Net::SSH::Transport::HMAC::None < Net::SSH::Transport::HMAC::Abstract
  def digest(data); end
end
module Net::SSH::Transport::Kex
end
class Net::SSH::Transport::Kex::Abstract
  def algorithms; end
  def confirm_newkeys; end
  def connection; end
  def data; end
  def dh; end
  def digester; end
  def exchange_keys; end
  def generate_key_fingerprint(key); end
  def initialize(algorithms, connection, data); end
  def matching?(key_ssh_type, host_key_alg); end
  def verify_server_key(key); end
  def verify_signature(result); end
  include Net::SSH::Loggable
  include Net::SSH::Transport::Constants
end
class Net::SSH::Transport::Kex::DiffieHellmanGroup1SHA1 < Net::SSH::Transport::Kex::Abstract
  def build_signature_buffer(result); end
  def digester; end
  def generate_key; end
  def get_message_types; end
  def get_parameters; end
  def send_kexinit; end
end
class Net::SSH::Transport::Kex::DiffieHellmanGroup14SHA1 < Net::SSH::Transport::Kex::DiffieHellmanGroup1SHA1
end
class Net::SSH::Transport::Kex::DiffieHellmanGroup14SHA256 < Net::SSH::Transport::Kex::DiffieHellmanGroup14SHA1
  def digester; end
end
class Net::SSH::Transport::Kex::DiffieHellmanGroupExchangeSHA1 < Net::SSH::Transport::Kex::DiffieHellmanGroup1SHA1
  def build_signature_buffer(result); end
  def compute_need_bits; end
  def get_message_types; end
  def get_parameters; end
end
class Net::SSH::Transport::Kex::DiffieHellmanGroupExchangeSHA256 < Net::SSH::Transport::Kex::DiffieHellmanGroupExchangeSHA1
  def digester; end
end
class Net::SSH::Transport::Kex::Abstract5656 < Net::SSH::Transport::Kex::Abstract
  def build_signature_buffer(result); end
  def curve_name; end
  def ecdh; end
  def get_message_types; end
  def send_kexinit; end
end
class Net::SSH::Transport::Kex::EcdhSHA2NistP256 < Net::SSH::Transport::Kex::Abstract5656
  def compute_shared_secret(server_ecdh_pubkey); end
  def curve_name; end
  def digester; end
  def ecdh_public_key_bytes; end
  def generate_key; end
end
class Net::SSH::Transport::Kex::EcdhSHA2NistP384 < Net::SSH::Transport::Kex::EcdhSHA2NistP256
  def curve_name; end
  def digester; end
end
class Net::SSH::Transport::Kex::EcdhSHA2NistP521 < Net::SSH::Transport::Kex::EcdhSHA2NistP256
  def curve_name; end
  def digester; end
end
module Net::SSH::Transport::Kex::Curve25519Sha256Loader
  def self.dependenciesRequiredForX25519; end
  def self.raiseUnlessLoaded(message); end
end
class Net::SSH::Transport::ServerVersion
  def header; end
  def initialize(socket, logger, timeout = nil); end
  def negotiate!(socket, timeout); end
  def version; end
  include Net::SSH::Loggable
end
class Net::SSH::Transport::Algorithms
  def [](key); end
  def accept_kexinit(packet); end
  def algorithms; end
  def allow?(packet); end
  def build_client_algorithm_packet; end
  def compose_algorithm_list(supported, option, append_all_supported_algorithms = nil); end
  def compression_client; end
  def compression_server; end
  def encryption_client; end
  def encryption_server; end
  def exchange_keys; end
  def hmac_client; end
  def hmac_server; end
  def host_key; end
  def host_key_format; end
  def initialize(session, options = nil); end
  def initialized?; end
  def kex; end
  def kex_byte_requirement; end
  def language_client; end
  def language_server; end
  def negotiate(algorithm); end
  def negotiate_algorithms; end
  def normalize_compression_name(name); end
  def options; end
  def parse_server_algorithm_packet(packet); end
  def pending?; end
  def prepare_preferred_algorithms!; end
  def proceed!; end
  def rekey!; end
  def self.allowed_packet?(packet); end
  def send_kexinit; end
  def session; end
  def session_id; end
  def start; end
  include Net::SSH::Loggable
  include Net::SSH::Transport::Constants
end
module Net::SSH::BufferedIo
  def available; end
  def enqueue(data); end
  def fill(n = nil); end
  def initialize_buffered_io; end
  def input; end
  def output; end
  def pending_write?; end
  def read_available(length = nil); end
  def read_buffer; end
  def self.extended(object); end
  def send_pending; end
  def wait_for_pending_sends; end
  def write_buffer; end
  include Net::SSH::Loggable
end
module Net::SSH::ForwardedBufferedIo
  def fill(n = nil); end
  def send_pending; end
end
module Net::SSH::Authentication::Constants
end
module Net::SSH::Connection
end
module Net::SSH::Connection::Constants
end
class Net::SSH::Packet < Net::SSH::Buffer
  def [](name); end
  def initialize(payload); end
  def instantiate!; end
  def self.register(type, *pairs); end
  def type; end
  include Net::SSH::Authentication::Constants
  include Net::SSH::Connection::Constants
  include Net::SSH::Transport::Constants
end
class Net::SSH::Transport::State
  def block_size; end
  def blocks; end
  def cipher; end
  def cleanup; end
  def compress(data); end
  def compression; end
  def compression?; end
  def compression_level; end
  def compressor; end
  def decompress(data); end
  def decompressor; end
  def final_cipher; end
  def hmac; end
  def increment(packet_length); end
  def initialize(socket, role); end
  def max_blocks; end
  def max_blocks=(arg0); end
  def max_packets; end
  def max_packets=(arg0); end
  def needs_rekey?; end
  def packets; end
  def rekey_limit; end
  def rekey_limit=(arg0); end
  def reset!; end
  def role; end
  def sequence_number; end
  def set(values); end
  def socket; end
  def update_cipher(data); end
  def update_next_iv(data, reset = nil); end
end
module Net::SSH::Transport::PacketStream
  def available_for_read?; end
  def cleanup; end
  def client; end
  def client_name; end
  def enqueue_packet(payload); end
  def hints; end
  def if_needs_rekey?; end
  def initialize_ssh; end
  def next_packet(mode = nil, timeout = nil); end
  def peer_ip; end
  def poll_next_packet; end
  def self.extended(object); end
  def send_packet(payload); end
  def server; end
  include Net::SSH::BufferedIo
end
module Net::SSH::Verifiers
end
class Net::SSH::Verifiers::Always
  def process_cache_miss(host_keys, args, exc_class, message); end
  def verify(arguments); end
  def verify_signature(&block); end
end
class Net::SSH::Verifiers::AcceptNew < Net::SSH::Verifiers::Always
  def verify(arguments); end
  def verify_signature(&block); end
end
class Net::SSH::Verifiers::AcceptNewOrLocalTunnel < Net::SSH::Verifiers::AcceptNew
  def tunnelled?(args); end
  def verify(arguments); end
end
class Net::SSH::Verifiers::Never
  def verify(arguments); end
  def verify_signature(&block); end
end
class Net::SSH::Transport::Session
  def algorithms; end
  def close; end
  def closed?; end
  def configure_client(options = nil); end
  def configure_server(options = nil); end
  def enqueue_message(message); end
  def hint(which, value = nil); end
  def host; end
  def host_as_string; end
  def host_key_verifier; end
  def host_keys; end
  def initialize(host, options = nil); end
  def next_message; end
  def options; end
  def peer; end
  def poll_message(mode = nil, consume_queue = nil); end
  def port; end
  def push(packet); end
  def queue; end
  def rekey!; end
  def rekey_as_needed; end
  def select_host_key_verifier(verifier); end
  def send_message(message); end
  def server_version; end
  def service_request(service); end
  def shutdown!; end
  def socket; end
  def wait; end
  include Net::SSH::Loggable
  include Net::SSH::Transport::Constants
end
class Net::SSH::Transport::Session::CompatibleVerifier
  def initialize(verifier); end
  def verify(arguments); end
  def verify_signature(&block); end
end
class Net::SSH::Prompt
  def initialize(options = nil); end
  def self.default(options = nil); end
  def start(info); end
end
class Net::SSH::Prompt::Prompter
  def ask(prompt, echo = nil); end
  def initialize(info); end
  def success; end
end
class Net::SSH::KeyFactory
  def self.classify_key(data, filename); end
  def self.get(name); end
  def self.load_data_private_key(data, passphrase = nil, ask_passphrase = nil, filename = nil, prompt = nil); end
  def self.load_data_public_key(data, filename = nil); end
  def self.load_private_key(filename, passphrase = nil, ask_passphrase = nil, prompt = nil); end
  def self.load_public_key(filename); end
end
class InvalidName___Class_0x00___KeyType_13
  def self.encrypted_key?(data, error); end
  def self.error_classes; end
  def self.read(key_data, passphrase); end
end
class InvalidName___Class_0x00___OpenSSHPrivateKeyType_14 < InvalidName___Class_0x00___KeyType_13
  def self.encrypted_key?(key_data, decode_error); end
  def self.error_classes; end
  def self.read(key_data, passphrase); end
end
class InvalidName___Class_0x00___OpenSSLKeyTypeBase_15 < InvalidName___Class_0x00___KeyType_13
  def self.encrypted_key?(key_data, error); end
  def self.open_ssl_class; end
  def self.read(key_data, passphrase); end
end
class InvalidName___Class_0x00___OpenSSLPKeyType_16 < InvalidName___Class_0x00___OpenSSLKeyTypeBase_15
  def self.error_classes; end
  def self.open_ssl_class; end
  def self.read(key_data, passphrase); end
end
class InvalidName___Class_0x00___OpenSSLDSAKeyType_17 < InvalidName___Class_0x00___OpenSSLKeyTypeBase_15
  def self.error_classes; end
  def self.open_ssl_class; end
end
class InvalidName___Class_0x00___OpenSSLRSAKeyType_18 < InvalidName___Class_0x00___OpenSSLKeyTypeBase_15
  def self.error_classes; end
  def self.open_ssl_class; end
end
class InvalidName___Class_0x00___OpenSSLECKeyType_19 < InvalidName___Class_0x00___OpenSSLKeyTypeBase_15
  def self.error_classes; end
  def self.open_ssl_class; end
end
class Net::SSH::Authentication::AgentError < Net::SSH::Exception
end
class Net::SSH::Authentication::AgentNotAvailable < Net::SSH::Authentication::AgentError
end
class Net::SSH::Authentication::Agent
  def add_identity(priv_key, comment, lifetime: nil, confirm: nil); end
  def agent_failed(type); end
  def blob_for_add(priv_key); end
  def close; end
  def connect!(agent_socket_factory = nil, identity_agent = nil); end
  def identities; end
  def initialize(logger = nil); end
  def lock(password); end
  def negotiate!; end
  def read_packet; end
  def remove_all_identities; end
  def remove_identity(key); end
  def self.connect(logger = nil, agent_socket_factory = nil, identity_agent = nil); end
  def send_and_wait(type, *args); end
  def send_packet(type, *args); end
  def sign(key, data, flags = nil); end
  def socket; end
  def unix_socket_class; end
  def unlock(password); end
  include Net::SSH::Loggable
end
module Net::SSH::Authentication::Agent::Comment
  def comment; end
  def comment=(arg0); end
end
class Net::SSH::Authentication::KeyManagerError < Net::SSH::Exception
end
class Net::SSH::Authentication::KeyManager
  def add(key_file); end
  def add_key_data(key_data_); end
  def add_keycert(keycert_file); end
  def add_keycert_data(keycert_data_); end
  def agent; end
  def clear!; end
  def each_identity; end
  def finish; end
  def initialize(logger, options = nil); end
  def key_data; end
  def key_files; end
  def keycert_data; end
  def keycert_files; end
  def keycerts; end
  def known_identities; end
  def load_identities(identities, ask_passphrase, ignore_decryption_errors); end
  def no_keys?; end
  def options; end
  def prepare_identities_from_data; end
  def prepare_identities_from_files; end
  def process_identity_loading_error(identity, e); end
  def readable_file?(path); end
  def sign(identity, data, sig_alg = nil); end
  def use_agent=(use_agent); end
  def use_agent?; end
  include Net::SSH::Loggable
end
module Net::SSH::Authentication::Methods
end
class Net::SSH::Authentication::Methods::Abstract
  def initialize(session, options = nil); end
  def key_manager; end
  def prompt; end
  def pubkey_algorithms; end
  def send_message(msg); end
  def session; end
  def session_id; end
  def userauth_request(username, next_service, auth_method, *others); end
  include Net::SSH::Authentication::Constants
  include Net::SSH::Loggable
end
class Net::SSH::Authentication::Methods::None < Net::SSH::Authentication::Methods::Abstract
  def authenticate(next_service, user = nil, password = nil); end
end
class Net::SSH::Authentication::Methods::Publickey < Net::SSH::Authentication::Methods::Abstract
  def authenticate(next_service, username, password = nil); end
  def authenticate_with(identity, next_service, username); end
  def authenticate_with_alg(identity, next_service, username, alg, sig_alg = nil); end
  def build_request(pub_key, username, next_service, alg, has_sig); end
  def send_request(pub_key, username, next_service, alg, signature = nil); end
end
class Net::SSH::Authentication::Methods::Hostbased < Net::SSH::Authentication::Methods::Abstract
  def authenticate(next_service, username, password = nil); end
  def authenticate_with(identity, next_service, username, key_manager); end
  def build_request(identity, next_service, username, hostname, client_username); end
  def hostname; end
  include Net::SSH::Authentication::Constants
end
class Net::SSH::Authentication::Methods::Password < Net::SSH::Authentication::Methods::Abstract
  def ask_password(username); end
  def authenticate(next_service, username, password = nil); end
  def clear_prompter!; end
  def get_max_retries; end
end
class Net::SSH::Authentication::Methods::KeyboardInteractive < Net::SSH::Authentication::Methods::Abstract
  def authenticate(next_service, username, password = nil); end
  def interactive?; end
end
class Net::SSH::Authentication::DisallowedMethod < Net::SSH::Exception
end
class Net::SSH::Authentication::Session
  def allowed_auth_methods; end
  def auth_methods; end
  def authenticate(next_service, username, password = nil); end
  def default_keys; end
  def expect_message(type); end
  def initialize(transport, options = nil); end
  def key_data; end
  def keycert_data; end
  def keycerts; end
  def keys; end
  def next_message; end
  def options; end
  def transport; end
  include Net::SSH::Authentication::Constants
  include Net::SSH::Loggable
  include Net::SSH::Transport::Constants
end
module Net::SSH::Connection::Term
end
class Net::SSH::Connection::Channel
  def [](name); end
  def []=(name, value); end
  def active?; end
  def close; end
  def closing?; end
  def connection; end
  def do_close; end
  def do_data(data); end
  def do_eof; end
  def do_extended_data(type, data); end
  def do_failure; end
  def do_open_confirmation(remote_id, max_window, max_packet); end
  def do_open_failed(reason_code, description); end
  def do_request(request, want_reply, data); end
  def do_success; end
  def do_window_adjust(bytes); end
  def enqueue_pending_output; end
  def env(variable_name, variable_value, &block); end
  def eof!; end
  def eof?; end
  def exec(command, &block); end
  def forward_local_env(env_variable_patterns); end
  def initialize(connection, type, local_id, max_pkt_size = nil, max_win_size = nil, &on_confirm_open); end
  def local_closed?; end
  def local_id; end
  def local_maximum_packet_size; end
  def local_maximum_window_size; end
  def local_window_size; end
  def on_close(&block); end
  def on_data(&block); end
  def on_eof(&block); end
  def on_extended_data(&block); end
  def on_open_failed(&block); end
  def on_process(&block); end
  def on_request(type, &block); end
  def output; end
  def pending_requests; end
  def process; end
  def properties; end
  def remote_closed!; end
  def remote_closed?; end
  def remote_id; end
  def remote_maximum_packet_size; end
  def remote_maximum_window_size; end
  def remote_window_size; end
  def request_pty(opts = nil, &block); end
  def send_channel_request(request_name, *data, &callback); end
  def send_data(data); end
  def set_remote_env(env); end
  def subsystem(subsystem, &block); end
  def type; end
  def update_local_window_size(size); end
  def wait; end
  def wait_until_open_confirmed; end
  include Net::SSH::Connection::Constants
  include Net::SSH::Loggable
end
module Net::SSH::Service
end
class Net::SSH::Service::Forward
  def active_local_sockets; end
  def active_locals; end
  def active_remote_destinations; end
  def active_remotes; end
  def agent(channel); end
  def auth_agent_channel(session, channel, packet); end
  def cancel_local(port, bind_address = nil); end
  def cancel_local_socket(local_socket_path); end
  def cancel_remote(port, host = nil); end
  def forwarded_tcpip(session, channel, packet); end
  def initialize(session); end
  def local(*args); end
  def local_socket(local_socket_path, remote_socket_path); end
  def prepare_client(client, channel, type); end
  def prepare_simple_client(client, channel, type); end
  def remote(port, host, remote_port, remote_host = nil); end
  def remote_to(port, host, remote_port, remote_host = nil); end
  def session; end
  include Net::SSH::Loggable
end
class Net::SSH::Service::Forward::Remote < Struct
  def host; end
  def host=(_); end
  def port; end
  def port=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.keyword_init?; end
  def self.members; end
  def self.new(*arg0); end
end
class Net::SSH::Connection::Keepalive
  def enabled?; end
  def initialize(session); end
  def interval; end
  def keepalive_maxcount; end
  def options; end
  def send_as_needed(was_events); end
  def should_send?; end
  include Net::SSH::Loggable
end
class Net::SSH::Connection::EventLoop
  def ev_preprocess(&block); end
  def ev_select_and_postprocess(wait); end
  def initialize(logger = nil); end
  def process(wait = nil, &block); end
  def process_only(session, wait = nil); end
  def register(session); end
  include Net::SSH::Loggable
end
class Net::SSH::Connection::SingleSessionEventLoop < Net::SSH::Connection::EventLoop
  def ev_preprocess(&block); end
  def ev_select_and_postprocess(wait); end
end
class Net::SSH::Connection::Session
  def [](key); end
  def []=(key, value); end
  def busy?(include_invisible = nil); end
  def channel_close(packet); end
  def channel_closed(channel); end
  def channel_data(packet); end
  def channel_eof(packet); end
  def channel_extended_data(packet); end
  def channel_failure(packet); end
  def channel_open(packet); end
  def channel_open_confirmation(packet); end
  def channel_open_failure(packet); end
  def channel_open_handlers; end
  def channel_request(packet); end
  def channel_success(packet); end
  def channel_window_adjust(packet); end
  def channels; end
  def cleanup_channel(channel); end
  def close; end
  def closed?; end
  def dispatch_incoming_packets(raise_disconnect_errors: nil); end
  def each_channel(&block); end
  def ev_do_calculate_rw_wait(wait); end
  def ev_do_handle_events(readers, writers); end
  def ev_do_postprocess(was_events); end
  def ev_preprocess(&block); end
  def exec!(command, status: nil, &block); end
  def exec(command, status: nil, &block); end
  def force_channel_cleanup_on_close; end
  def forward; end
  def get_next_channel_id; end
  def global_request(packet); end
  def host; end
  def initialize(transport, options = nil); end
  def io_select_wait(wait); end
  def listen_to(io, &callback); end
  def listeners; end
  def loop(wait = nil, &block); end
  def loop_forever; end
  def max_select_wait_time; end
  def on_global_request(type, &block); end
  def on_open_channel(type, &block); end
  def open_channel(type = nil, *extra, &on_confirm); end
  def options; end
  def pending_requests; end
  def postprocess(readers, writers); end
  def preprocess(&block); end
  def process(wait = nil, &block); end
  def properties; end
  def request_failure(packet); end
  def request_success(packet); end
  def send_global_request(type, *extra, &callback); end
  def send_message(message); end
  def shutdown!; end
  def stop_listening_to(io); end
  def transport; end
  include Net::SSH::Connection::Constants
  include Net::SSH::Loggable
end
class Net::SSH::Connection::Session::NilChannel
  def initialize(session); end
  def method_missing(sym, *args); end
end
class Net::SSH::Connection::Session::StringWithExitstatus < String
  def exitstatus; end
  def initialize(str, exitstatus); end
end
