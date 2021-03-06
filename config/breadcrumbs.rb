crumb :root do
  link "Home", root_path
end

crumb :users do
  link 'ユーザー一覧', users_path
end

crumb :show_user do |user|
  link "@#{user.nickname}", user
  parent :users
end

crumb :edit_user do |user|
  link 'プロフィール編集', edit_user_path(user)
  parent :show_user, user
end

crumb :brands do
  link 'ブランド一覧', brands_path
end

crumb :new_brand do |brand|
  link 'ブランド登録', new_brand_path(brand)
end

crumb :show_brand do |brand|
  link "#{brand.name}", brand_path(brand)
  parent :brands
end



# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).