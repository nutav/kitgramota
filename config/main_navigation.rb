SimpleNavigation::Configuration.run do |navigation|
	navigation.selected_class = 'active'
  navigation.items do |primary|
    primary.dom_class = 'inline-list sub-nav'
    primary.item :root, 'Главная', root_path
    primary.item :news, 'Новости', news_path, highlights_on: -> {params[:controller]=='topics' && (params[:action]=='news' || params[:action]=='show')}
    primary.item :why, 'Зачем учить китайский?', why_chinese_path
    primary.item :articles, 'Статьи', articles_path
    primary.item :courses, 'Курсы', courses_path
    primary.item :galery, 'Галерея', albums_path, highlights_on: -> { params[:controller].include?('albums') || params[:controller].include?('photos')} 
    primary.item :teachers, 'Наши лаоши', laoshi_path
    primary.item :prices, 'Цены', prices_path
    primary.item :contacts, 'Контакты', contacts_path
  end
end
