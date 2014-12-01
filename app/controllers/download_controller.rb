class DownloadController < ApplicationController

  def resume
  	send_file Rails.root.join('private', 'Andre Fagerberg Resume.pdf'), :type=>"application/pdf", :x_sendfile=>true
  end

  def grades
  end

  def article
  	send_file Rails.root.join('private', 'Traitor Tracing Article.pdf'), :type=>"application/pdf", :x_sendfile=>true
  end

  def coverLetter
  end
end
