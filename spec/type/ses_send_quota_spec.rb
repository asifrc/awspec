require 'spec_helper'
Awspec::Stub.load 'ses_send_quota'

describe ses_send_quota do
  its(:max_24_hour_send) { should eq '200'.to_f }
  its(:max_send_rate) { should eq '1'.to_f }
  its(:sent_last_24_hours) { should eq '1'.to_f }

  its(:max_24_hour_send) { should eq 200.0 }
  its(:max_send_rate) { should eq 1.0 }
  its(:sent_last_24_hours) { should eq 1.0 }
end

describe ses_send_quota, account: '123456789012' do
  its(:max_24_hour_send) { should eq 200.0 }
  its(:max_send_rate) { should eq 1.0 }
  its(:sent_last_24_hours) { should eq 1.0 }
end
