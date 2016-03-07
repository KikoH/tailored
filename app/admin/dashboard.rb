ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    columns do
      column do
        panel link_to("Recent Intro items", admin_intros_path) do
            table_for Intro.all do
                column("Title")   {|intro| link_to image_tag(intro.image_url(:thumb)), admin_intro_path(intro) }
            end
        end
    end

    column do
        panel link_to("Recent Work", admin_portfolios_path) do
            table_for Portfolio.all.limit(3) do
                column("Title")   {|portfolio| link_to image_tag(portfolio.main_image_url(:thumb)) , admin_portfolio_path(portfolio) }
            end
        end
    end

    column do
        panel link_to("Recent Testimonials", admin_testimonials_path) do
            table_for Testimonial.all.limit(3) do
                column("Title")   {|testimonial| link_to image_tag(testimonial.image_url(:thumb)) , admin_testimonial_path(testimonial) }
            end
        end
    end

end

    # Here is an example of a simple dashboard with columns and panels.
    #
    
  end # content
end
