Redmine::Plugin.register :projects_table do
  name 'Projects Table plugin'
  author 'Seventh'
  description 'This is a plugin for Redmine that provides projects table.'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'

  menu :top_menu, :projects_table,
    {controller: 'projects_table', action: 'index'},
    caption: :projects_table
end
