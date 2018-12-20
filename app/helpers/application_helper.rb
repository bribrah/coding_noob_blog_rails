module ApplicationHelper

    #defines the title of a page
    def page_title(page_title = "")
        base_title = "Coding Noob"
        if page_title.empty?
            base_title
        else
            base_title + "|" + page_title
        end
    end
end
