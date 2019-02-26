require 'awspec'

describe security_group('tf-ecs-tasks') do
  it { should exist }
  its('group_name') { should start_with('tf-ecs-tasks')}
  its(:outbound_rule_count) { should eq 1 }
  its(:inbound_rule_count) { should eq 1 }
  its(:outbound) { should be_opened(0).protocol('-1').for('0.0.0.0/0') }
  its(:inbound) { should be_opened(3000).protocol('tcp').for('tf-ecs-alb') }
end
