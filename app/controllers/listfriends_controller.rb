class ListfriendsController < ApplicationController
  layout 'applicationPage'
  def index
    # liet ke ra danh sach ban ko thi khoa
    @listfriendcurrent = current_user.friendlist.desfriendlists
    blocklistcurrent = Blocklist.where(user_id: current_user.id) # danh sach bi kich
    blocklisttouser = Blocklist.where(userblock_id: current_user.id)
    listfriendcurrents = [];
    @listfriendcurrent.each do |listfriend|
      listfriend.status = 0
      listfriendcurrents.push(listfriend)
    end
    @listfriendcurrentss = []; # day la cai chung ta se xuat ra
    listfriendcurrents.each do |listfriend|
      blocklistcurrent.each do |blockfriend|
        # thang nay la thang chu dong block friend giao dien se khac
        if blockfriend.userblock_id == listfriend.user_id
          listfriend.status = 1;
        end
      end
      @listfriendcurrentss.push(listfriend)
    end
    listfriendcurrents.each do |listfriend|
      blocklisttouser.each do |blockfriend|
        # thang nay la thang chu dong block friend giao dien se khac
        if blockfriend.userblock_id == current_user.id && listfriend.user_id == blockfriend.user_id
          listfriend.status = 2;
        end
      end
    end


  end


end
