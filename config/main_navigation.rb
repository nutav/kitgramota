SimpleNavigation::Configuration.run do |navigation|
	navigation.selected_class = 'active'
  navigation.items do |primary|
    primary.dom_class = 'inline-list sub-nav'
    primary.item :root, 'Главная', root_path
    primary.item :news, 'Новости', news_index_path
    primary.item :why, 'Зачем учить китайский?', why_chinese_path
    primary.item :galery, 'Галерея', albums_path, highlights_on: -> { params[:controller].include?('albums') || params[:controller].include?('photos')} 
    primary.item :teachers, 'Наши лаоши', teachers_path
    primary.item :prices, 'Цены', prices_path
    primary.item :contacts, 'Контакты', contacts_path
  end
end
