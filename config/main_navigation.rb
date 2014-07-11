SimpleNavigation::Configuration.run do |navigation|
  navigation.items do |primary|
    primary.dom_class = 'inline-list'
    primary.item :root, 'Главная', root_path
    primary.item :key_2, 'name', 'url' do |sub_nav|
      sub_nav.item :key_2_1, 'name', 'url'
    end
    primary.item :key_3, 'Admin', 'url', class: 'special'
    primary.item :key_4, 'Account', 'url'
  end
end
