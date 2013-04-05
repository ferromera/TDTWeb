namespace :db do
  desc "Borra las noticias de hace mas de 3 meses"
  task erase_old_news: :environment do
      news=News.all
      news.each do |n|
        if n.created_at < 90.days.ago then
          n.delete
        end
      end
  end
end