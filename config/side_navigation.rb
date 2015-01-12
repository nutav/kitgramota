SimpleNavigation::Configuration.run do |navigation|
	navigation.selected_class = 'active'
  navigation.items do |primary|
    primary.dom_class = 'side-nav small-block-grid-3'
    primary.item :root, 'Главная', root_path
    primary.item :why_we, 'Почему мы?', why_we_path
    primary.item :news, 'Новости', news_path, highlights_on: -> {params[:controller]=='topics' && (params[:action]=='news' || params[:action]=='show')}
    primary.item :why, 'Зачем учить китайский?', why_chinese_path, highlights_on: -> {params[:controller]=='welcome' && (params[:action]=='why_chinese' || params[:action]=='chinese_for_kids' || params[:action]=='chinese_for_success' || params[:action]=='self_perfection' || params[:action] == 'union_joining' || params[:action] == 'up_to_date' || params[:action] == 'myths')}
    primary.item :articles, 'Статьи', publications_articles_path, highlights_on: -> {params[:controller]=='articles'}
    primary.item :courses, 'Курсы', courses_path, highlights_on: -> {params[:controller]=='education/levels' && (params[:action]=='courses' || params[:action]=='show')}
    primary.item :galery, 'Галерея', gallery_path, highlights_on: -> {params[:controller]=='albums' || params[:controller]=='photos'}
    primary.item :teachers, 'Лаоши', laoshi_path
    primary.item :prices, 'Цены', prices_path
    primary.item :contacts, 'Контакты', contacts_path
    primary.item :partners, 'Партнёры', partners_path
  end
end