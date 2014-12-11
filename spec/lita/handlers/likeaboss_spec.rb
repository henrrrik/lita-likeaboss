require "spec_helper"

describe Lita::Handlers::Likeaboss, lita_handler: true do
  it { is_expected.to route_command("like a boss").to(:like_a_boss) }
  it { is_expected.to route_command("like a baws").to(:like_a_boss) }
  it { is_expected.to route_command("boss").to(:like_a_boss) }
  it { is_expected.to route_command("baws").to(:like_a_boss) }
end
