class User < ApplicationRecord
	after_create :create_tenant

	private
		def create_tenant
			Apartment::Tenant.create(self.subdomain)
		end
end
