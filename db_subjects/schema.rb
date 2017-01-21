# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 0) do

  create_table "_alias_search", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "subjectid",                   default: 0, null: false
    t.string  "name",       limit: 312
    t.text    "alias_list", limit: 16777215
  end

  create_table "_comorbidities", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "subjectid",                                         null: false
    t.text    "self_comorbidities",   limit: 65535,                             collation: "utf8_general_ci"
    t.decimal "self_AI_count",                      precision: 25
    t.text    "family_comorbidities", limit: 65535,                             collation: "utf8_general_ci"
    t.decimal "family_AI_count",                    precision: 25
    t.decimal "family_MS_cases",                    precision: 23
  end

  create_table "_families", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string  "Source",                                          limit: 100,                  default: "", null: false
    t.string  "pedigree",                                        limit: 50
    t.string  "family_type",                                     limit: 30
    t.bigint  "member_count",                                                                 default: 0,  null: false
    t.decimal "affected_count",                                                precision: 23
    t.decimal "unaffected_count",                                              precision: 23
    t.decimal "unknown_count",                                                 precision: 23
    t.decimal "affected_biospecimen_count",                                    precision: 23
    t.decimal "unaffected_biospecimen_count",                                  precision: 23
    t.decimal "unknown_biospecimen_count",                                     precision: 23
    t.decimal "affected_biospecimen_count_proband_generation",                 precision: 23
    t.decimal "affected_biospecimen_count_parent_generation",                  precision: 23
    t.decimal "affected_biospecimen_count_offspring_generation",               precision: 23
    t.integer "affected_generations_available"
    t.text    "affected_individuals",                            limit: 65535
    t.text    "unaffected_individuals",                          limit: 65535
    t.text    "unknown_individuals",                             limit: 65535
    t.text    "affected_individuals_biospecimen",                limit: 65535
    t.text    "unaffected_individuals_biospecimen",              limit: 65535
    t.text    "unknown_individuals_biospecimen",                 limit: 65535
    t.string  "proband_individual",                              limit: 30
    t.integer "proband_subjectid"
    t.index ["pedigree"], name: "ixped", using: :btree
  end

  create_table "_querytable", primary_key: "SubjectID", id: :integer, default: 0, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string  "Pedigree",             limit: 100, default: ""
    t.string  "Individual",           limit: 100
    t.string  "EPICID",               limit: 10,  default: ""
    t.string  "Center",               limit: 50
    t.string  "Participation_Status", limit: 100
    t.string  "Gender",               limit: 10
    t.string  "Ethnicstring",         limit: 20
    t.string  "Ethniccomment"
    t.boolean "Caucasian"
    t.boolean "AA"
    t.boolean "Hispanic"
    t.boolean "Asian"
    t.boolean "Native"
    t.boolean "SpecialEthn"
    t.boolean "OtherEthn"
    t.integer "YOB"
    t.string  "BirthCountry",         limit: 150,              collation: "utf8_general_ci"
    t.boolean "Twin"
    t.string  "TwinType",             limit: 100
    t.boolean "FamilyMShistory"
    t.string  "Disease",              limit: 150
    t.string  "TreatmentStatus",      limit: 50
    t.string  "PhenotypeDatasource",  limit: 150
    t.string  "AAE",                  limit: 10
    t.integer "AOO",                  limit: 1
    t.string  "DiseaseCourse",        limit: 20
    t.integer "DiseaseDuration"
    t.date    "LatestExamDate"
    t.string  "EDSS",                 limit: 10
    t.string  "MSSS",                 limit: 10
    t.string  "MSBase_Date",          limit: 12
    t.index ["Individual"], name: "ixind", using: :btree
    t.index ["Pedigree"], name: "ixped", using: :btree
  end

  create_table "aliases", primary_key: "alias_id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "subjectid",                           null: false
    t.string  "alias_term1", limit: 50, default: "", null: false
    t.string  "alias_term2", limit: 50
    t.string  "alias_type",  limit: 50, default: "", null: false
    t.integer "remove",      limit: 1,  default: 0
    t.index ["alias_term1"], name: "alias_term1_2", using: :btree
    t.index ["alias_term2"], name: "alias_term2", using: :btree
    t.index ["alias_type"], name: "alias_type", using: :btree
    t.index ["subjectid"], name: "ixsubjectid", using: :btree
  end

  create_table "applog", primary_key: "applogid", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "item_type",       limit: 50
    t.text     "description",     limit: 16777215
    t.string   "module",          limit: 100
    t.string   "work_type",       limit: 50
    t.string   "priority",        limit: 20
    t.string   "status",          limit: 30
    t.datetime "date_updated",                     default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.date     "date_expected"
    t.date     "date_finished"
    t.string   "release_version", limit: 30
    t.integer  "submitter"
  end

  create_table "centers", primary_key: "centerid", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string  "center",                    limit: 50,                     null: false
    t.string  "name",                      limit: 100,   default: "",     null: false
    t.boolean "actively_enrolling"
    t.binary  "enrollment",                limit: 1,     default: "b'0'", null: false
    t.binary  "subject_processing",        limit: 1,     default: "b'0'", null: false
    t.binary  "sample_consumer",           limit: 1,     default: "b'0'", null: false
    t.binary  "facility",                  limit: 1,     default: "b'0'", null: false
    t.binary  "research_collaborator",     limit: 1,     default: "b'0'", null: false
    t.string  "comments",                  limit: 500,   default: "",     null: false
    t.string  "center_status",             limit: 100
    t.string  "primary_collection_region", limit: 200
    t.string  "primary_contact",           limit: 100
    t.string  "phone",                     limit: 20
    t.string  "email",                     limit: 100
    t.string  "website",                   limit: 200
    t.string  "address",                   limit: 300
    t.string  "city",                      limit: 100
    t.string  "state",                     limit: 50
    t.string  "country",                   limit: 50
    t.text    "description",               limit: 65535
    t.text    "identifier_formats",        limit: 65535
    t.index ["center"], name: "centername", using: :btree
  end

  create_table "cohort_subject", primary_key: "CohortSubjectID", force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer  "cohort_id",                                                                null: false
    t.integer  "subjectid",                           default: 0,                          null: false
    t.string   "CohortInclusionComments", limit: 300
    t.datetime "updated",                             default: -> { "CURRENT_TIMESTAMP" }
    t.index ["cohort_id"], name: "cohort_id", using: :btree
    t.index ["subjectid"], name: "subject_master_id", using: :btree
  end

  create_table "cohorts", primary_key: "cohort_id", force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string   "category",         limit: 200
    t.string   "title",            limit: 200
    t.datetime "updated",                        default: -> { "CURRENT_TIMESTAMP" }
    t.integer  "creator"
    t.string   "description",      limit: 500
    t.text     "definition",       limit: 65535
    t.string   "cohorts_db_table", limit: 100
    t.string   "source_file_url",  limit: 500
    t.string   "pdf_url",          limit: 500
    t.text     "query",            limit: 65535
    t.index ["category", "title"], name: "category", unique: true, using: :btree
    t.index ["title"], name: "title", using: :btree
  end

  create_table "comments", primary_key: "CommentID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "SourceField",   limit: 100
    t.integer  "SourceFieldID"
    t.string   "SourceName",    limit: 100
    t.boolean  "Confidential"
    t.text     "Comment",       limit: 16777215
    t.string   "Display",       limit: 100
    t.datetime "Updated",                        default: -> { "CURRENT_TIMESTAMP" }
    t.integer  "UserID"
    t.index ["SourceField", "SourceFieldID", "Display"], name: "ixcom", using: :btree
  end

  create_table "comorbidity", primary_key: "CoMorbidityID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "SubjectID",                     null: false
    t.string  "CoMorbidCondition", limit: 100
    t.string  "Relative",          limit: 50
    t.integer "RelativeNum",       limit: 2
    t.string  "DataSource",        limit: 10
    t.boolean "Autoimmune",                    null: false
    t.index ["Relative"], name: "ixrel", using: :btree
    t.index ["RelativeNum"], name: "RelativeNum", using: :btree
    t.index ["SubjectID"], name: "SubjectID", using: :btree
  end

  create_table "demographics", primary_key: "subjectid", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string  "Gender",                      limit: 10
    t.string  "Handedness",                  limit: 3
    t.integer "FullSibsOrder",               limit: 2
    t.integer "FullSibsCount",               limit: 2
    t.integer "AllSibsOrder",                limit: 2
    t.integer "AllSibsCount",                limit: 2
    t.boolean "Twin"
    t.string  "TwinType",                    limit: 100
    t.text    "SignificantHistory",          limit: 65535
    t.boolean "FamilyHxOfMS"
    t.text    "FamilyHxDesc",                limit: 65535
    t.integer "NIHEthnicGroup",              limit: 2
    t.string  "NIHHispanic",                 limit: 2
    t.string  "EthnicString",                limit: 20
    t.string  "MaEthnicString",              limit: 20
    t.string  "PaEthnicString",              limit: 20
    t.string  "MaternalGrandmaEthnicString", limit: 20
    t.string  "MaternalGrandpaEthnicString", limit: 20
    t.string  "PaternalGrandmaEthnicString", limit: 20
    t.string  "PaternalGrandpaEthnicString", limit: 20
    t.string  "EthnicComment"
    t.integer "AA_flag",                     limit: 1
    t.integer "Caucasian_flag",              limit: 1
    t.integer "Hispanic_flag",               limit: 1
    t.integer "AsianPacific_flag",           limit: 1
    t.integer "NativeAmerican_flag",         limit: 1
    t.integer "SpecialPops_flag",            limit: 1
    t.integer "Other_flag",                  limit: 1
  end

  create_table "epic_subjects_archive", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "subject_master_id"
    t.integer "SubjectID",                                default: 0, null: false
    t.integer "Pedigree"
    t.string  "Individual",            limit: 10,                                  collation: "utf8_general_ci"
    t.string  "EthnicComment",         limit: 50,                                  collation: "utf8_general_ci"
    t.integer "Deceased",              limit: 1
    t.string  "CauseOfDeath",          limit: 50,                                  collation: "utf8_general_ci"
    t.string  "NIHEthnicGroup",        limit: 7,                                   collation: "utf8_general_ci"
    t.string  "NIHHispanic",           limit: 1,                                   collation: "utf8_general_ci"
    t.string  "Gender",                limit: 1,                                   collation: "utf8_general_ci"
    t.boolean "Twin",                                                 null: false
    t.string  "TwinType",              limit: 20,                                  collation: "utf8_general_ci"
    t.text    "SignificantHistory",    limit: 4294967295,                          collation: "utf8_general_ci"
    t.boolean "MSStatusDoNotDisclose",                                null: false
    t.string  "TDT",                   limit: 1,                                   collation: "utf8_general_ci"
    t.boolean "FamilyHxOfMS",                                         null: false
    t.string  "FamilyHxDesc",          limit: 50,                                  collation: "utf8_general_ci"
    t.boolean "DoNotContact",                                         null: false
    t.string  "DoNotContactStatus",    limit: 50,                                  collation: "utf8_general_ci"
    t.boolean "Exclude"
    t.string  "ExcludeReason",                                                     collation: "utf8_general_ci"
    t.string  "BirthCity",             limit: 20,                                  collation: "utf8_general_ci"
    t.string  "BirthState",            limit: 20,                                  collation: "utf8_general_ci"
    t.string  "BirthCountry",          limit: 20,                                  collation: "utf8_general_ci"
    t.string  "MotherBirthCity",       limit: 20,                                  collation: "utf8_general_ci"
    t.string  "MotherBirthState",      limit: 20,                                  collation: "utf8_general_ci"
    t.string  "MotherBirthCountry",    limit: 20,                                  collation: "utf8_general_ci"
    t.string  "FatherBirthCity",       limit: 20,                                  collation: "utf8_general_ci"
    t.string  "FatherBirthState",      limit: 20,                                  collation: "utf8_general_ci"
    t.string  "FatherBirthCountry",    limit: 20,                                  collation: "utf8_general_ci"
    t.text    "Comments",              limit: 4294967295,                          collation: "utf8_general_ci"
    t.string  "PropFamily",            limit: 50,                                  collation: "utf8_general_ci"
    t.integer "NeuroMDID"
    t.string  "RecordIdentifier",      limit: 50,                                  collation: "utf8_general_ci"
    t.text    "AttackHistoryComment",  limit: 4294967295,                          collation: "utf8_general_ci"
    t.boolean "Withdrawn"
    t.string  "WithdrawnReason",                                                   collation: "utf8_general_ci"
    t.string  "WithdrawnStatus",       limit: 80,                                  collation: "utf8_general_ci"
    t.boolean "CreatinineNeeded"
    t.date    "InitialChartDate"
    t.boolean "NotUCSFPatient"
    t.date    "NotUCSFPatientDate"
    t.string  "CaseControl",           limit: 50,                                  collation: "utf8_general_ci"
    t.string  "msID",                  limit: 20,                                  collation: "utf8_general_ci"
    t.string  "EPICProject",           limit: 20,                                  collation: "utf8_general_ci"
    t.index ["subject_master_id"], name: "subject_master_id", using: :btree
  end

  create_table "esubs", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=utf8" do |t|
    t.integer "subjectid"
    t.string  "Edinburgh_Alias",    limit: 11
    t.string  "iMSMS_Alias_term1",  limit: 20
    t.string  "iMSMS_Alias_term2",  limit: 4
    t.string  "iMSMS_Site_Barcode", limit: 30
  end

  create_table "ethniccode", primary_key: "EthnicCode", id: :string, limit: 2, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "EthnicDescription"
  end

  create_table "family", primary_key: "FamilyID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string  "Pedigree",            limit: 20
    t.string  "Family_Type",         limit: 20
    t.string  "Primary_Ethnicity",   limit: 100
    t.integer "Total_Members_Known", limit: 2
    t.integer "Total_Affected",      limit: 2
    t.integer "Total_Unaffected",    limit: 2
    t.integer "Total_Unknown",       limit: 2
    t.integer "Total_Sampled",       limit: 2
    t.integer "Sibling_Pairs",       limit: 2
    t.integer "Quartets",            limit: 1
    t.integer "Trios",               limit: 1
    t.integer "Collection_Center"
    t.text    "Comments",            limit: 65535
    t.index ["Pedigree"], name: "ixpedigree", using: :btree
  end

  create_table "files", primary_key: "FileID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "ParentItemClass", limit: 100
    t.integer  "ParentItemID"
    t.string   "Filepath"
    t.string   "Directory"
    t.string   "Basename"
    t.string   "Filename"
    t.string   "Extension",       limit: 10
    t.integer  "Size"
    t.datetime "Modified"
    t.text     "Description",     limit: 65535
    t.datetime "UploadDate",                    default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.integer  "UploadUserID"
    t.index ["ParentItemClass"], name: "ParentItemClass", using: :btree
    t.index ["ParentItemID"], name: "ParentItemID", using: :btree
  end

  create_table "msgen2_subjects_archive", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "subject_master_id"
    t.integer "SubjectID",                                 default: 0, null: false
    t.integer "Pedigree"
    t.string  "Individual",                                                         collation: "utf8_general_ci"
    t.string  "EthnicComment",                                                      collation: "utf8_general_ci"
    t.integer "Deceased",               limit: 1
    t.string  "CauseOfDeath",                                                       collation: "utf8_general_ci"
    t.string  "NIHEthnicGroup",                                                     collation: "utf8_general_ci"
    t.string  "NIHHispanic",                                                        collation: "utf8_general_ci"
    t.boolean "InAnalysis",                                            null: false
    t.float   "CPNCID",                 limit: 53
    t.string  "DxStatus",                                                           collation: "utf8_general_ci"
    t.string  "DxStatusComment",                                                    collation: "utf8_general_ci"
    t.integer "ReportedMS",             limit: 1
    t.string  "Gender",                                                             collation: "utf8_general_ci"
    t.string  "FullSibsOrder",                                                      collation: "utf8_general_ci"
    t.string  "FullSibsCount",                                                      collation: "utf8_general_ci"
    t.string  "AllSibsOrder",                                                       collation: "utf8_general_ci"
    t.string  "AllSibsCount",                                                       collation: "utf8_general_ci"
    t.boolean "Twin",                                                  null: false
    t.string  "TwinType",                                                           collation: "utf8_general_ci"
    t.string  "SignificantHistory",                                                 collation: "utf8_general_ci"
    t.integer "MSStatusDoNotDisclose",  limit: 1
    t.integer "DiseaseStatusChange",    limit: 1
    t.string  "TDT",                                                                collation: "utf8_general_ci"
    t.string  "SubjectType",                                                        collation: "utf8_general_ci"
    t.boolean "FamilyHxOfMS",                                          null: false
    t.string  "FamilyHxDesc",                                                       collation: "utf8_general_ci"
    t.boolean "DoNotContact",                                          null: false
    t.string  "DoNotContactStatus",                                                 collation: "utf8_general_ci"
    t.integer "Exclude",                limit: 1
    t.string  "ExcludeReason",                                                      collation: "utf8_general_ci"
    t.string  "BirthCity",                                                          collation: "utf8_general_ci"
    t.string  "BirthState",                                                         collation: "utf8_general_ci"
    t.string  "BirthCountry",                                                       collation: "utf8_general_ci"
    t.string  "MotherBirthCity",                                                    collation: "utf8_general_ci"
    t.string  "MotherBirthState",                                                   collation: "utf8_general_ci"
    t.string  "MotherBirthCountry",                                                 collation: "utf8_general_ci"
    t.string  "FatherBirthCity",                                                    collation: "utf8_general_ci"
    t.string  "FatherBirthState",                                                   collation: "utf8_general_ci"
    t.string  "FatherBirthCountry",                                                 collation: "utf8_general_ci"
    t.text    "Comments",               limit: 4294967295,                          collation: "utf8_general_ci"
    t.string  "SLHID",                                                              collation: "utf8_general_ci"
    t.integer "FIFReceived",            limit: 1
    t.date    "FIFDate"
    t.integer "ReleaseOfMedRecs",       limit: 1
    t.integer "MedicalRecordsReceived", limit: 1
    t.string  "PropFamily",                                                         collation: "utf8_general_ci"
    t.float   "NeuroMDID",              limit: 53
    t.string  "AffectationStatus",      limit: 100,                                 collation: "utf8_general_ci"
    t.index ["subject_master_id"], name: "subject_master_id", using: :btree
  end

  create_table "msgenlabprod_subjects_archive", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "subject_master_id"
    t.integer "SubjectID",                            default: 0, null: false
    t.string  "Pedigree",          limit: 50,                                  collation: "utf8_general_ci"
    t.string  "Individual",        limit: 50,                                  collation: "utf8_general_ci"
    t.string  "SLH_ID",            limit: 50,                                  collation: "utf8_general_ci"
    t.string  "PedNum",            limit: 50,                                  collation: "utf8_general_ci"
    t.string  "Patient",           limit: 10,                                  collation: "utf8_general_ci"
    t.string  "FamilyName",        limit: 15,                                  collation: "utf8_general_ci"
    t.string  "LastName",          limit: 30,                                  collation: "utf8_general_ci"
    t.string  "FirstName",         limit: 20,                                  collation: "utf8_general_ci"
    t.string  "Initials",          limit: 3,                                   collation: "utf8_general_ci"
    t.string  "Ethnicity",         limit: 10,                                  collation: "utf8_general_ci"
    t.text    "Comment",           limit: 4294967295,                          collation: "utf8_general_ci"
    t.string  "ExcludeFlag",       limit: 2,                                   collation: "utf8_general_ci"
    t.string  "ExcludeReason",     limit: 50,                                  collation: "utf8_general_ci"
    t.string  "FamilyHistory",     limit: 10,                                  collation: "utf8_general_ci"
    t.string  "DxCode",            limit: 10,                                  collation: "utf8_general_ci"
    t.string  "Drug",              limit: 20,                                  collation: "utf8_general_ci"
    t.string  "center",            limit: 10,                                  collation: "utf8_general_ci"
    t.index ["subject_master_id"], name: "subject_master_id", using: :btree
  end

  create_table "neuromd", primary_key: "NeuroMDID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string  "NeuroMDFName",   limit: 30, collation: "utf8_general_ci"
    t.string  "NeuroMDLName",   limit: 50, collation: "utf8_general_ci"
    t.string  "NeuroMDOrg",     limit: 50, collation: "utf8_general_ci"
    t.string  "NeuroMDStreet",  limit: 50, collation: "utf8_general_ci"
    t.string  "NeuroMDCity",    limit: 50, collation: "utf8_general_ci"
    t.string  "NeuroMDState",   limit: 2,  collation: "utf8_general_ci"
    t.string  "NeuroMDZip",     limit: 9,  collation: "utf8_general_ci"
    t.string  "NeuroMDphone",   limit: 10, collation: "utf8_general_ci"
    t.string  "NeuroMDFax",     limit: 10, collation: "utf8_general_ci"
    t.string  "NeuroMDMRphone", limit: 10, collation: "utf8_general_ci"
    t.string  "NeuroMDMRfax",   limit: 10, collation: "utf8_general_ci"
    t.integer "oldid"
    t.boolean "EDSS_Assessor"
    t.index ["NeuroMDFName", "NeuroMDLName", "NeuroMDOrg"], name: "ixneuromd", unique: true, using: :btree
    t.index ["NeuroMDLName"], name: "NeuroMDLName", using: :btree
  end

  create_table "phenotypes", primary_key: "subject_master_id", id: :integer, default: 0, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "PhenoDataSource",     limit: 50
    t.string   "pedigree",            limit: 30
    t.string   "individual",          limit: 30
    t.string   "disease",             limit: 100
    t.string   "gender",              limit: 10
    t.string   "ethnicstring",        limit: 20
    t.string   "race",                limit: 100
    t.string   "ethniccomment",       limit: 160
    t.integer  "deceased",            limit: 1
    t.date     "DOB"
    t.integer  "YearOfBirth"
    t.string   "BirthState",          limit: 20
    t.string   "BirthCountry",        limit: 40
    t.integer  "twin",                limit: 1
    t.string   "TwinType",            limit: 50
    t.integer  "familyhxofms",        limit: 1
    t.string   "DiseaseCourse",       limit: 10
    t.integer  "AgeOfOnset",          limit: 2
    t.float    "DiseaseDuration",     limit: 24
    t.float    "AgeAtExam",           limit: 24
    t.string   "EDSS",                limit: 10
    t.float    "ActualEDSS",          limit: 24
    t.float    "MSSS",                limit: 24
    t.datetime "updated",                         default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.date     "BaselineExamDate"
    t.integer  "DxYear"
    t.integer  "OnsetYear"
    t.integer  "AA_flag",             limit: 1
    t.integer  "Caucasian_flag",      limit: 1
    t.integer  "Hispanic_flag",       limit: 1
    t.integer  "AsianPacific_flag",   limit: 1
    t.integer  "NativeAmerican_flag", limit: 1
    t.integer  "SpecialPops_flag",    limit: 1
    t.integer  "Other_flag",          limit: 1
    t.index ["pedigree"], name: "ixped", using: :btree
  end

  create_table "phi", primary_key: "SubjectID", id: :integer, default: 0, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string  "FirstName",                   limit: 50,  collation: "utf8_general_ci"
    t.string  "LastName",                    limit: 50,  collation: "utf8_general_ci"
    t.string  "MiddleName",                  limit: 50,  collation: "utf8_general_ci"
    t.string  "Suffix",                      limit: 5,   collation: "utf8_general_ci"
    t.string  "AltLastname",                 limit: 50,  collation: "utf8_general_ci"
    t.string  "Nickname",                    limit: 100, collation: "utf8_general_ci"
    t.string  "Initials",                    limit: 20,  collation: "utf8_general_ci"
    t.string  "Address",                     limit: 50,  collation: "utf8_general_ci"
    t.string  "Address2",                    limit: 50,  collation: "utf8_general_ci"
    t.string  "City",                        limit: 50,  collation: "utf8_general_ci"
    t.string  "StateOrProvince",             limit: 20,  collation: "utf8_general_ci"
    t.string  "PostalCode",                  limit: 20,  collation: "utf8_general_ci"
    t.string  "Country",                     limit: 20,  collation: "utf8_general_ci"
    t.string  "ShipAddress",                 limit: 50,  collation: "utf8_general_ci"
    t.string  "ShipAddress2",                limit: 50,  collation: "utf8_general_ci"
    t.string  "ShipCity",                    limit: 50,  collation: "utf8_general_ci"
    t.string  "ShipStateorProvince",         limit: 20,  collation: "utf8_general_ci"
    t.string  "ShipPostalCode",              limit: 20,  collation: "utf8_general_ci"
    t.string  "ShipCountry",                 limit: 20,  collation: "utf8_general_ci"
    t.string  "PrimaryPhone",                limit: 30,  collation: "utf8_general_ci"
    t.string  "PrimaryPhoneType",            limit: 10,  collation: "utf8_general_ci"
    t.string  "Alt1Phone",                   limit: 30,  collation: "utf8_general_ci"
    t.string  "Alt1PhoneType",               limit: 10,  collation: "utf8_general_ci"
    t.string  "Alt2Phone",                   limit: 30,  collation: "utf8_general_ci"
    t.string  "Alt2PhoneType",               limit: 30,  collation: "utf8_general_ci"
    t.string  "Alt3Phone",                   limit: 30,  collation: "utf8_general_ci"
    t.string  "Alt3PhoneType",               limit: 10,  collation: "utf8_general_ci"
    t.string  "EmailAddress",                limit: 100, collation: "utf8_general_ci"
    t.date    "DOB"
    t.boolean "DOBNotOnFile"
    t.boolean "Deceased"
    t.string  "CauseOfDeath",                            collation: "utf8_general_ci"
    t.string  "DateofDeath",                 limit: 50,  collation: "utf8_general_ci"
    t.string  "BirthCity",                               collation: "utf8_general_ci"
    t.string  "BirthState",                              collation: "utf8_general_ci"
    t.string  "BirthCountry",                            collation: "utf8_general_ci"
    t.string  "MotherBirthCity",                         collation: "utf8_general_ci"
    t.string  "MotherBirthState",                        collation: "utf8_general_ci"
    t.string  "MotherBirthCountry",                      collation: "utf8_general_ci"
    t.string  "FatherBirthCity",                         collation: "utf8_general_ci"
    t.string  "FatherBirthState",                        collation: "utf8_general_ci"
    t.string  "FatherBirthCountry",                      collation: "utf8_general_ci"
    t.boolean "Adopted"
    t.string  "MaternalGrandmaBirthCity"
    t.string  "MaternalGrandmaBirthState"
    t.string  "MaternalGrandmaBirthCountry"
    t.string  "MaternalGrandpaBirthCity"
    t.string  "MaternalGrandpaBirthState"
    t.string  "MaternalGrandpaBirthCountry"
    t.string  "PaternalGrandmaBirthCity"
    t.string  "PaternalGrandmaBirthState"
    t.string  "PaternalGrandmaBirthCountry"
    t.string  "PaternalGrandpaBirthCity"
    t.string  "PaternalGrandpaBirthState"
    t.string  "PaternalGrandpaBirthCountry"
    t.index ["EmailAddress"], name: "ixemail", using: :btree
  end

  create_table "project_item", primary_key: "item_id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "project_id",                                                               null: false
    t.string   "item_type",          limit: 50
    t.string   "item_table_id",      limit: 50,       default: "",                         null: false
    t.string   "item_path",          limit: 200
    t.text     "item_display_query", limit: 16777215
    t.text     "description",        limit: 16777215
    t.datetime "updated",                             default: -> { "CURRENT_TIMESTAMP" }, null: false
  end

  create_table "projects", primary_key: "project_id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "parent_project_id"
    t.string   "project_name",      limit: 200
    t.string   "project_type",      limit: 200
    t.string   "principal",         limit: 200
    t.string   "project_status",    limit: 50
    t.date     "start_date"
    t.date     "end_date"
    t.text     "description",       limit: 16777215
    t.datetime "updated",                            default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.integer  "samplerequestid"
    t.index ["parent_project_id"], name: "ixparent", using: :btree
  end

  create_table "relationship", primary_key: "RelationshipID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "FromSubjectID",               null: false
    t.integer "ToSubjectID",                 null: false
    t.string  "RelationshipType", limit: 20
    t.string  "Status",           limit: 50
    t.index ["FromSubjectID"], name: "FromSubjectID", using: :btree
    t.index ["ToSubjectID", "FromSubjectID"], name: "FromTo", unique: true, using: :btree
  end

  create_table "relationship_archive", primary_key: "RelationshipID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "FromSubjectID",            null: false
    t.integer "ToSubjectID",              null: false
    t.string  "RelType",       limit: 20, null: false
    t.index ["FromSubjectID"], name: "FromSubjectID", using: :btree
    t.index ["ToSubjectID", "FromSubjectID"], name: "FromTo", unique: true, using: :btree
  end

  create_table "reltype", primary_key: "RelTypeID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "RelType",    limit: 10
    t.string "AltRelType", limit: 10
  end

  create_table "reports", primary_key: "ReportID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string  "Title",              limit: 200
    t.string  "Study",              limit: 100
    t.integer "StudyID"
    t.string  "ReportType",         limit: 50
    t.string  "DisplayType",        limit: 50
    t.text    "Description",        limit: 16777215
    t.text    "Definition",         limit: 65535
    t.text    "DownloadDefinition", limit: 65535,    collation: "utf8_general_ci"
  end

  create_table "studies", primary_key: "StudyID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string  "Name"
    t.string  "Type",        limit: 50
    t.boolean "Active",                    default: false
    t.string  "Status",      limit: 30
    t.boolean "Enrollable"
    t.date    "Started"
    t.date    "Ended"
    t.string  "PI",          limit: 30
    t.string  "Region",      limit: 100
    t.text    "Description", limit: 65535
  end

  create_table "study_center", primary_key: ["StudyID", "CenterID"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "StudyID",                   default: 0, null: false
    t.integer "CenterID",                  default: 0, null: false
    t.string  "AliasFormat"
    t.text    "Comments",    limit: 65535
  end

  create_table "study_study", primary_key: ["ChildStudyID", "ParentStudyID"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "ChildStudyID",                default: 0, null: false
    t.integer "ParentStudyID",               default: 0, null: false
    t.text    "Comments",      limit: 65535
  end

  create_table "study_subject", primary_key: "StudySubjectID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "StudyID",                     null: false
    t.integer "SubjectID",                   null: false
    t.string  "EnrollmentStatus", limit: 50
    t.string  "Comments"
    t.index ["StudyID", "SubjectID"], name: "ixstudysub", unique: true, using: :btree
    t.index ["SubjectID"], name: "SubjectID", using: :btree
  end

  create_table "subject", primary_key: "SubjectID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "data_source",           limit: 100
    t.string   "Center",                limit: 100
    t.string   "Pedigree",              limit: 50
    t.string   "Individual",            limit: 50
    t.integer  "FatherID"
    t.integer  "MotherID"
    t.string   "AffectionStatus",       limit: 100
    t.boolean  "DiseaseStatusFlag"
    t.string   "DiseaseStatusComments"
    t.float    "NeuroMDID",             limit: 53
    t.integer  "MSStatusDoNotDisclose", limit: 1
    t.boolean  "DoNotContact"
    t.string   "DoNotContactStatus"
    t.string   "EmailNewsletter",       limit: 10
    t.datetime "Updated",                           default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "DateAdded"
    t.string   "Participation_Status",  limit: 30
    t.integer  "FamilyID"
    t.boolean  "Proband"
    t.string   "ProgenyRelToProband",   limit: 100
    t.boolean  "DegreeConsanguinity"
    t.string   "NMSS",                  limit: 100
    t.index ["Center"], name: "Center", using: :btree
    t.index ["DateAdded"], name: "DateAdded", using: :btree
    t.index ["Individual"], name: "ixind", using: :btree
    t.index ["Pedigree"], name: "ixped", using: :btree
  end

  create_table "subjects", primary_key: "subject_master_id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "source",               limit: 100
    t.string   "center",               limit: 100
    t.string   "pedigree",             limit: 30,  null: false
    t.string   "individual",           limit: 30,  null: false
    t.string   "subjecttype",          limit: 30
    t.integer  "msgen2"
    t.integer  "epic"
    t.integer  "biosample"
    t.integer  "imagen"
    t.string   "IllumGWAS",            limit: 20
    t.string   "imsgc",                limit: 20
    t.string   "affy6",                limit: 20
    t.string   "affy500",              limit: 20
    t.string   "affy133",              limit: 20
    t.string   "candidate",            limit: 20
    t.string   "HLA_typed",            limit: 10
    t.string   "imagen2",              limit: 6
    t.string   "comments",             limit: 500
    t.datetime "date_added"
    t.datetime "date_updated"
    t.string   "participation_status", limit: 100
    t.integer  "FatherID"
    t.integer  "MotherID"
    t.string   "familytype",           limit: 20
    t.integer  "proband",              limit: 1
    t.string   "progenyreltoproband",  limit: 100
    t.integer  "degreeconsanguinity",  limit: 1
    t.string   "family_type",          limit: 30
    t.string   "sib_type",             limit: 30
    t.index ["center"], name: "center", using: :btree
    t.index ["individual"], name: "individual", using: :btree
    t.index ["msgen2"], name: "msgen2", using: :btree
    t.index ["pedigree", "individual"], name: "ixpedind", using: :btree
    t.index ["pedigree"], name: "pedigree", using: :btree
  end

  create_table "users", primary_key: "UserID", unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "name",        limit: 60,  default: "", null: false
    t.string  "realname",    limit: 100
    t.string  "pass",        limit: 41
    t.string  "mail",        limit: 64
    t.integer "created",                 default: 0,  null: false
    t.integer "access",                  default: 0,  null: false
    t.integer "login",                   default: 0,  null: false
    t.string  "activate",    limit: 50
    t.string  "role",        limit: 20
    t.string  "permissions", limit: 200
    t.index ["access"], name: "access", using: :btree
    t.index ["created"], name: "created", using: :btree
    t.index ["mail"], name: "ixmail", unique: true, using: :btree
    t.index ["mail"], name: "mail", using: :btree
    t.index ["name"], name: "name", unique: true, using: :btree
  end

  create_table "v_1r01ns076492_01", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "subjectid",          limit: 1, null: false
    t.integer "center",             limit: 1, null: false
    t.integer "CenterName",         limit: 1, null: false
    t.integer "pedigree",           limit: 1, null: false
    t.integer "individual",         limit: 1, null: false
    t.integer "disease",            limit: 1, null: false
    t.integer "earliestsampledate", limit: 1, null: false
    t.integer "LatestSampleDate",   limit: 1, null: false
    t.integer "gender",             limit: 1, null: false
    t.integer "ethniccomment",      limit: 1, null: false
    t.integer "ethnicstring",       limit: 1, null: false
    t.integer "AA",                 limit: 1, null: false
    t.integer "Caucasian",          limit: 1, null: false
    t.integer "Native",             limit: 1, null: false
    t.integer "Asian",              limit: 1, null: false
    t.integer "Hispanic",           limit: 1, null: false
    t.integer "OtherEthn",          limit: 1, null: false
    t.integer "SpecialEthn",        limit: 1, null: false
    t.integer "NIHRace",            limit: 1, null: false
    t.integer "NIHHispanic",        limit: 1, null: false
  end

  create_table "v_elderms", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "SubjectID",            limit: 1, null: false
    t.integer "Pedigree",             limit: 1, null: false
    t.integer "Individual",           limit: 1, null: false
    t.integer "EPICID",               limit: 1, null: false
    t.integer "Center",               limit: 1, null: false
    t.integer "Participation_Status", limit: 1, null: false
    t.integer "Gender",               limit: 1, null: false
    t.integer "Ethnicstring",         limit: 1, null: false
    t.integer "Ethniccomment",        limit: 1, null: false
    t.integer "Caucasian",            limit: 1, null: false
    t.integer "AA",                   limit: 1, null: false
    t.integer "Hispanic",             limit: 1, null: false
    t.integer "Asian",                limit: 1, null: false
    t.integer "Native",               limit: 1, null: false
    t.integer "SpecialEthn",          limit: 1, null: false
    t.integer "OtherEthn",            limit: 1, null: false
    t.integer "YOB",                  limit: 1, null: false
    t.integer "BirthCountry",         limit: 1, null: false
    t.integer "Twin",                 limit: 1, null: false
    t.integer "TwinType",             limit: 1, null: false
    t.integer "FamilyMShistory",      limit: 1, null: false
    t.integer "Disease",              limit: 1, null: false
    t.integer "PhenotypeDatasource",  limit: 1, null: false
    t.integer "AAE",                  limit: 1, null: false
    t.integer "AOO",                  limit: 1, null: false
    t.integer "DiseaseCourse",        limit: 1, null: false
    t.integer "DiseaseDuration",      limit: 1, null: false
    t.integer "LatestExamDate",       limit: 1, null: false
    t.integer "EDSS",                 limit: 1, null: false
    t.integer "MSSS",                 limit: 1, null: false
    t.integer "EarliestSampleDate",   limit: 1, null: false
    t.integer "LatestSampleDate",     limit: 1, null: false
    t.integer "DNA",                  limit: 1, null: false
    t.integer "Serum",                limit: 1, null: false
    t.integer "Plasma",               limit: 1, null: false
    t.integer "Lymphocytes",          limit: 1, null: false
    t.integer "Cell_line",            limit: 1, null: false
    t.integer "PAX",                  limit: 1, null: false
    t.integer "Blood",                limit: 1, null: false
    t.integer "CSF",                  limit: 1, null: false
    t.integer "HLA",                  limit: 1, null: false
    t.integer "RNA",                  limit: 1, null: false
    t.integer "WTCCC2",               limit: 1, null: false
    t.integer "IMSGC",                limit: 1, null: false
    t.integer "IMAGEN",               limit: 1, null: false
    t.integer "GeneMSA",              limit: 1, null: false
    t.integer "Immunochip",           limit: 1, null: false
    t.integer "MSChip",               limit: 1, null: false
  end

  create_table "v_epic_umbrella", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "SubjectID",                   limit: 1, null: false
    t.integer "VisitID",                     limit: 1, null: false
    t.integer "EPICID",                      limit: 1, null: false
    t.integer "MSID",                        limit: 1, null: false
    t.integer "Pedigree",                    limit: 1, null: false
    t.integer "Individual",                  limit: 1, null: false
    t.integer "EPIC_Project",                limit: 1, null: false
    t.integer "EPIC_2_Category",             limit: 1, null: false
    t.integer "DiseaseStatus",               limit: 1, null: false
    t.integer "Excluded",                    limit: 1, null: false
    t.integer "Withdrawn",                   limit: 1, null: false
    t.integer "Gender",                      limit: 1, null: false
    t.integer "Ethnicstring",                limit: 1, null: false
    t.integer "YOB",                         limit: 1, null: false
    t.integer "Twin",                        limit: 1, null: false
    t.integer "TwinType",                    limit: 1, null: false
    t.integer "Handedness",                  limit: 1, null: false
    t.integer "Smoking",                     limit: 1, null: false
    t.integer "FamilyHxOfMS",                limit: 1, null: false
    t.integer "AgeOfOnset",                  limit: 1, null: false
    t.integer "Last_Known_Treatment_Status", limit: 1, null: false
    t.integer "VisitSeq",                    limit: 1, null: false
    t.integer "VisitType",                   limit: 1, null: false
    t.integer "VisitStatus",                 limit: 1, null: false
    t.integer "ActiveFlare",                 limit: 1, null: false
    t.integer "DueDate",                     limit: 1, null: false
    t.integer "VisitDate",                   limit: 1, null: false
    t.integer "AgeAtExam",                   limit: 1, null: false
    t.integer "DiseaseCourse",               limit: 1, null: false
    t.integer "DiseaseDuration",             limit: 1, null: false
    t.integer "DMTs_at_Visit",               limit: 1, null: false
    t.integer "EDSS",                        limit: 1, null: false
    t.integer "AmbulationIndex",             limit: 1, null: false
    t.integer "MSSS",                        limit: 1, null: false
    t.integer "Visual",                      limit: 1, null: false
    t.integer "Brainstem",                   limit: 1, null: false
    t.integer "Pyramidal",                   limit: 1, null: false
    t.integer "Cerebellar",                  limit: 1, null: false
    t.integer "Sensory",                     limit: 1, null: false
    t.integer "Bowel",                       limit: 1, null: false
    t.integer "Mental",                      limit: 1, null: false
    t.integer "Pasat3_Score",                limit: 1, null: false
    t.integer "Timed_25_Walk_Trial_1",       limit: 1, null: false
    t.integer "Timed_25_Walk_Trial_2",       limit: 1, null: false
    t.integer "9HPT_Dominant_Trial_1",       limit: 1, null: false
    t.integer "9HPT_Dominant_Trial_2",       limit: 1, null: false
    t.integer "9HPT_NonDominant_Trial_1",    limit: 1, null: false
    t.integer "9HPT_NonDominant_Trial_2",    limit: 1, null: false
    t.integer "SDMT_Score",                  limit: 1, null: false
    t.integer "Brain_MRI_Date",              limit: 1, null: false
    t.integer "Spine_MRI_Date",              limit: 1, null: false
  end

  create_table "v_epic_umbrella_analysis", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "DB_Subject",                  limit: 1, null: false
    t.integer "DB_Visit",                    limit: 1, null: false
    t.integer "EPICID",                      limit: 1, null: false
    t.integer "MSID",                        limit: 1, null: false
    t.integer "MRN",                         limit: 1, null: false
    t.integer "EPIC_Project",                limit: 1, null: false
    t.integer "Disease_Status",              limit: 1, null: false
    t.integer "Excluded",                    limit: 1, null: false
    t.integer "Withdrawn",                   limit: 1, null: false
    t.integer "Sex",                         limit: 1, null: false
    t.integer "Ethnicity_code",              limit: 1, null: false
    t.integer "DOB",                         limit: 1, null: false
    t.integer "YOB",                         limit: 1, null: false
    t.integer "Twin_Flag",                   limit: 1, null: false
    t.integer "Age_of_Onset",                limit: 1, null: false
    t.integer "Year_RR_SP_Transition",       limit: 1, null: false
    t.integer "Smoking_Status",              limit: 1, null: false
    t.integer "Last_Known_Treatment_Status", limit: 1, null: false
    t.integer "HLA_DRB1_1",                  limit: 1, null: false
    t.integer "HLA_DRB1_2",                  limit: 1, null: false
    t.integer "HLA_DQB1_1",                  limit: 1, null: false
    t.integer "HLA_DQB1_2",                  limit: 1, null: false
    t.integer "HLA_A_1",                     limit: 1, null: false
    t.integer "HLA_A_2",                     limit: 1, null: false
    t.integer "HLA_B_1",                     limit: 1, null: false
    t.integer "HLA_B_2",                     limit: 1, null: false
    t.integer "HLA_C_1",                     limit: 1, null: false
    t.integer "HLA_C_2",                     limit: 1, null: false
    t.integer "Visit_Sequence",              limit: 1, null: false
    t.integer "Visit_Type",                  limit: 1, null: false
    t.integer "Visit_Status",                limit: 1, null: false
    t.integer "Active_Flare_at_Visit",       limit: 1, null: false
    t.integer "Visit_Date",                  limit: 1, null: false
    t.integer "Brain_MRI_Date",              limit: 1, null: false
    t.integer "Spine_MRI_Date",              limit: 1, null: false
    t.integer "Recent_LP_Date",              limit: 1, null: false
    t.integer "Age_at_Exam",                 limit: 1, null: false
    t.integer "Disease_Course",              limit: 1, null: false
    t.integer "Disease_Duration",            limit: 1, null: false
    t.integer "DMTs_at_Visit",               limit: 1, null: false
    t.integer "EDSS",                        limit: 1, null: false
    t.integer "HAI",                         limit: 1, null: false
    t.integer "MSSS",                        limit: 1, null: false
    t.integer "FS_Visual",                   limit: 1, null: false
    t.integer "FS_Brainstem",                limit: 1, null: false
    t.integer "FS_Pyramidal",                limit: 1, null: false
    t.integer "FS_Cerebellar",               limit: 1, null: false
    t.integer "FS_Sensory",                  limit: 1, null: false
    t.integer "FS_Bowel_Bladder",            limit: 1, null: false
    t.integer "FS_Mental",                   limit: 1, null: false
    t.integer "PASAT3_Score",                limit: 1, null: false
    t.integer "Timed_25_Walk_Trial_1",       limit: 1, null: false
    t.integer "Timed_25_Walk_Trial_2",       limit: 1, null: false
    t.integer "9HPT_Dominant_Trial_1",       limit: 1, null: false
    t.integer "9HPT_Dominant_Trial_2",       limit: 1, null: false
    t.integer "9HPT_NonDominant_Trial_1",    limit: 1, null: false
    t.integer "9HPT_NonDominant_Trial_2",    limit: 1, null: false
    t.integer "SDMT_Score",                  limit: 1, null: false
  end

  create_table "v_r01ns26799", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "subjectid",          limit: 1, null: false
    t.integer "center",             limit: 1, null: false
    t.integer "pedigree",           limit: 1, null: false
    t.integer "individual",         limit: 1, null: false
    t.integer "earliestsampledate", limit: 1, null: false
    t.integer "gender",             limit: 1, null: false
    t.integer "ethniccomment",      limit: 1, null: false
    t.integer "ethnicstring",       limit: 1, null: false
    t.integer "AA",                 limit: 1, null: false
    t.integer "Caucasian",          limit: 1, null: false
    t.integer "Native",             limit: 1, null: false
    t.integer "Asian",              limit: 1, null: false
    t.integer "Hispanic",           limit: 1, null: false
    t.integer "OtherEthn",          limit: 1, null: false
    t.integer "SpecialEthn",        limit: 1, null: false
    t.integer "NIHRace",            limit: 1, null: false
    t.integer "NIHHispanic",        limit: 1, null: false
  end

  create_table "v_r01ns26799_2016", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "subjectid",          limit: 1, null: false
    t.integer "center",             limit: 1, null: false
    t.integer "pedigree",           limit: 1, null: false
    t.integer "individual",         limit: 1, null: false
    t.integer "earliestsampledate", limit: 1, null: false
    t.integer "gender",             limit: 1, null: false
    t.integer "ethniccomment",      limit: 1, null: false
    t.integer "ethnicstring",       limit: 1, null: false
    t.integer "AA",                 limit: 1, null: false
    t.integer "Caucasian",          limit: 1, null: false
    t.integer "Native",             limit: 1, null: false
    t.integer "Asian",              limit: 1, null: false
    t.integer "Hispanic",           limit: 1, null: false
    t.integer "OtherEthn",          limit: 1, null: false
    t.integer "SpecialEthn",        limit: 1, null: false
    t.integer "NIHRace",            limit: 1, null: false
    t.integer "NIHHispanic",        limit: 1, null: false
  end

  create_table "v_r01ns26799_new", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "subjectid",          limit: 1, null: false
    t.integer "center",             limit: 1, null: false
    t.integer "pedigree",           limit: 1, null: false
    t.integer "individual",         limit: 1, null: false
    t.integer "earliestsampledate", limit: 1, null: false
    t.integer "gender",             limit: 1, null: false
    t.integer "ethniccomment",      limit: 1, null: false
    t.integer "ethnicstring",       limit: 1, null: false
    t.integer "AA",                 limit: 1, null: false
    t.integer "Caucasian",          limit: 1, null: false
    t.integer "Native",             limit: 1, null: false
    t.integer "Asian",              limit: 1, null: false
    t.integer "Hispanic",           limit: 1, null: false
    t.integer "OtherEthn",          limit: 1, null: false
    t.integer "SpecialEthn",        limit: 1, null: false
    t.integer "NIHRace",            limit: 1, null: false
    t.integer "NIHHispanic",        limit: 1, null: false
  end

  create_table "v_r01ns26799_new2", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "subjectid",          limit: 1, null: false
    t.integer "center",             limit: 1, null: false
    t.integer "pedigree",           limit: 1, null: false
    t.integer "individual",         limit: 1, null: false
    t.integer "earliestsampledate", limit: 1, null: false
    t.integer "gender",             limit: 1, null: false
    t.integer "ethniccomment",      limit: 1, null: false
    t.integer "ethnicstring",       limit: 1, null: false
    t.integer "AA",                 limit: 1, null: false
    t.integer "Caucasian",          limit: 1, null: false
    t.integer "Native",             limit: 1, null: false
    t.integer "Asian",              limit: 1, null: false
    t.integer "Hispanic",           limit: 1, null: false
    t.integer "OtherEthn",          limit: 1, null: false
    t.integer "SpecialEthn",        limit: 1, null: false
    t.integer "NIHRace",            limit: 1, null: false
    t.integer "NIHHispanic",        limit: 1, null: false
  end

  create_table "v_r2r01ns046297_05a1", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "subjectid",          limit: 1, null: false
    t.integer "center",             limit: 1, null: false
    t.integer "pedigree",           limit: 1, null: false
    t.integer "individual",         limit: 1, null: false
    t.integer "earliestsampledate", limit: 1, null: false
    t.integer "gender",             limit: 1, null: false
    t.integer "ethniccomment",      limit: 1, null: false
    t.integer "ethnicstring",       limit: 1, null: false
    t.integer "AA",                 limit: 1, null: false
    t.integer "Caucasian",          limit: 1, null: false
    t.integer "Native",             limit: 1, null: false
    t.integer "Asian",              limit: 1, null: false
    t.integer "Hispanic",           limit: 1, null: false
    t.integer "OtherEthn",          limit: 1, null: false
    t.integer "SpecialEthn",        limit: 1, null: false
    t.integer "NIHRace",            limit: 1, null: false
  end

end
