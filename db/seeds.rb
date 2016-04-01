# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = ["Coding Guideline","Unit Test&Coverage","Static Analystics","Cyclomatic Complexity"]
categories.each do |quality_practice|
     p = Post.new
     p.quality_practice = "quality_practice"
     p.toolname= "#{quality_practice} Checkstyle" 
     p.title= "#{quality_practice} 코딩컨벤션 위반 항목도구"
     p.support_language= "#{quality_practice} java"
     p.support_os= "#{quality_practice} window,linux"
     p.buy_need= "#{quality_practice} 오픈소스"
     p.support_javaversion= "#{quality_practice} 10.3"
     p.urlname= "#{quality_practice} http://www.naver.com"   
     p.save
   end
