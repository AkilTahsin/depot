module ApplicationHelper

    def get_time_now
        @time_now = Time.now
    end

    def render_if(condition, record)
        if condition
            render record
        end
    end
end
