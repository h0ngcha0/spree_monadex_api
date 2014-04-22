object false
node(:count) { @campaigns.count }
child(@campaigns => :campaigns) do
  extends "spree/api/v1/campaigns/show"
end
