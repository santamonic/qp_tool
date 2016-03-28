class Post < ActiveRecord::Base
    validates :quality_practice, :inclusion => { :in => ["Coding Guideline","Unit Test&Coverage","Static Analystics","Cyclomatic Complexity"], :message => "Coding Guideline, Unit Test&Coverage, Static Analystics, Cyclomatic Complexity 중 하나를 선택하셔야 합니다" }

    validates :toolname, :presence => { :message => "Tool Name 을 반드시 입력해주세요"}  
    validates :support_language, :presence => { :message => "지원하는 언어를 반드시 입력해주세요"} 
    validates :support_os, :presence => { :message => "지원 OS 를 반드시 입력해주세요"}  
    validates :byeneed, :inclusion => { :in => ["오픈소스","사내개발","상용"], :message => "오픈소스,사내개발,상용 중 하나를 선택하셔야 합니다" }
   
end
