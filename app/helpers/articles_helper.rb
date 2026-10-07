module ArticlesHelper
  def publication_date(article)
    return if article.published_at.blank?

    months = %w[января февраля марта апреля мая июня июля августа сентября октября ноября декабря]

    date = article.published_at

    "#{date.day} #{months[date.month - 1]} #{date.year}"
  end
end
