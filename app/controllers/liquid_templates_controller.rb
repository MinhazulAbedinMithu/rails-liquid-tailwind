class LiquidTemplatesController < ApplicationController
    def home

      @courses = [
        { course_name: "Programming", is_completed: true },
        { course_name: "Data communication", is_completed: false },
        { course_name: "Database", is_completed: true },
        { course_name: "Algorithm", is_completed: false },
        { course_name: "Chemistry", is_completed: true },
        { course_name: "Calculas", is_completed: false },
        ]
      @liquid_content = File.read(Rails.root.join('app', 'views', 'liquid_templates', 'home.html.liquid'))
      render inline: @liquid_content
      
    end
  end
  