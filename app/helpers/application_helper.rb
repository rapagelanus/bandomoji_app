module ApplicationHelper
  #helperis title
 def title
  base_title = "Ruby on rails bandomoji programa"
   if @title.nil?
    base_title
   else
    "#{base_title} | #{@title}"
   end
 end
    def logo
      image_tag("logo.png", :alt => "Bandomoji progr", :class => "round")
    end
end
