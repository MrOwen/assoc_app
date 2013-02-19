module OrdersHelper

    def convert_customer_name_to_id
        customer = Customer.find_by_name(self.customer_name(self))
        self.customer_id = customer.id unless customer.nil?
    end

    def customer_name(order)
        order.customer.name unless order.customer.nil?
    end
end
