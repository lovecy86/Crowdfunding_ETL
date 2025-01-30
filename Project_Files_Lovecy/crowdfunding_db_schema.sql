-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/ceIb9i
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

/*Creating table for category.csv*/
CREATE TABLE "category" (
    "category_id" varchar(6)   NOT NULL,
    "category" varchar(30)   NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_id"
     )
);


/*Creating table for subcategory.csv*/
CREATE TABLE "subcategory" (
    "subcategory_id" varchar(8)   NOT NULL,
    "subcategory" varchar(50)   NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);


/*Creating table for contact_info.csv*/
CREATE TABLE "contact_info" (
    "contact_id" int   NOT NULL,
    "first_name" varchar(50)   NOT NULL,
    "last_name" varchar(50)   NOT NULL,
    "email" varchar(100)   NOT NULL,
    CONSTRAINT "pk_contact_info" PRIMARY KEY (
        "contact_id"
     )
);


/*Creating table for campaign.csv*/
CREATE TABLE "campaign" (
    "cf_id" int   NOT NULL,
    "contact_id" INT   NOT NULL,
    "company_name" VARCHAR(200)   NOT NULL,
    "description" VARCHAR(500)   NOT NULL,
    "goal" REAL   NOT NULL,
    "pledged" REAL   NOT NULL,
    "outcome" VARCHAR(20)   NOT NULL,
    "backers_count" INT   NOT NULL,
    "country" VARCHAR(2)   NOT NULL,
    "currency" VARCHAR(4)   NOT NULL,
    "launched_date" TIMESTAMP   NOT NULL,
    "end_date" TIMESTAMP   NOT NULL,
    "category_id" VARCHAR(6)   NOT NULL,
    "subcategory_id" VARCHAR(8)   NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "cf_id"
     ),
    CONSTRAINT "uc_campaign_contact_id" UNIQUE (
        "contact_id"
    )
);


ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contact_info" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");


/* Verifying the correct data for category.csv*/
select * from category;

/* Verifying the correct data for subcategory.csv*/
select * from subcategory;

/* Verifying the correct data for contact_info.csv*/
select * from  contact_info;


/* Verifying the correct data for campaign.csv*/
select * from campaign;



