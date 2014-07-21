SimpleNavigation::Configuration.run do |navigation|
	navigation.selected_class = 'active'
  navigation.items do |primary|
    primary.dom_class = 'inline-list sub-nav'
    primary.item :root, 'Главная', root_path
    primary.item :galery, 'Галерея', albums_path 
    primary.item :prices, 'Цены', prices_path
    primary.item :contacts, 'Контакты', contacts_path
  end
end
