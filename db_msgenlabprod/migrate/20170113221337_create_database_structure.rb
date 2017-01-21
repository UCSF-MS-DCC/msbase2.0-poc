class CreateDatabaseStructure < ActiveRecord::Migration[5.0]
  def change

      create_table "_dna", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
        t.integer "subjectid"
        t.date    "Recent_DNA_Date"
        t.decimal "Recent_DNA_VialCount",            precision: 52, scale: 2
        t.bigint  "Prior_DNA_Date_Count",                                     default: 0, null: false
        t.string  "Earliest_DNA_Date",    limit: 10,                                                   collation: "utf8_general_ci"
        t.decimal "Total_DNA_Available",             precision: 52, scale: 2
        t.index ["subjectid"], name: "vid", using: :btree
      end

      create_table "_groups_blood", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
        t.integer "SubjectID",                                                       default: 0, null: false
        t.bigint  "Blood_Date_Count",                                                default: 0, null: false
        t.text    "Blood_Dates",              limit: 65535,                                                   collation: "utf8_general_ci"
        t.text    "Blood_Locations",          limit: 65535,                                                   collation: "utf8_general_ci"
        t.decimal "Blood_Current_Vial_Count",               precision: 23
        t.decimal "Blood_Current_Amount",                   precision: 30, scale: 2
        t.decimal "Blood_Vials_Discarded",                  precision: 23
        t.index ["SubjectID"], name: "ixsubid", using: :btree
      end

      create_table "_groups_cell_line", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
        t.integer "SubjectID",                                                           default: 0, null: false
        t.bigint  "Cell_Line_Date_Count",                                                default: 0, null: false
        t.text    "Cell_Line_Dates",              limit: 65535,                                                   collation: "utf8_general_ci"
        t.text    "Cell_Line_Locations",          limit: 65535,                                                   collation: "utf8_general_ci"
        t.decimal "Cell_Line_Current_Vial_Count",               precision: 23
        t.decimal "Cell_Line_Current_Amount",                   precision: 30, scale: 2
        t.decimal "Cell_Line_Vials_Discarded",                  precision: 23
        t.index ["SubjectID"], name: "ixsubid", using: :btree
      end

      create_table "_groups_centers", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
        t.integer "SubjectID",                                                         default: 0, null: false
        t.bigint  "Centers_Date_Count",                                                default: 0, null: false
        t.text    "Centers_Dates",              limit: 65535,                                                   collation: "utf8_general_ci"
        t.text    "Centers_Locations",          limit: 65535,                                                   collation: "utf8_general_ci"
        t.decimal "Centers_Current_Vial_Count",               precision: 23
        t.decimal "Centers_Current_Amount",                   precision: 30, scale: 2
        t.decimal "Centers_Vials_Discarded",                  precision: 23
        t.index ["SubjectID"], name: "ixsubid", using: :btree
      end

      create_table "_groups_csf", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
        t.integer "SubjectID",                                                     default: 0, null: false
        t.bigint  "CSF_Date_Count",                                                default: 0, null: false
        t.text    "CSF_Dates",              limit: 65535,                                                   collation: "utf8_general_ci"
        t.text    "CSF_Locations",          limit: 65535,                                                   collation: "utf8_general_ci"
        t.decimal "CSF_Current_Vial_Count",               precision: 23
        t.decimal "CSF_Current_Amount",                   precision: 30, scale: 2
        t.decimal "CSF_Vials_Discarded",                  precision: 23
        t.index ["SubjectID"], name: "ixsubid", using: :btree
      end

      create_table "_groups_hla", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
        t.integer "SubjectID",                                                     default: 0, null: false
        t.bigint  "HLA_Date_Count",                                                default: 0, null: false
        t.text    "HLA_Dates",              limit: 65535,                                                   collation: "utf8_general_ci"
        t.text    "HLA_Locations",          limit: 65535,                                                   collation: "utf8_general_ci"
        t.decimal "HLA_Current_Vial_Count",               precision: 23
        t.decimal "HLA_Current_Amount",                   precision: 30, scale: 2
        t.decimal "HLA_Vials_Discarded",                  precision: 23
        t.index ["SubjectID"], name: "ixsubid", using: :btree
      end

      create_table "_groups_lt_dna", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
        t.integer "SubjectID",                                                        default: 0, null: false
        t.bigint  "LT_DNA_Date_Count",                                                default: 0, null: false
        t.text    "LT_DNA_Dates",              limit: 65535,                                                   collation: "utf8_general_ci"
        t.text    "LT_DNA_Locations",          limit: 65535,                                                   collation: "utf8_general_ci"
        t.decimal "LT_DNA_Current_Vial_Count",               precision: 23
        t.decimal "LT_DNA_Current_Amount",                   precision: 30, scale: 2
        t.decimal "LT_DNA_Vials_Discarded",                  precision: 23
        t.index ["SubjectID"], name: "ixsubid", using: :btree
      end

      create_table "_groups_lymphocyte", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
        t.integer "SubjectID",                                                            default: 0, null: false
        t.bigint  "Lymphocyte_Date_Count",                                                default: 0, null: false
        t.text    "Lymphocyte_Dates",              limit: 65535,                                                   collation: "utf8_general_ci"
        t.text    "Lymphocyte_Locations",          limit: 65535,                                                   collation: "utf8_general_ci"
        t.decimal "Lymphocyte_Current_Vial_Count",               precision: 23
        t.decimal "Lymphocyte_Current_Amount",                   precision: 30, scale: 2
        t.decimal "Lymphocyte_Vials_Discarded",                  precision: 23
        t.index ["SubjectID"], name: "ixsubid", using: :btree
      end

      create_table "_groups_pax", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
        t.integer "SubjectID",                                                     default: 0, null: false
        t.bigint  "PAX_Date_Count",                                                default: 0, null: false
        t.text    "PAX_Dates",              limit: 65535,                                                   collation: "utf8_general_ci"
        t.text    "PAX_Locations",          limit: 65535,                                                   collation: "utf8_general_ci"
        t.decimal "PAX_Current_Vial_Count",               precision: 23
        t.decimal "PAX_Current_Amount",                   precision: 30, scale: 2
        t.decimal "PAX_Vials_Discarded",                  precision: 23
        t.index ["SubjectID"], name: "ixsubid", using: :btree
      end

      create_table "_groups_plasma", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
        t.integer "SubjectID",                                                        default: 0, null: false
        t.bigint  "Plasma_Date_Count",                                                default: 0, null: false
        t.text    "Plasma_Dates",              limit: 65535,                                                   collation: "utf8_general_ci"
        t.text    "Plasma_Locations",          limit: 65535,                                                   collation: "utf8_general_ci"
        t.decimal "Plasma_Current_Vial_Count",               precision: 23
        t.decimal "Plasma_Current_Amount",                   precision: 30, scale: 2
        t.decimal "Plasma_Vials_Discarded",                  precision: 23
        t.index ["SubjectID"], name: "ixsubid", using: :btree
      end

      create_table "_groups_rna", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
        t.integer "SubjectID",                                                     default: 0, null: false
        t.bigint  "RNA_Date_Count",                                                default: 0, null: false
        t.text    "RNA_Dates",              limit: 65535,                                                   collation: "utf8_general_ci"
        t.text    "RNA_Locations",          limit: 65535,                                                   collation: "utf8_general_ci"
        t.decimal "RNA_Current_Vial_Count",               precision: 23
        t.decimal "RNA_Current_Amount",                   precision: 30, scale: 2
        t.decimal "RNA_Vials_Discarded",                  precision: 23
        t.index ["SubjectID"], name: "ixsubid", using: :btree
      end

      create_table "_groups_serum", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
        t.integer "SubjectID",                                                       default: 0, null: false
        t.bigint  "Serum_Date_Count",                                                default: 0, null: false
        t.text    "Serum_Dates",              limit: 65535,                                                   collation: "utf8_general_ci"
        t.text    "Serum_Locations",          limit: 65535,                                                   collation: "utf8_general_ci"
        t.decimal "Serum_Current_Vial_Count",               precision: 23
        t.decimal "Serum_Current_Amount",                   precision: 30, scale: 2
        t.decimal "Serum_Vials_Discarded",                  precision: 23
        t.index ["SubjectID"], name: "ixsubid", using: :btree
      end

      create_table "_groups_st_dna", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
        t.integer "SubjectID",                                                        default: 0, null: false
        t.bigint  "ST_DNA_Date_Count",                                                default: 0, null: false
        t.text    "ST_DNA_Dates",              limit: 65535,                                                   collation: "utf8_general_ci"
        t.text    "ST_DNA_Locations",          limit: 65535,                                                   collation: "utf8_general_ci"
        t.decimal "ST_DNA_Current_Vial_Count",               precision: 23
        t.decimal "ST_DNA_Current_Amount",                   precision: 30, scale: 2
        t.decimal "ST_DNA_Vials_Discarded",                  precision: 23
        t.index ["SubjectID"], name: "ixsubid", using: :btree
      end

      create_table "_groups_stool_dry", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
        t.integer "SubjectID",                                                           default: 0, null: false
        t.bigint  "Stool_Dry_Date_Count",                                                default: 0, null: false
        t.text    "Stool_Dry_Dates",              limit: 65535,                                                   collation: "utf8_general_ci"
        t.text    "Stool_Dry_Locations",          limit: 65535,                                                   collation: "utf8_general_ci"
        t.decimal "Stool_Dry_Current_Vial_Count",               precision: 23
        t.decimal "Stool_Dry_Current_Amount",                   precision: 30, scale: 2
        t.decimal "Stool_Dry_Vials_Discarded",                  precision: 23
        t.index ["SubjectID"], name: "ixsubid", using: :btree
      end

      create_table "_groups_stool_wet", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
        t.integer "SubjectID",                                                           default: 0, null: false
        t.bigint  "Stool_Wet_Date_Count",                                                default: 0, null: false
        t.text    "Stool_Wet_Dates",              limit: 65535,                                                   collation: "utf8_general_ci"
        t.text    "Stool_Wet_Locations",          limit: 65535,                                                   collation: "utf8_general_ci"
        t.decimal "Stool_Wet_Current_Vial_Count",               precision: 23
        t.decimal "Stool_Wet_Current_Amount",                   precision: 30, scale: 2
        t.decimal "Stool_Wet_Vials_Discarded",                  precision: 23
        t.index ["SubjectID"], name: "ixsubid", using: :btree
      end

      create_table "_groups_stool_wet_media", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
        t.integer "SubjectID",                                                                 default: 0, null: false
        t.bigint  "Stool_Wet_Media_Date_Count",                                                default: 0, null: false
        t.text    "Stool_Wet_Media_Dates",              limit: 65535,                                                   collation: "utf8_general_ci"
        t.text    "Stool_Wet_Media_Locations",          limit: 65535,                                                   collation: "utf8_general_ci"
        t.decimal "Stool_Wet_Media_Current_Vial_Count",               precision: 23
        t.decimal "Stool_Wet_Media_Current_Amount",                   precision: 30, scale: 2
        t.decimal "Stool_Wet_Media_Vials_Discarded",                  precision: 23
        t.index ["SubjectID"], name: "ixsubid", using: :btree
      end

      create_table "_latestsampletype", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
        t.integer "subjectid"
        t.date    "dateisolated"
        t.text    "Biomaterial_Processed", limit: 65535, collation: "utf8_general_ci"
        t.index ["dateisolated"], name: "ixdate", using: :btree
        t.index ["subjectid"], name: "ixsid", using: :btree
      end

      create_table "_lymphocyte", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
        t.integer "subjectid"
        t.date    "Recent_Lymphocyte_Date"
        t.decimal "Recent_Lymphocyte_VialCount",            precision: 52, scale: 2
        t.bigint  "Prior_Lymphocyte_Date_Count",                                     default: 0, null: false
        t.string  "Earliest_Lymphocyte_Date",    limit: 10,                                                   collation: "utf8_general_ci"
        t.decimal "Total_Lymphocyte_Available",             precision: 52, scale: 2
        t.index ["subjectid"], name: "vid", using: :btree
      end

      create_table "_repository_inventory", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
        t.integer "SubjectID",                                                   default: 0,  null: false
        t.string  "Participation_status",   limit: 100
        t.string  "Center_ID",              limit: 50
        t.string  "Center_Name",            limit: 100,                          default: ""
        t.string  "Pedigree",               limit: 100,                          default: ""
        t.string  "Individual",             limit: 100
        t.string  "EPICID",                 limit: 10,                           default: ""
        t.string  "Gender",                 limit: 10
        t.integer "YOB"
        t.string  "AA",                     limit: 3,                            default: "", null: false, collation: "utf8_general_ci"
        t.string  "Caucasian",              limit: 3,                            default: "", null: false, collation: "utf8_general_ci"
        t.string  "Hispanic",               limit: 3,                            default: "", null: false, collation: "utf8_general_ci"
        t.string  "Ethnicstring",           limit: 20
        t.string  "Ethnicity_comments"
        t.string  "Disease",                limit: 150
        t.string  "DiseaseCourse",          limit: 20
        t.string  "AAE",                    limit: 10
        t.integer "AOO",                    limit: 1
        t.integer "DiseaseDuration"
        t.string  "Recent_EDSS",            limit: 10
        t.decimal "Age_at_earliest_sample",             precision: 16
        t.decimal "Age_at_latest_sample",               precision: 16
        t.bigint  "SampleDatesCount",                                            default: 0,  null: false
        t.date    "Earliest_sample_date"
        t.date    "Latest_sample_date"
        t.string  "Years_elapsed",          limit: 9,                                                      collation: "utf8_general_ci"
        t.decimal "DNA",                                precision: 30, scale: 2
        t.decimal "Serum",                              precision: 30, scale: 2
        t.decimal "Plasma",                             precision: 30, scale: 2
        t.decimal "Lymphocyte",                         precision: 30, scale: 2
        t.decimal "Cell_line",                          precision: 30, scale: 2
        t.decimal "PAX",                                precision: 30, scale: 2
        t.decimal "Blood",                              precision: 30, scale: 2
        t.decimal "CSF",                                precision: 30, scale: 2
        t.decimal "HLA",                                precision: 30, scale: 2
        t.decimal "RNA",                                precision: 30, scale: 2
        t.decimal "Stool_Dry",                          precision: 30, scale: 2
        t.decimal "Stool_Wet",                          precision: 30, scale: 2
        t.decimal "Stool_Wet_Media",                    precision: 30, scale: 2
        t.string  "study_enrollment"
        t.index ["SubjectID"], name: "ixsubid", using: :btree
      end

      create_table "_sampleinventory", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
        t.integer "SubjectID",                                   null: false
        t.date    "EarliestSampleDate"
        t.date    "LatestSampleDate"
        t.decimal "DNA",                precision: 30, scale: 2
        t.decimal "Serum",              precision: 30, scale: 2
        t.decimal "Plasma",             precision: 30, scale: 2
        t.decimal "Lymphocytes",        precision: 30, scale: 2
        t.decimal "Cell_line",          precision: 30, scale: 2
        t.decimal "PAX",                precision: 30, scale: 2
        t.decimal "Blood",              precision: 30, scale: 2
        t.decimal "CSF",                precision: 30, scale: 2
        t.decimal "HLA",                precision: 30, scale: 2
        t.decimal "RNA",                precision: 30, scale: 2
        t.decimal "Stool_Dry",          precision: 30, scale: 2
        t.decimal "Stool_Wet",          precision: 30, scale: 2
        t.decimal "Stool_Wet_Media",    precision: 30, scale: 2
        t.index ["SubjectID"], name: "ixsubjectid", using: :btree
      end

      create_table "_sampleinventoryincdiscarded", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
        t.integer "SubjectID",                                   null: false
        t.date    "EarliestSampleDate"
        t.date    "LatestSampleDate"
        t.decimal "DNA",                precision: 30, scale: 2
        t.decimal "Serum",              precision: 30, scale: 2
        t.decimal "Plasma",             precision: 30, scale: 2
        t.decimal "Lymphocytes",        precision: 30, scale: 2
        t.decimal "Cell_line",          precision: 30, scale: 2
        t.decimal "PAX",                precision: 30, scale: 2
        t.decimal "Blood",              precision: 30, scale: 2
        t.decimal "CSF",                precision: 30, scale: 2
        t.decimal "HLA",                precision: 30, scale: 2
        t.decimal "RNA",                precision: 30, scale: 2
        t.decimal "Stool_Dry",          precision: 30, scale: 2
        t.decimal "Stool_Wet",          precision: 30, scale: 2
        t.decimal "Stool_Wet_Media",    precision: 30, scale: 2
        t.index ["SubjectID"], name: "ixsubjectid", using: :btree
      end

      create_table "_samplesavailable", primary_key: "SubjectID", id: :integer, default: 0, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
        t.bigint  "SampleDates",                                           default: 0, null: false
        t.date    "EarliestSampleDate"
        t.date    "LatestSampleDate"
        t.string  "YearsElapsed",       limit: 9,                                                   collation: "utf8_general_ci"
        t.decimal "DNA",                          precision: 30, scale: 2
        t.decimal "Serum",                        precision: 30, scale: 2
        t.decimal "Plasma",                       precision: 30, scale: 2
        t.decimal "Lymphocyte",                   precision: 30, scale: 2
        t.decimal "Cell Line",                    precision: 30, scale: 2
        t.decimal "PAX",                          precision: 30, scale: 2
        t.decimal "Blood",                        precision: 30, scale: 2
        t.decimal "CSF",                          precision: 30, scale: 2
        t.decimal "HLA",                          precision: 30, scale: 2
        t.decimal "RNA",                          precision: 30, scale: 2
        t.decimal "Stool_Dry",                    precision: 30, scale: 2
        t.decimal "Stool_Wet",                    precision: 30, scale: 2
        t.decimal "Stool_Wet_Media",              precision: 30, scale: 2
      end

      create_table "_samplesavailable_ifnull", primary_key: "SubjectID", id: :integer, default: 0, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
        t.bigint  "SampleDates",                                           default: 0, null: false
        t.date    "EarliestSampleDate"
        t.date    "LatestSampleDate"
        t.string  "YearsElapsed",       limit: 9,                                                   collation: "utf8_general_ci"
        t.decimal "DNA",                          precision: 30, scale: 2
        t.decimal "Serum",                        precision: 30, scale: 2
        t.decimal "Plasma",                       precision: 30, scale: 2
        t.decimal "Lymphocyte",                   precision: 30, scale: 2
        t.decimal "Cell Line",                    precision: 30, scale: 2
        t.decimal "PAX",                          precision: 30, scale: 2
        t.decimal "Blood",                        precision: 30, scale: 2
        t.decimal "CSF",                          precision: 30, scale: 2
        t.decimal "HLA",                          precision: 30, scale: 2
        t.decimal "RNA",                          precision: 30, scale: 2
      end

      create_table "_samplesavailablebydate", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
        t.integer "SubjectID"
        t.integer "VialGroupID",                                     default: 0, null: false
        t.date    "SampleDate"
        t.string  "SampleType",  limit: 50,                                                   collation: "utf8_general_ci"
        t.decimal "Amount",                 precision: 30, scale: 2
        t.index ["SubjectID"], name: "SubjectID", using: :btree
      end

      create_table "_samplesavailablebydatehoriz", primary_key: ["SubjectID", "SampleDate"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
        t.integer "SubjectID",                                default: 0, null: false
        t.date    "SampleDate",                                           null: false
        t.decimal "DNA",             precision: 30, scale: 2
        t.decimal "Serum",           precision: 30, scale: 2
        t.decimal "Plasma",          precision: 30, scale: 2
        t.decimal "Lymphocyte",      precision: 30, scale: 2
        t.decimal "Cell Line",       precision: 30, scale: 2
        t.decimal "PAX",             precision: 30, scale: 2
        t.decimal "Blood",           precision: 30, scale: 2
        t.decimal "CSF",             precision: 30, scale: 2
        t.decimal "HLA",             precision: 30, scale: 2
        t.decimal "RNA",             precision: 30, scale: 2
        t.decimal "Stool_Dry",       precision: 30, scale: 2
        t.decimal "Stool_Wet",       precision: 30, scale: 2
        t.decimal "Stool_Wet_Media", precision: 30, scale: 2
      end

      create_table "_vialinventory", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
        t.integer "SubjectID"
        t.string  "Pedigree",      limit: 50,                         default: ""
        t.string  "Individual",    limit: 50
        t.string  "EPICID",        limit: 50
        t.string  "Initials",      limit: 2
        t.string  "SampleType",    limit: 50,                                                      collation: "utf8_general_ci"
        t.integer "VialID",                                           default: 0,     null: false
        t.string  "Location",      limit: 30,                                                      collation: "utf8_general_ci"
        t.string  "BoxNum",        limit: 6,                                                       collation: "utf8_general_ci"
        t.decimal "CurrentAmount",            precision: 8, scale: 2
        t.decimal "Conc",                     precision: 8, scale: 2
        t.string  "Source",        limit: 25,                                                      collation: "utf8_general_ci"
        t.integer "VialGroupID"
        t.string  "VialGroupKey",  limit: 25,                                                      collation: "utf8_general_ci"
        t.date    "DateIsolated"
        t.boolean "Discard",                                          default: false, null: false
        t.index ["VialID"], name: "vid", using: :btree
      end

      create_table "collaborator", primary_key: "CollaboratorID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
        t.string "OrganizationName", limit: 50
        t.string "PrimaryContact",   limit: 50
        t.string "PhoneNumber",      limit: 50
        t.index ["CollaboratorID"], name: "CollaboratorID", using: :btree
      end

      create_table "kit", primary_key: "KitID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
        t.integer  "SubjectID"
        t.datetime "KitSentDate"
        t.text     "Comments",    limit: 4294967295
        t.string   "Status",      limit: 10
        t.index ["KitID"], name: "KitID", using: :btree
        t.index ["SubjectID"], name: "SubjectKit", using: :btree
      end

      create_table "lkpsampletype", primary_key: "RepoID", id: :string, limit: 10, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
        t.string  "Repository", limit: 50
        t.integer "Seq"
        t.index ["RepoID"], name: "RepoID", using: :btree
      end

      create_table "lkpsource", primary_key: "Seq", id: :integer, limit: 2, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
        t.string "SourceType", limit: 50
      end

      create_table "picklist", primary_key: "PickListID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
        t.integer "SampleRequestID"
        t.integer "VialGroupID"
        t.string  "VialGroupKey",        limit: 25
        t.integer "VialID"
        t.integer "VialDistID"
        t.boolean "Include",                        null: false
        t.float   "Amount",              limit: 53
        t.float   "CurrentAmount",       limit: 53
        t.date    "DateIsolated"
        t.float   "Conc",                limit: 53
        t.float   "ShipConc",            limit: 53
        t.string  "Source",              limit: 25
        t.string  "Location",            limit: 30
        t.integer "samplerequestid_old"
        t.index ["SampleRequestID", "VialID"], name: "VialGroupID", unique: true, using: :btree
        t.index ["VialDistID"], name: "VialDistID", using: :btree
        t.index ["VialGroupID"], name: "VialGroupID1", using: :btree
        t.index ["samplerequestid_old"], name: "ixoldsamplerequestid", using: :btree
      end

      create_table "requestlist", primary_key: "RequestListID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
        t.string  "RequestListName", limit: 500
        t.integer "project_id"
        t.index ["RequestListID"], name: "RequestListID", using: :btree
      end

      create_table "requestlistdetail", primary_key: "RequestListDetailID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
        t.integer "RequestListID"
        t.integer "SubjectID"
        t.string  "Pedigree",      limit: 50
        t.string  "Individual",    limit: 50
        t.string  "SampleType",    limit: 20
        t.float   "Quantity",      limit: 53
        t.string  "Status",        limit: 50
        t.index ["RequestListID"], name: "RequestListID", using: :btree
        t.index ["SubjectID"], name: "ixsubjectid", using: :btree
      end

      create_table "samplerequest", primary_key: "SampleRequestID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
        t.integer  "RequestListID"
        t.integer  "CollaboratorID"
        t.datetime "OrderDate"
        t.string   "Status",         limit: 10
        t.string   "Description",    limit: 300
        t.text     "Comments",       limit: 4294967295
        t.integer  "project_id"
        t.index ["CollaboratorID"], name: "CollobratorID", using: :btree
        t.index ["RequestListID"], name: "ixreqlist", using: :btree
        t.index ["SampleRequestID"], name: "VialOrderID", using: :btree
      end

      create_table "studygroup", primary_key: "StudyGroupID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
        t.integer  "SubjectID"
        t.string   "StudyGroup",     limit: 100
        t.datetime "StudyGroupDate"
        t.string   "Comment",        limit: 50
        t.datetime "Updated"
        t.index ["StudyGroup"], name: "StudyGroup", using: :btree
      end

      create_table "studygroupmaster", primary_key: "StudyGroup", id: :string, limit: 20, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
      end

      create_table "subject_lab", primary_key: "subjectid", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
        t.string "Patient",       limit: 10
        t.string "ExcludeFlag",   limit: 2
        t.text   "ExcludeReason", limit: 65535
        t.string "DxCode",        limit: 10
        t.string "Drug",          limit: 20
        t.string "center",        limit: 10
        t.index ["DxCode"], name: "DxCode", using: :btree
      end

      create_table "tblrepository", primary_key: "RepoID", id: :string, limit: 3, default: "", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
        t.string "Repository", limit: 50
        t.string "Conc",       limit: 10
        t.string "Unit",       limit: 10
        t.index ["RepoID"], name: "RepoID", using: :btree
      end

      create_table "v_stool_broth", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
        t.integer "VialGroupID",          limit: 1, null: false
        t.integer "SubjectID",            limit: 1, null: false
        t.integer "Stool_Broth_Isolated", limit: 1, null: false
        t.integer "Stool_Broth_Comments", limit: 1, null: false
      end

      create_table "v_stool_dry", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
        t.integer "VialGroupID",        limit: 1, null: false
        t.integer "SubjectID",          limit: 1, null: false
        t.integer "Stool_Dry_Isolated", limit: 1, null: false
        t.integer "Stool_Dry_Comments", limit: 1, null: false
      end

      create_table "v_stool_wet", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
        t.integer "VialGroupID",        limit: 1, null: false
        t.integer "SubjectID",          limit: 1, null: false
        t.integer "Stool_Wet_Isolated", limit: 1, null: false
        t.integer "Stool_Wet_Comments", limit: 1, null: false
      end

      create_table "vial", primary_key: "VialID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
        t.integer "VialGroupID"
        t.decimal "OriginalAmount",            precision: 8, scale: 2
        t.decimal "CurrentAmount",             precision: 8, scale: 2
        t.string  "Location",       limit: 30
        t.boolean "Discard",                                           default: false, null: false
        t.decimal "ReqAmount",                 precision: 8, scale: 2
        t.decimal "Conc",                      precision: 8, scale: 2
        t.integer "barcode"
        t.index ["VialGroupID"], name: "VialGroupID", using: :btree
      end

      create_table "vialdist", primary_key: "VialDistID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
        t.integer "VialID"
        t.float   "Amount",          limit: 53
        t.float   "ShipConc",        limit: 53
        t.integer "SampleRequestID"
        t.string  "Status",          limit: 20
        t.index ["SampleRequestID"], name: "SampleRequestID", using: :btree
        t.index ["SampleRequestID"], name: "SampleRequestVialDist", using: :btree
        t.index ["VialID"], name: "VialVialDist", using: :btree
      end

      create_table "vialgroup", primary_key: "VialGroupID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
        t.integer "SubjectID"
        t.string  "VialGroupKey",    limit: 25
        t.string  "VialGroupType",   limit: 3
        t.date    "DateIsolated"
        t.string  "BoxNum",          limit: 6
        t.float   "Conc",            limit: 53
        t.string  "Source_old",      limit: 3
        t.string  "Source",          limit: 25
        t.string  "Comments"
        t.string  "Status",          limit: 10
        t.string  "StorageLocation", limit: 30
        t.date    "DateDrawn"
        t.date    "DateReceived"
        t.string  "Study",           limit: 50
        t.index ["SubjectID", "VialGroupType", "DateIsolated", "BoxNum", "Conc", "VialGroupKey"], name: "VialDupKey", unique: true, using: :btree
        t.index ["SubjectID"], name: "SubjectID", using: :btree
        t.index ["VialGroupKey"], name: "VialGroupKey", using: :btree
        t.index ["VialGroupType"], name: "ixvgtype", using: :btree
      end

      create_table "vialprint", primary_key: "VialPrintID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
        t.integer "VialID"
        t.integer "VialGroupID"
        t.decimal "Conc",        precision: 8, scale: 2
        t.index ["VialGroupID"], name: "SLH_ID", using: :btree
        t.index ["VialGroupID"], name: "VialGroupVialPrint", using: :btree
        t.index ["VialID"], name: "VialID", using: :btree
        t.index ["VialPrintID"], name: "VialPrintID", using: :btree
      end
    end
end
