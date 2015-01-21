SimpleNavigation::Configuration.run do |navigation|
	navigation.selected_class = 'active'
  navigation.items do |primary|
    primary.dom_class = 'side-nav small-block-grid-3'
    primary.item :root_down, 'Главная', root_path
    primary.item :why_we_down, 'Почему мы?', why_we_path
    primary.item :news_down, 'Новости', news_path, highlights_on: -> {params[:controller]=='topics' && (params[:action]=='news' || params[:action]=='show')}
    primary.item :why_down, 'Зачем учить китайский?', why_chinese_path, highlights_on: -> {params[:controller]=='welcome' && (params[:action]=='why_chinese' || params[:action]=='chinese_for_kids' || params[:action]=='chinese_for_success' || params[:action]=='self_perfection' || params[:action] == 'union_joining' || params[:action] == 'up_to_date' || params[:action] == 'myths')}
    primary.item :articles_down, 'Статьи', publications_articles_path, highlights_on: -> {params[:controller]=='articles'}
    primary.item :courses_down, 'Курсы', courses_path, highlights_on: -> {params[:controller]=='education/levels' && (params[:action]=='courses' || params[:action]=='show')}
    primary.item :galery_down, 'Галерея', gallery_path, highlights_on: -> {params[:controller]=='albums' || params[:controller]=='photos'}
    primary.item :teachers_down, 'Лаоши', laoshi_path
    primary.item :prices_down, 'Цены', prices_path
    primary.item :contacts_down, 'Контакты', contacts_path
    primary.item :partners_down, 'Партнёры', partners_path
  end
end