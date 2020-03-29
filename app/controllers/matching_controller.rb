class MatchingController < ApplicationController

  def index
    # 自分にいいねしてくれた人のuser_idを取得 (to_user_idがいいねをされた人)
    got_reaction_user_ids = Reaction.where(to_user_id: current_user.id, status: 'like').pluck(:from_user_id)
    # from_user_idがいいねをした人
    # 「いいね」を押してくれた人の中から自分が「いいね」をつけたユーザーを取得。
    @match_users = Reaction.where(to_user_id: got_reaction_user_ids, from_user_id: current_user.id, status: 'like').map(&:to_user)
  end

end
