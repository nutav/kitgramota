SimpleNavigation::Configuration.run do |navigation|
	navigation.selected_class = 'active'
  navigation.items do |primary|
    primary.dom_class = 'inline-list sub-nav navigation'
    primary.item :root, 'Главная', root_path
    primary.item :why_we, 'Почему мы?', why_we_path
    primary.item :news, 'Новости', news_path, highlights_on: -> {params[:controller]=='topics' && (params[:action]=='news' || params[:action]=='show')}
    primary.item :why, 'Зачем учить китайский?', why_chinese_path, highlights_on: -> {params[:controller]=='welcome' && (params[:action]=='why_chinese' || params[:action]=='chinese_for_kids' || params[:action]=='chinese_for_success' || params[:action]=='self_perfection' || params[:action] == 'union_joining' || params[:action] == 'up_to_date' || params[:action] == 'myths')}
    primary.item :articles, 'Статьи', publications_articles_path, highlights_on: -> {params[:controller]=='articles' && (params[:action]=='publications' || params[:action]=='show')}
    primary.item :courses, 'Курсы', courses_path, highlights_on: -> {params[:controller]=='education/levels' && (params[:action]=='courses' || params[:action]=='show')}
    primary.item :gallery, 'Галерея', gallery_path, highlights_on: -> {(params[:controller]=='albums' && params[:action]=='gallery') || params[:controller]=='photos'}
    primary.item :laoshi, 'Лаоши', laoshi_path
    primary.item :prices, 'Цены', prices_path
    primary.item :contacts, 'Контакты', contacts_path
    primary.item :partners, 'Партнёры', partners_path
    if admin_signed_in?
      primary.item :topics, 'Новости (а)', topics_path, highlights_on: -> {params[:controller]=='topics' && (params[:action]=='index' || params[:action]=='edit' || params[:action]=='new')}, class: 'admin_item'
      primary.item :topics, 'Курсы (а)', education_levels_path, highlights_on: -> {params[:controller]=='education/levels' && (params[:action]=='index' || params[:action]=='edit' || params[:action]=='new')}, class: 'admin_item'
      primary.item :topics, 'Заявки (а)', education_claims_path, class: 'admin_item'
      primary.item :articles_a, 'Статьи (а)', articles_path, highlights_on: -> {params[:controller]=='articles' && (params[:action]=='index' || params[:action]=='edit' || params[:action]=='new')}, class: 'admin_item'
      primary.item :prices_a, 'Цены (а)', all_prices_path, highlights_on: -> {params[:controller]=='prices' && (params[:action]=='index' || params[:action]=='edit' || params[:action]=='new')}, class: 'admin_item'
      primary.item :teachers, 'Преподаватели (а)', teachers_path, highlights_on: -> {params[:controller]=='teachers' && (params[:action]=='index' || params[:action]=='edit' || params[:action]=='new')}, class: 'admin_item'
      primary.item :albums, 'Фотографии (а)', albums_path, highlights_on: -> {params[:controller]=='albums' && (params[:action]=='index' || params[:action]=='edit' || params[:action]=='new')}, class: 'admin_item'
      primary.item :albums, 'Администраторы (а)', admins_path, highlights_on: -> { params[:controller]=='admins' }, class: 'admin_item'
    end
  end
end
