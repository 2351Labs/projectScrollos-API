// Insert into tenants collection
db.tenants.insertOne({
  _id: "tenant1",
  name: "Tenant One",
  description: "Description for Tenant One",
  created_at: ISODate("2024-08-07T00:00:00Z"),
  updated_at: ISODate("2024-08-07T00:00:00Z"),
  contact_info: {
    email: "contact@tenantone.com",
    phone: "+1234567890",
    address: {
      street: "123 Main St",
      city: "Anytown",
      state: "Anystate",
      zip: "12345",
      country: "Country"
    }
  },
  billing_info: {
    billing_address: {
      street: "123 Billing St",
      city: "Billingtown",
      state: "Billingstate",
      zip: "67890",
      country: "Country"
    },
    payment_method: {
      type: "credit_card",
      last_four_digits: "1234",
      expiration_date: ISODate("2025-12-31T00:00:00Z")
    }
  },
  settings: {
    theme: "dark",
    notifications: {
      email: true,
      sms: false,
      push: true
    },
    language: "en"
  },
  plan: {
    type: "premium",
    started_at: ISODate("2024-01-01T00:00:00Z"),
    expires_at: ISODate("2025-01-01T00:00:00Z"),
    renewal: {
      auto_renew: true,
      renewal_date: ISODate("2024-12-31T00:00:00Z")
    }
  },
  users: [
    {
      user_id: "user1",
      role: "admin",
      joined_at: ISODate("2024-08-07T00:00:00Z")
    },
    {
      user_id: "user2",
      role: "member",
      joined_at: ISODate("2024-08-07T00:00:00Z")
    }
  ],
  custom_attributes: {
    industry: "technology",
    number_of_employees: 50
  }
});

// Insert into users collection
db.users.insertOne({
  _id: "user1",
  username: "userone",
  email: "userone@example.com",
  password_hash: "hashedpassword1",
  created_at: ISODate("2024-08-07T00:00:00Z"),
  updated_at: ISODate("2024-08-07T00:00:00Z"),
  profile: {
    first_name: "First",
    last_name: "Last",
    phone: "+1234567890",
    address: {
      street: "123 User St",
      city: "Usertown",
      state: "Userstate",
      zip: "54321",
      country: "Country"
    }
  },
  tenants: [
    {
      tenant_id: "tenant1",
      role: "admin",
      joined_at: ISODate("2024-08-07T00:00:00Z")
    },
    {
      tenant_id: "tenant2",
      role: "member",
      joined_at: ISODate("2024-08-07T00:00:00Z")
    }
  ]
});

// insert into documents collection
db.documents.insertOne({
  _id: "document1",
  tenant_id: "tenant1",
  name: "OpenAPI Spec for Service A",
  type: "openapi",
  filename: "openapi.yaml",
  path: "/path/to/openapi.yaml",
  created_at: ISODate("2024-08-07T00:00:00Z"),
  updated_at: ISODate("2024-08-07T00:00:00Z"),
  latest_revision_id: "revision1",
  description: "Description of the OpenAPI document",
  tags: ["api", "service-a"],
  revisions: [
    {
      revision_id: "revision1",
      created_at: ISODate("2024-08-07T00:00:00Z"),
      user_id: "user1"
    }
  ],
  comments: [
    {
      comment_id: "comment1",
      user_id: "user2",
      text: "Initial document created.",
      created_at: ISODate("2024-08-07T00:00:00Z")
    }
  ],
  issues: [
    {
      issue_id: "issue1",
      title: "Missing endpoint documentation",
      description: "The endpoint /users is missing from the spec.",
      status: "open",
      created_at: ISODate("2024-08-07T00:00:00Z"),
      updated_at: ISODate("2024-08-07T00:00:00Z"),
      user_id: "user2"
    }
  ],
  ratings: [
    {
      user_id: "user3",
      rating: 4,
      comment: "Very comprehensive documentation.",
      created_at: ISODate("2024-08-08T00:00:00Z")
    }
  ],
  schema_errors: [
    {
      error_id: "error1",
      description: "Property 'id' is missing from the schema.",
      line_number: 15,
      created_at: ISODate("2024-08-07T00:00:00Z")
    }
  ],
  average_rating: 4.0,
  teams_using: [
    {
      team_id: "team1",
      usage_started_at: ISODate("2024-08-08T00:00:00Z")
    }
  ]
});

// insert into teams collection
db.teams.insertOne({
  _id: "team1",
  tenant_id: "tenant1",
  name: "Development Team",
  description: "Team responsible for developing services",
  created_at: ISODate("2024-08-01T00:00:00Z"),
  updated_at: ISODate("2024-08-07T00:00:00Z"),
  members: [
    {
      user_id: "user1",
      role: "lead",
      joined_at: ISODate("2024-08-01T00:00:00Z")
    },
    {
      user_id: "user2",
      role: "developer",
      joined_at: ISODate("2024-08-02T00:00:00Z")
    }
  ]
});
