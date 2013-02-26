module OrdersHelper

    def convert_customer_name_to_id
        customer = Customer.find_by_name(self.customer_name(self))
        self.customer_id = customer.id unless customer.nil?
    end

    def customer_name(order)
        order.customer.name unless order.customer.nil?
    end

    def table_builder(orders)
        table = ""
        table += "<table class=\"table\">"
        table += "<tr>"
        table += "<th>Quantity</th>"
        table += "<th>Name</th>"
        table += "<th>Cost</th>"
        table += "<th></th>"
        table += "<th></th>"
        table += "<th></th>"
        table += "</tr>"
        orders.each do |order|
            table += "<tr>"
            table += "<td>#{order.quantity}</td>"
            table += "<td>#{order.name}</td>"
            table += "<td>#{order.cost}</td>"
            table += "<td>" + link_to('Show', customer_order_path(order.customer, order)) + "</td>"
            table += "<td>" + link_to('Edit', edit_customer_order_path(order.customer, order)) + "</td>"
            table += "<td>" + link_to('Destroy', customer_order_path(order.customer, order), method: :delete, data: { confirm: 'Are you sure?' }) + "</td>"
            table += "</tr>"
        end
        return table += "</table>"
    end
end
