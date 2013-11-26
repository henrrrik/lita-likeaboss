require "lita"

module Lita
  module Handlers
    class Likeaboss < Handler

      def self.default_config(config)
        config.command_only = false
      end

      route %r{like a (boss|baws)|^(boss|baws)$}i, :like_a_boss, help: { "like a boss" => "outputs a random 'like a boss' image"}

      def like_a_boss(response)

        images = [
          "http://s3.amazonaws.com/kym-assets/photos/images/original/000/114/151/14185212UtNF3Va6.gif?1302832919",
          "http://s3.amazonaws.com/kym-assets/photos/images/newsfeed/000/110/885/boss.jpg",
          "http://assets.head-fi.org/b/b3/b3ba6b88_funny-facebook-fails-like-a-boss3.jpg",
          "http://www.demotivers.com/uploads/2011_02/02/7733_1292_500_Like-A-Boss.jpg",
          "http://funcorner.eu/wp-content/uploads/2011/03/like_a_boss.jpg",
          "https://i.chzbgr.com/maxW500/6972126976/hAA5A99AF/",
          "http://like-a-boss.org/wp-content/uploads/2011/06/tumblr_lk82o89vSG1qe0eclo1_r7_500.gif",
          "https://i.chzbgr.com/maxW500/6669391104/h7509954E/",
          "http://i.imgur.com/eNXkb.gif",
          "http://i.imgur.com/WN8Ud.gif",
          "http://i.imgur.com/9y0VV.gif",
          "http://i.imgur.com/68Jtv.gif",
          "http://i.imgur.com/hdVDd.gif",
          "http://i.imgur.com/B0ehW.gif",
          "http://i.imgur.com/3GU2Q.gif",
          "http://i.imgur.com/Z3aAs.gif",
          "http://i.imgur.com/diA9N.gif",
          "http://i.imgur.com/ze3MJ.gif",
          "http://i.imgur.com/rBvJany.gif"
        ]
        response.reply images.sample
      end
    end
    Lita.register_handler(Likeaboss)
  end
end
