-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/ewk7aM
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "gwlstations" (
    "STATION" VARCHAR   NOT NULL,
    "STNAME" VARCHAR   NOT NULL,
    "WELL_NAME" VARCHAR   NOT NULL,
    "LATITUDE" FLOAT   NOT NULL,
    "LONGITUDE" FLOAT   NOT NULL,
    "LLDATUM" VARCHAR   NOT NULL,
    "ELEV" FLOAT   NOT NULL,
    "COUNTY_NAME" VARCHAR   NOT NULL,
    "WDL" VARCHAR   NOT NULL,
    "COMMENT" VARCHAR   NOT NULL,
    CONSTRAINT "pk_gwlstations" PRIMARY KEY (
        "STATION"
     )
);

CREATE TABLE "continuousgroundwatermonthly" (
    "STATION" VARCHAR   NOT NULL,
    "MSMT_DATE" DATE   NOT NULL,
    "WLM_RPE" FLOAT   NOT NULL,
    "WLM_RPE_QC" INT   NOT NULL,
    "WLM_GSE" FLOAT   NOT NULL,
    "WLM_GSE_QC" INT   NOT NULL,
    "RPE_WSE" FLOAT   NOT NULL,
    "RPE_WSE_QC" INT   NOT NULL,
    "GSE_WSE" FLOAT   NOT NULL,
    "GSE_WSE_QC" INT   NOT NULL,
    "WSE" FLOAT   NOT NULL,
    "WSE_QC" INT   NOT NULL
);

ALTER TABLE "continuousgroundwatermonthly" ADD CONSTRAINT "fk_continuousgroundwatermonthly_STATION" FOREIGN KEY("STATION")
REFERENCES "gwlstations" ("STATION");

