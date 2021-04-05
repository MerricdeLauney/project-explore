desc 'Runs all specs'
task spec: 'spec:all'

namespace :spec do
  task all: ['db:pick', 'db:parallel:recreate'] do
    if ARGV[1]
      run_specs(ARGV[1])
    else
      run_specs_parallel('spec')
    end
  end

  task serial: ['db:pick', 'db:recreate'] do
    if ARGV[1]
      run_specs(ARGV[1])
    else
      run_specs('spec')
    end
  end

  task integration: ['db:pick', 'db:recreate'] do
    run_specs('spec/integration')
  end

  desc 'Run only previously failing tests'
  task failed: 'db:pick' do
    run_failed_specs
  end

  def run_specs(path)
    sh "bundle exec rspec #{path} --require rspec/instafail --format RSpec::Instafail --format progress"
  end

  def run_specs_parallel(path)
    sh "bundle exec parallel_rspec --test-options '--order rand' --single spec/integration/ --single spec/acceptance/ -- #{path}"
  end

  def run_failed_specs
    sh 'bundle exec rspec --only-failures --color --tty spec --require rspec/instafail --format RSpec::Instafail'
  end
end
