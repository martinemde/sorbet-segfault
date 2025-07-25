# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/dogapi/all/dogapi.rbi
#
# dogapi-1.45.0

module Dogapi
  def self.find_datadog_host; end
  def self.find_localhost; end
  def self.find_proxy; end
  def self.symbolized_access(hash); end
  def self.validate_tags(tags); end
end
class Dogapi::Scope
  def device; end
  def host; end
  def initialize(host = nil, device = nil); end
end
class Dogapi::Service
  def connect; end
  def initialize(api_key, api_host = nil); end
  def request(method, url, params); end
end
class Dogapi::APIService
  def api_key; end
  def application_key; end
  def connect; end
  def handle_redirect(conn, req, resp, retries = nil); end
  def handle_response(resp); end
  def initialize(api_key, application_key, silent = nil, timeout = nil, endpoint = nil, skip_ssl_validation = nil); end
  def prepare_params(extra_params, url, with_app_key); end
  def prepare_request(method, url, params, body, send_json, with_app_key); end
  def request(method, url, extra_params, body, send_json, with_app_key = nil); end
  def should_set_api_and_app_keys_in_params?(url); end
  def suppress_error_if_silent(e); end
end
class Dogapi::V1
end
class Dogapi::V1::AlertService < Dogapi::APIService
  def alert(query, options = nil); end
  def delete_alert(alert_id); end
  def get_alert(alert_id); end
  def get_all_alerts; end
  def mute_alerts; end
  def unmute_alerts; end
  def update_alert(alert_id, query, options); end
end
class Dogapi::V1::CommentService < Dogapi::APIService
  def comment(message, options = nil); end
  def delete_comment(comment_id); end
  def update_comment(comment_id, options = nil); end
end
class Dogapi::V1::DashService < Dogapi::APIService
  def create_dashboard(title, description, graphs, template_variables = nil, read_only = nil); end
  def delete_dashboard(dash_id); end
  def get_dashboard(dash_id); end
  def get_dashboards; end
  def update_dashboard(dash_id, title, description, graphs, template_variables = nil, read_only = nil); end
end
class Dogapi::V1::DashboardService < Dogapi::APIService
  def create_board(title, widgets, layout_type, options); end
  def delete_board(dashboard_id); end
  def get_all_boards; end
  def get_board(dashboard_id); end
  def update_board(dashboard_id, title, widgets, layout_type, options); end
end
class Dogapi::V1::DashboardListService < Dogapi::APIService
  def add_items(resource_id, dashboards); end
  def all; end
  def create(name); end
  def delete(resource_id); end
  def delete_items(resource_id, dashboards); end
  def get(resource_id); end
  def get_items(resource_id); end
  def update(resource_id, name); end
  def update_items(resource_id, dashboards); end
end
class Dogapi::V1::EmbedService < Dogapi::APIService
  def create_embed(graph_json, description = nil); end
  def enable_embed(embed_id); end
  def get_all_embeds; end
  def get_embed(embed_id, description = nil); end
  def revoke_embed(embed_id); end
end
class Dogapi::V1::EventService < Dogapi::APIService
  def delete(id); end
  def get(id); end
  def post(event, scope = nil); end
  def stream(start, stop, options = nil); end
end
class Dogapi::V1::LogsPipelineService < Dogapi::APIService
  def create_logs_pipeline(name, filter, options = nil); end
  def delete_logs_pipeline(pipeline_id); end
  def get_all_logs_pipelines; end
  def get_logs_pipeline(pipeline_id); end
  def update_logs_pipeline(pipeline_id, name, filter, options = nil); end
end
class Dogapi::V1::MetadataService < Dogapi::APIService
  def get(metric_name); end
  def update(metric_name, options = nil); end
end
class Dogapi::V1::MetricService < Dogapi::APIService
  def flush_buffer; end
  def get(query, from, to); end
  def get_active_metrics(from); end
  def make_metric_payload(metric, points, scope, options); end
  def submit(*args); end
  def submit_to_api(metric, points, scope, options = nil); end
  def submit_to_buffer(metric, points, scope, options = nil); end
  def switch_to_batched; end
  def switch_to_single; end
  def upload(metrics); end
end
class Dogapi::V1::MonitorService < Dogapi::APIService
  def can_delete_monitors(monitor_ids); end
  def cancel_downtime(downtime_id); end
  def cancel_downtime_by_scope(scope); end
  def delete_monitor(monitor_id, options = nil); end
  def get_all_downtimes(options = nil); end
  def get_all_monitors(options = nil); end
  def get_downtime(downtime_id, options = nil); end
  def get_monitor(monitor_id, options = nil); end
  def monitor(type, query, options = nil); end
  def mute_host(hostname, options = nil); end
  def mute_monitor(monitor_id, options = nil); end
  def mute_monitors; end
  def resolve_monitors(monitor_groups = nil, options = nil, version = nil); end
  def schedule_downtime(scope, options = nil); end
  def search_monitor_groups(options = nil); end
  def search_monitors(options = nil); end
  def unmute_host(hostname); end
  def unmute_monitor(monitor_id, options = nil); end
  def unmute_monitors; end
  def update_downtime(downtime_id, options = nil); end
  def update_monitor(monitor_id, query = nil, options = nil); end
  def validate_monitor(type, query, options = nil); end
end
class Dogapi::V1::ScreenboardService < Dogapi::APIService
  def create_screenboard(description); end
  def delete_screenboard(board_id); end
  def get_all_screenboards; end
  def get_screenboard(board_id); end
  def revoke_screenboard(board_id); end
  def share_screenboard(board_id); end
  def update_screenboard(board_id, description); end
end
class Dogapi::V1::SearchService < Dogapi::APIService
  def search(query); end
end
class Dogapi::V1::ServiceCheckService < Dogapi::APIService
  def service_check(check, host, status, options = nil); end
end
class Dogapi::V1::ServiceLevelObjectiveService < Dogapi::APIService
  def can_delete_service_level_objective(slo_ids); end
  def create_service_level_objective(type, slo_name, thresholds, options = nil); end
  def delete_many_service_level_objective(slo_ids); end
  def delete_service_level_objective(slo_id); end
  def delete_timeframes_service_level_objective(ops); end
  def get_service_level_objective(slo_id); end
  def get_service_level_objective_history(slo_id, from_ts, to_ts); end
  def search_service_level_objective(slo_ids, query, offset, limit); end
  def update_service_level_objective(slo_id, type, options = nil); end
end
class Dogapi::V1::SnapshotService < Dogapi::APIService
  def snapshot(metric_query, start_ts, end_ts, event_query = nil); end
end
class Dogapi::V1::SyntheticsService < Dogapi::APIService
  def create_synthetics_test(type, config, options = nil); end
  def delete_synthetics_tests(test_ids); end
  def get_all_synthetics_tests; end
  def get_synthetics_devices; end
  def get_synthetics_locations; end
  def get_synthetics_result(test_id, result_id); end
  def get_synthetics_results(test_id); end
  def get_synthetics_test(test_id); end
  def start_pause_synthetics_test(test_id, new_status); end
  def update_synthetics_test(test_id, type, config, options = nil); end
end
class Dogapi::V1::TagService < Dogapi::APIService
  def add(host_id, tags, source = nil); end
  def detach(host_id, source = nil); end
  def detatch(host_id); end
  def get(host_id, source = nil, by_source = nil); end
  def get_all(source = nil); end
  def update(host_id, tags, source = nil); end
end
class Dogapi::V1::UserService < Dogapi::APIService
  def create_user(description = nil); end
  def disable_user(handle); end
  def get_all_users; end
  def get_user(handle); end
  def invite(emails, options = nil); end
  def update_user(handle, description = nil); end
end
class Dogapi::V1::HostsService < Dogapi::APIService
  def search(options = nil); end
  def totals; end
end
class Dogapi::V1::IntegrationService < Dogapi::APIService
  def create_integration(source_type_name, config); end
  def delete_integration(source_type_name); end
  def get_integration(source_type_name); end
  def update_integration(source_type_name, config); end
end
class Dogapi::V1::UsageService < Dogapi::APIService
  def get_custom_metrics_usage(start_hr, end_hr = nil); end
  def get_fargate_usage(start_hr, end_hr = nil); end
  def get_hosts_usage(start_hr, end_hr = nil); end
  def get_logs_usage(start_hr, end_hr = nil); end
  def get_synthetics_usage(start_hr, end_hr = nil); end
  def get_traces_usage(start_hr, end_hr = nil); end
end
class Dogapi::V1::AwsIntegrationService < Dogapi::APIService
  def aws_integration_create(config); end
  def aws_integration_delete(config); end
  def aws_integration_generate_external_id(config); end
  def aws_integration_list; end
  def aws_integration_list_namespaces; end
  def aws_integration_update(config, new_config); end
end
class Dogapi::V1::AwsLogsService < Dogapi::APIService
  def aws_logs_add_lambda(config); end
  def aws_logs_check_lambda(config); end
  def aws_logs_check_services(config); end
  def aws_logs_integration_delete(config); end
  def aws_logs_integrations_list; end
  def aws_logs_list_services; end
  def aws_logs_save_services(config); end
end
class Dogapi::V1::AzureIntegrationService < Dogapi::APIService
  def azure_integration_create(config); end
  def azure_integration_delete(config); end
  def azure_integration_list; end
  def azure_integration_update(config); end
  def azure_integration_update_host_filters(config); end
end
class Dogapi::V1::GcpIntegrationService < Dogapi::APIService
  def gcp_integration_create(config); end
  def gcp_integration_delete(config); end
  def gcp_integration_list; end
  def gcp_integration_update(config); end
end
class Dogapi::V2
end
class Dogapi::V2::DashboardListService < Dogapi::APIService
  def add_items(resource_id, dashboards); end
  def delete_items(resource_id, dashboards); end
  def get_items(resource_id); end
  def update_items(resource_id, dashboards); end
end
class Dogapi::ClientV2
  def add_items_to_dashboard_list(dashboard_list_id, dashboards); end
  def datadog_host; end
  def datadog_host=(arg0); end
  def delete_items_from_dashboard_list(dashboard_list_id, dashboards); end
  def get_items_of_dashboard_list(dashboard_list_id); end
  def initialize(api_key, application_key = nil, host = nil, device = nil, silent = nil, timeout = nil, endpoint = nil, skip_ssl_validation = nil); end
  def update_items_of_dashboard_list(dashboard_list_id, dashboards); end
end
class Dogapi::Client
  def add_items_to_dashboard_list(dashboard_list_id, dashboards); end
  def add_tags(host_id, tags, source = nil); end
  def alert(query, options = nil); end
  def all_tags(source = nil); end
  def aws_integration_create(config); end
  def aws_integration_delete(config); end
  def aws_integration_generate_external_id(config); end
  def aws_integration_list; end
  def aws_integration_list_namespaces; end
  def aws_integration_update(config, new_config); end
  def aws_logs_add_lambda(config); end
  def aws_logs_check_lambda(config); end
  def aws_logs_check_services(config); end
  def aws_logs_integration_delete(config); end
  def aws_logs_integrations_list; end
  def aws_logs_list_services; end
  def aws_logs_save_services(config); end
  def azure_integration_create(config); end
  def azure_integration_delete(config); end
  def azure_integration_list; end
  def azure_integration_update(config); end
  def azure_integration_update_host_filters(config); end
  def batch_metrics; end
  def can_delete_monitors(monitor_ids); end
  def can_delete_service_level_objective(slo_ids); end
  def cancel_downtime(downtime_id); end
  def cancel_downtime_by_scope(scope); end
  def comment(message, options = nil); end
  def create_board(title, widgets, layout_type, options = nil); end
  def create_dashboard(title, description, graphs, template_variables = nil, read_only = nil); end
  def create_dashboard_list(name); end
  def create_embed(graph_json, description = nil); end
  def create_integration(source_type_name, config); end
  def create_logs_pipeline(name, filter, options = nil); end
  def create_screenboard(description); end
  def create_service_level_objective(type, slo_name, thresholds, options = nil); end
  def create_synthetics_test(type, config, options = nil); end
  def create_user(description = nil); end
  def datadog_host; end
  def datadog_host=(arg0); end
  def delete_alert(alert_id); end
  def delete_board(dashboard_id); end
  def delete_comment(comment_id); end
  def delete_dashboard(dash_id); end
  def delete_dashboard_list(dashboard_list_id); end
  def delete_event(id); end
  def delete_integration(source_type_name); end
  def delete_items_from_dashboard_list(dashboard_list_id, dashboards); end
  def delete_logs_pipeline(pipeline_id); end
  def delete_many_service_level_objective(slo_ids); end
  def delete_monitor(monitor_id, options = nil); end
  def delete_screenboard(board_id); end
  def delete_service_level_objective(slo_id); end
  def delete_synthetics_tests(test_ids); end
  def delete_timeframes_service_level_objective(ops); end
  def detach_tags(host_id, source = nil); end
  def detatch_tags(host_id); end
  def disable_user(handle); end
  def emit_event(event, options = nil); end
  def emit_point(metric, value, options = nil); end
  def emit_points(metric, points, options = nil); end
  def enable_embed(embed_id); end
  def gcp_integration_create(config); end
  def gcp_integration_delete(config); end
  def gcp_integration_list; end
  def gcp_integration_update(config); end
  def get_active_metrics(from); end
  def get_alert(alert_id); end
  def get_all_alerts; end
  def get_all_boards; end
  def get_all_dashboard_lists; end
  def get_all_downtimes(options = nil); end
  def get_all_embeds; end
  def get_all_logs_pipelines; end
  def get_all_monitors(options = nil); end
  def get_all_screenboards; end
  def get_all_synthetics_tests; end
  def get_all_users; end
  def get_board(dashboard_id); end
  def get_custom_metrics_usage(start_hr, end_hr = nil); end
  def get_dashboard(dash_id); end
  def get_dashboard_list(dashboard_list_id); end
  def get_dashboards; end
  def get_downtime(downtime_id, options = nil); end
  def get_embed(embed_id, description = nil); end
  def get_event(id); end
  def get_fargate_usage(start_hr, end_hr = nil); end
  def get_hosts_usage(start_hr, end_hr = nil); end
  def get_integration(source_type_name); end
  def get_items_of_dashboard_list(dashboard_list_id); end
  def get_logs_pipeline(pipeline_id); end
  def get_logs_usage(start_hr, end_hr = nil); end
  def get_metadata(metric); end
  def get_monitor(monitor_id, options = nil); end
  def get_points(query, from, to); end
  def get_screenboard(board_id); end
  def get_service_level_objective(slo_id); end
  def get_service_level_objective_history(slo_id, from_ts, to_ts); end
  def get_synthetics_devices; end
  def get_synthetics_locations; end
  def get_synthetics_result(test_id, result_id); end
  def get_synthetics_results(test_id); end
  def get_synthetics_test(test_id); end
  def get_synthetics_usage(start_hr, end_hr = nil); end
  def get_traces_usage(start_hr, end_hr = nil); end
  def get_user(handle); end
  def graph_snapshot(metric_query, start_ts, end_ts, event_query = nil); end
  def host_tags(host_id, source = nil, by_source = nil); end
  def host_totals; end
  def initialize(api_key, application_key = nil, host = nil, device = nil, silent = nil, timeout = nil, endpoint = nil, skip_ssl_validation = nil); end
  def invite(emails, options = nil); end
  def monitor(type, query, options = nil); end
  def mute_alerts; end
  def mute_host(hostname, options = nil); end
  def mute_monitor(monitor_id, options = nil); end
  def mute_monitors; end
  def override_scope(options = nil); end
  def resolve_monitors(monitor_groups = nil, options = nil, version = nil); end
  def revoke_embed(embed_id); end
  def revoke_screenboard(board_id); end
  def schedule_downtime(scope, options = nil); end
  def search(query); end
  def search_hosts(options = nil); end
  def search_monitor_groups(options = nil); end
  def search_monitors(options = nil); end
  def search_service_level_objective(slo_ids = nil, query = nil, offset = nil, limit = nil); end
  def service_check(check, host, status, options = nil); end
  def share_screenboard(board_id); end
  def start_event(event, options = nil); end
  def start_pause_synthetics_test(test_id, new_status); end
  def stream(start, stop, options = nil); end
  def unmute_alerts; end
  def unmute_host(hostname); end
  def unmute_monitor(monitor_id, options = nil); end
  def unmute_monitors; end
  def update_alert(alert_id, query, options = nil); end
  def update_board(dashboard_id, title, widgets, layout_type, options = nil); end
  def update_comment(comment_id, options = nil); end
  def update_dashboard(dash_id, title, description, graphs, template_variables = nil, read_only = nil); end
  def update_dashboard_list(dashboard_list_id, name); end
  def update_downtime(downtime_id, options = nil); end
  def update_integration(source_type_name, config); end
  def update_items_of_dashboard_list(dashboard_list_id, dashboards); end
  def update_logs_pipeline(pipeline_id, name, filter, options = nil); end
  def update_metadata(metric, options = nil); end
  def update_monitor(monitor_id, query, options = nil); end
  def update_screenboard(board_id, description); end
  def update_service_level_objective(slo_id, type, options = nil); end
  def update_synthetics_test(test_id, type, config, options = nil); end
  def update_tags(host_id, tags, source = nil); end
  def update_user(handle, description = nil); end
  def v2; end
  def v2=(arg0); end
  def validate_monitor(type, query, options = nil); end
end
class Dogapi::Event
  def aggregation_key; end
  def date_happened; end
  def initialize(msg_text, options = nil); end
  def msg_text; end
  def msg_title; end
  def parent; end
  def priority; end
  def tags; end
  def to_hash; end
end
class Dogapi::EventService < Dogapi::Service
  def finish(api_key, event_id, successful = nil); end
  def start(api_key, event, scope, source_type = nil); end
  def submit(api_key, event, scope = nil, source_type = nil); end
end
class Dogapi::MetricService < Dogapi::Service
  def submit(api_key, scope, metric, points); end
end
