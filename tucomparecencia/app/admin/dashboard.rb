ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    columns do
      column do
        panel 'Últimos Documentos agregados' do
          ul do
            Document.last(5).map do |document|
              li link_to(document.name, admin_document_path(document))
            end
          end
        end
      end

      column do
        panel 'Usuarios' do
          ul do
            li "Usuarios Registrados: #{User.count}"
            li "Administradores Registrados: #{AdminUser.count}"
          end
        end
      end

      column do
        panel 'Compras' do
          ul do
            li "Compras realizadas: #{Order.count}"
            li "Recaudación: USD #{Order.get_total}"
          end
        end
      end

    end #columns

    columns do
      column do
        panel "Ventas generadas" do
          render 'shared/chart1'
        end
      end
      column do
        panel "Documentos" do
          render 'shared/chart2'
        end
      end
    end
  end # content
end
