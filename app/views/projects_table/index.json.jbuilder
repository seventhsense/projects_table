json.sEcho params[:sEcho].to_i
json.iTotalRecords Project.count
json.iTotalDisplayRecords @projects.count
json.aaData @projects do |project|
  version = project.versions.order(:effective_date).first
  last_updated_issue = project.issues.order(:updated_on).first
  next_issue = project.issues.order(:due_date).first
  json.array! [ 
        "#{link_to project.name, project_path(project), class: "cell_header"}<br>
        #{project.created_on} <br>
        #{project.updated_on} ",
        "#{link_to(version.name, version_path(version), class: "cell_header") unless version.nil?} <br>
        #{version.effective_date unless version.nil?}",
        "#{link_to(last_updated_issue.subject, issue_path(last_updated_issue), class: "cell_header") unless last_updated_issue.nil?}<br>
        #{last_updated_issue.updated_on unless last_updated_issue.nil?}",
        "#{link_to(next_issue.subject, issue_path(next_issue), class: "cell_header") unless next_issue.nil?}<br>
        #{next_issue.due_date unless next_issue.nil?}" 
  ]
end
