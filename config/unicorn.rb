rails_root = File.expand_path('../../', __FILE__)
unicorn_dir = '/unicorn'

worker_processes 2
working_directory rails_root

listen "#{unicorn_dir}/tmp/unicorn.sock"
pid "#{unicorn_dir}/tmp/unicorn.pid"

stderr_path "#{unicorn_dir}/log/unicorn_error.log"
stdout_path "#{unicorn_dir}/log/unicorn.log"

preload_app true