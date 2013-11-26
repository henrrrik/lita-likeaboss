require "spec_helper"

describe Lita::Handlers::Likeaboss, lita_handler: true do
  it { routes_command("like a boss").to(:like_a_boss) }
  it { routes_command("like a baws").to(:like_a_boss) }
  it { routes_command("boss").to(:like_a_boss) }
  it { routes_command("baws").to(:like_a_boss) }
end
