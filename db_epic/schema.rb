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

  create_table "_baseline_detailed", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "SubjectID"
    t.integer "BL_ID",                                                                                         default: 0,  null: false
    t.string  "BL_Status",                                              limit: 30,                                                       collation: "utf8_general_ci"
    t.date    "BL_ExamDate"
    t.integer "BL_AgeAtExam"
    t.string  "BL_DiseaseCourse",                                       limit: 3,                                                        collation: "utf8_general_ci"
    t.integer "BL_DiseaseDuration"
    t.string  "BL_Cumulative_Prior_Attacks",                            limit: 21,                             default: "", null: false, collation: "utf8_general_ci"
    t.text    "BL_Cumulative_Prior_Attack_Dates",                       limit: 65535,                                                    collation: "utf8_general_ci"
    t.decimal "BL_EDSS",                                                              precision: 3,  scale: 1
    t.decimal "BL_MSSS",                                                              precision: 4,  scale: 2
    t.string  "BL_FS_Visual",                                           limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "BL_FS_Brainstem",                                        limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "BL_FS_Pyramidal",                                        limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "BL_FS_Cerebellar",                                       limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "BL_FS_Sensory",                                          limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "BL_FS_BowelBladder",                                     limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "BL_FS_Mental",                                           limit: 50,                                                       collation: "utf8_general_ci"
    t.decimal "BL_MSFC_PASAT3_Score",                                                 precision: 5,  scale: 2
    t.string  "BL_MSFC_PASAT3_Analytical_Status",                       limit: 50,                                                       collation: "utf8_general_ci"
    t.float   "BL_MSFC_25FTW_Trial1_Seconds",                           limit: 53
    t.float   "BL_MSFC_25FTW_Trial2_Seconds",                           limit: 53
    t.string  "BL_MSFC_25FTW_Trial1_AFO",                               limit: 1,                                                        collation: "utf8_general_ci"
    t.string  "BL_MSFC_25FTW_Trial2_AFO",                               limit: 1,                                                        collation: "utf8_general_ci"
    t.string  "BL_MSFC_25FTW_Trial1_Unilat_Assist_Device",              limit: 20,                                                       collation: "utf8_general_ci"
    t.string  "BL_MSFC_25FTW_Trial2_Unilat_Assist_Device",              limit: 20,                                                       collation: "utf8_general_ci"
    t.string  "BL_MSFC_25FTW_Trial1_Bilat_Assist_Device",               limit: 20,                                                       collation: "utf8_general_ci"
    t.string  "BL_MSFC_25FTW_Trial2_Bilat_Assist_Device",               limit: 20,                                                       collation: "utf8_general_ci"
    t.string  "BL_MSFC_25FTW_Trial1_Analytical_Status",                 limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "BL_MSFC_25FTW_Trial2_Analytical_Status",                 limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "BL_MSFC_9HPT_Dominant_Hand",                             limit: 2,                                                        collation: "utf8_general_ci"
    t.float   "BL_MSFC_9HPT_Dominant_Hand_Trial1_Seconds",              limit: 53
    t.float   "BL_MSFC_9HPT_Dominant_Hand_Trial2_Seconds",              limit: 53
    t.float   "BL_MSFC_9HPT_NonDominant_Hand_Trial1_Seconds",           limit: 53
    t.float   "BL_MSFC_9HPT_NonDominant_Hand_Trial2_Seconds",           limit: 53
    t.string  "BL_MSFC_9HPT_Dominant_Hand_Trial1_Analytical_Status",    limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "BL_MSFC_9HPT_Dominant_Hand_Trial2_Analytical_Status",    limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "BL_MSFC_9HPT_NonDominant_Hand_Trial1_Analytical_Status", limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "BL_MSFC_9HPT_NonDominant_Hand_Trial2_Analytical_Status", limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "BL_Treatment_Status",                                    limit: 7,                                                        collation: "utf8_general_ci"
    t.text    "BL_Cumulative_Prior_Treatments",                         limit: 65535,                                                    collation: "utf8_general_ci"
    t.string  "BL_Microbiome_Sample",                                   limit: 12,                                                       collation: "utf8_general_ci"
    t.string  "BL_Repository_Date",                                     limit: 10,                             default: "", null: false, collation: "utf8_general_ci"
    t.decimal "BL_DNA",                                                               precision: 52, scale: 2
    t.decimal "BL_Serum",                                                             precision: 52, scale: 2
    t.decimal "BL_Plasma",                                                            precision: 52, scale: 2
    t.decimal "BL_Lymphocyte",                                                        precision: 52, scale: 2
    t.decimal "BL_Cell_Line",                                                         precision: 52, scale: 2
    t.index ["SubjectID"], name: "ixsid", using: :btree
  end

  create_table "_baseline_simple", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "SubjectID"
    t.integer "BL_ID",                                                                   default: 0,  null: false
    t.string  "BL_Status",                        limit: 30,                                                       collation: "utf8_general_ci"
    t.date    "BL_ExamDate"
    t.integer "BL_AgeAtExam"
    t.string  "BL_DiseaseCourse",                 limit: 3,                                                        collation: "utf8_general_ci"
    t.integer "BL_DiseaseDuration"
    t.string  "BL_Cumulative_Prior_Attacks",      limit: 21,                             default: "", null: false, collation: "utf8_general_ci"
    t.text    "BL_Cumulative_Prior_Attack_Dates", limit: 65535,                                                    collation: "utf8_general_ci"
    t.decimal "BL_EDSS",                                        precision: 3,  scale: 1
    t.decimal "BL_MSSS",                                        precision: 4,  scale: 2
    t.string  "BL_Treatment_Status",              limit: 7,                                                        collation: "utf8_general_ci"
    t.text    "BL_Cumulative_Prior_Treatments",   limit: 65535,                                                    collation: "utf8_general_ci"
    t.string  "BL_Microbiome_Sample",             limit: 12,                                                       collation: "utf8_general_ci"
    t.string  "BL_Repository_Date",               limit: 10,                             default: "", null: false, collation: "utf8_general_ci"
    t.decimal "BL_DNA",                                         precision: 52, scale: 2
    t.decimal "BL_Serum",                                       precision: 52, scale: 2
    t.decimal "BL_Plasma",                                      precision: 52, scale: 2
    t.decimal "BL_Lymphocyte",                                  precision: 52, scale: 2
    t.decimal "BL_Cell_Line",                                   precision: 52, scale: 2
    t.decimal "BL_Stool_Dry",                                   precision: 52, scale: 2
    t.decimal "BL_Stool_Wet",                                   precision: 52, scale: 2
    t.decimal "BL_Stool_Wet_Media",                             precision: 52, scale: 2
    t.index ["SubjectID"], name: "ixsid", using: :btree
  end

  create_table "_demographics", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "SubjectID",                                           null: false
    t.integer "Exclude",                  limit: 1,     default: 0,  null: false
    t.integer "Withdrawn",                limit: 1,     default: 0,  null: false
    t.string  "EPICID",                   limit: 10,    default: ""
    t.string  "msID",                     limit: 50,    default: ""
    t.string  "Pedigree",                 limit: 100,   default: ""
    t.string  "PostalCode",               limit: 100
    t.boolean "AA"
    t.boolean "Caucasian"
    t.boolean "Hispanic"
    t.boolean "Asian"
    t.string  "EthnicString",             limit: 20
    t.string  "EthnicComment"
    t.string  "Sex",                      limit: 10
    t.date    "DOB"
    t.integer "CurrentAge"
    t.integer "AgeOfOnset",               limit: 2
    t.integer "OnsetYear",                limit: 2
    t.string  "Current_Treatment_Status", limit: 30
    t.text    "Attack_Dates",             limit: 65535,                           collation: "utf8_general_ci"
    t.index ["SubjectID"], name: "ix_subjid", using: :btree
  end

  create_table "_flare", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "EPICID",    limit: 7
    t.integer "VisitSeq"
    t.string  "VisitType", limit: 9
    t.index ["EPICID"], name: "ixeid", using: :btree
    t.index ["VisitSeq"], name: "ixvid", using: :btree
  end

  create_table "_scores", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "subjectid"
    t.integer "visitid",                                                   default: 0, null: false
    t.decimal "Pasat3Score",                       precision: 5, scale: 2
    t.float   "Walk_trial1",            limit: 53
    t.float   "Walk_trial2",            limit: 53
    t.float   "Walk_Avg",               limit: 53
    t.float   "9HPT_DomHand_Trial1",    limit: 53
    t.float   "9HPT_DomHand_Trial2",    limit: 53
    t.float   "9HPT_NonDomHand_Trial1", limit: 53
    t.float   "9HPT_NonDomHand_Trial2", limit: 53
    t.float   "9HPT_Avg",               limit: 53
    t.float   "Pasat3_zscore",          limit: 24
    t.float   "Walk_zscore",            limit: 24
    t.float   "9HPT_zscore",            limit: 24
    t.float   "MSFC_Score",             limit: 24
    t.index ["visitid"], name: "ixvid", using: :btree
  end

  create_table "_tmpvisitsgrid", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "SubjectID",            default: 0,  null: false
    t.string  "EPICID",    limit: 10, default: ""
    t.integer "BL_ID",                default: 0,  null: false
    t.string  "BL",        limit: 30,                           collation: "utf8_general_ci"
    t.date    "BL_Date"
    t.integer "Y1_ID",                default: 0
    t.string  "Y1",        limit: 30,                           collation: "utf8_general_ci"
    t.date    "Y1_Date"
    t.integer "Y2_ID",                default: 0
    t.string  "Y2",        limit: 30,                           collation: "utf8_general_ci"
    t.date    "Y2_Date"
    t.integer "Y3_ID",                default: 0
    t.string  "Y3",        limit: 30,                           collation: "utf8_general_ci"
    t.date    "Y3_Date"
    t.integer "Y4_ID",                default: 0
    t.string  "Y4",        limit: 30,                           collation: "utf8_general_ci"
    t.date    "Y4_Date"
    t.integer "Y5_ID",                default: 0
    t.string  "Y5",        limit: 30,                           collation: "utf8_general_ci"
    t.date    "Y5_Date"
    t.integer "Y6_ID",                default: 0
    t.string  "Y6",        limit: 30,                           collation: "utf8_general_ci"
    t.date    "Y6_Date"
    t.integer "Y7_ID",                default: 0
    t.string  "Y7",        limit: 30,                           collation: "utf8_general_ci"
    t.date    "Y7_Date"
    t.integer "Y8_ID",                default: 0
    t.string  "Y8",        limit: 30,                           collation: "utf8_general_ci"
    t.date    "Y8_Date"
    t.integer "Y9_ID",                default: 0
    t.string  "Y9",        limit: 30,                           collation: "utf8_general_ci"
    t.date    "Y9_Date"
    t.integer "Y10_ID",               default: 0
    t.string  "Y10",       limit: 30,                           collation: "utf8_general_ci"
    t.date    "Y10_Date"
    t.integer "Y11_ID",               default: 0
    t.string  "Y11",       limit: 30,                           collation: "utf8_general_ci"
    t.date    "Y11_Date"
    t.integer "Y12_ID",               default: 0
    t.string  "Y12",       limit: 30,                           collation: "utf8_general_ci"
    t.date    "Y12_Date"
    t.index ["BL_Date"], name: "ixb", using: :btree
    t.index ["SubjectID"], name: "ixsub", using: :btree
    t.index ["Y10_Date"], name: "ix10", using: :btree
    t.index ["Y11_Date"], name: "ix11", using: :btree
    t.index ["Y12_Date"], name: "ix12", using: :btree
    t.index ["Y1_Date"], name: "ix1", using: :btree
    t.index ["Y1_Date"], name: "ixy1", using: :btree
    t.index ["Y2_Date"], name: "ix2", using: :btree
    t.index ["Y3_Date"], name: "ix3", using: :btree
    t.index ["Y4_Date"], name: "ix4", using: :btree
    t.index ["Y5_Date"], name: "ix5", using: :btree
    t.index ["Y6_Date"], name: "ix6", using: :btree
    t.index ["Y7_Date"], name: "ix7", using: :btree
    t.index ["Y8_Date"], name: "ix8", using: :btree
    t.index ["Y9_Date"], name: "ix9", using: :btree
  end

  create_table "_ubiome_qc", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=utf8" do |t|
    t.string  "Epic ID",                   limit: 16
    t.string  "Date",                      limit: 5
    t.string  "Color",                     limit: 23
    t.string  "Initials",                  limit: 3
    t.string  "Label",                     limit: 10
    t.string  "Concentration S(ng/ul)",    limit: 4
    t.string  "Concentration Q (ng/ul)",   limit: 6
    t.string  "Concentration RNA (ng/ul)", limit: 4
    t.integer "storage rack"
    t.string  "rack position",             limit: 2
    t.integer "DNA box"
    t.string  "DNA box position",          limit: 2
    t.string  "Questionnaire",             limit: 5
    t.string  "Notes",                     limit: 82
  end

  create_table "_vitals_qc", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "subjectid"
    t.integer "visitid"
    t.string  "epic_id",               limit: 7
    t.string  "visittype",             limit: 9
    t.string  "examdate",              limit: 10
    t.decimal "weight",                           precision: 7, scale: 4
    t.decimal "height",                           precision: 6, scale: 3
    t.decimal "weight_corr",                      precision: 4, scale: 1
    t.integer "height_corr"
    t.integer "waist"
    t.string  "sitting_hr_regularity", limit: 9
    t.integer "sittingheartrate_corr"
    t.string  "blood_pressure_corr",   limit: 7
    t.string  "coordinator_name",      limit: 15
    t.string  "sitting_heart_rate",    limit: 7
    t.string  "blood_pressure",        limit: 7
    t.index ["epic_id"], name: "epic_id", using: :btree
    t.index ["visittype"], name: "visittype", using: :btree
  end

  create_table "_whodas_redcap", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=utf8" do |t|
    t.integer  "SubjectID"
    t.integer  "VisitID"
    t.integer  "whodasid"
    t.integer  "participant_id"
    t.string   "redcap_survey_identifier",   limit: 4
    t.datetime "survey_timestamp"
    t.string   "epic_id",                    limit: 14
    t.string   "u_c_concentrating",          limit: 1
    t.string   "u_c_remembering",            limit: 1
    t.string   "u_c_analyzing",              limit: 1
    t.string   "u_c_learning",               limit: 1
    t.string   "u_c_understanding",          limit: 1
    t.string   "u_c_conversation",           limit: 1
    t.string   "g_a_standing_long",          limit: 1
    t.string   "g_a_standing_from_sitting",  limit: 1
    t.string   "g_a_moving_in_home",         limit: 1
    t.string   "g_a_getting_out",            limit: 1
    t.string   "g_a_walking_long",           limit: 1
    t.string   "self_care_washing_body",     limit: 1
    t.string   "self_care_getting_dressed",  limit: 1
    t.string   "self_care_eating",           limit: 1
    t.string   "self_care_stay_alone",       limit: 1
    t.string   "getting_along_strangers",    limit: 1
    t.string   "getting_along_mntn_frndshp", limit: 1
    t.string   "getting_along_close",        limit: 1
    t.string   "getting_along_new_frnds",    limit: 1
    t.string   "getting_along_sexual",       limit: 1
    t.string   "life_actv_household_resp",   limit: 1
    t.string   "life_actv_imp_tasks_well",   limit: 1
    t.string   "life_actv_house_work_done",  limit: 1
    t.string   "life_actv_house_work_quick", limit: 1
    t.string   "work_school_y_n",            limit: 1
    t.string   "health_work_school",         limit: 1
    t.string   "health_work_school_well",    limit: 1
    t.string   "health_work_done",           limit: 1
    t.string   "health_work_quick",          limit: 1
    t.string   "particip_comm_actv",         limit: 1
    t.string   "particip_barriers_in_world", limit: 1
    t.string   "particip_dignity_attitudes", limit: 1
    t.string   "particip_time_condition",    limit: 1
    t.string   "particip_emo_affect",        limit: 1
    t.string   "particip_financial_drain",   limit: 1
    t.string   "particip_fam_prob",          limit: 1
    t.string   "particip_relax_pleasure",    limit: 1
    t.string   "days_difficulties_present",  limit: 44
    t.string   "days_unable_work",           limit: 13
    t.string   "days_reduce_actvty",         limit: 41
    t.string   "today_date",                 limit: 10
    t.integer  "survey_complete"
  end

  create_table "_year10_detailed", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "SubjectID"
    t.integer "Y10_ID",                                                                                         default: 0,  null: false
    t.string  "Y10_Status",                                              limit: 30,                                                       collation: "utf8_general_ci"
    t.date    "Y10_ExamDate"
    t.integer "Y10_AgeAtExam"
    t.string  "Y10_DiseaseCourse",                                       limit: 3,                                                        collation: "utf8_general_ci"
    t.integer "Y10_DiseaseDuration"
    t.string  "Y10_Cumulative_Prior_Attacks",                            limit: 21,                             default: "", null: false, collation: "utf8_general_ci"
    t.text    "Y10_Cumulative_Prior_Attack_Dates",                       limit: 65535,                                                    collation: "utf8_general_ci"
    t.decimal "Y10_EDSS",                                                              precision: 3,  scale: 1
    t.decimal "Y10_MSSS",                                                              precision: 4,  scale: 2
    t.string  "Y10_FS_Visual",                                           limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y10_FS_Brainstem",                                        limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y10_FS_Pyramidal",                                        limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y10_FS_Cerebellar",                                       limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y10_FS_Sensory",                                          limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y10_FS_BowelBladder",                                     limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y10_FS_Mental",                                           limit: 50,                                                       collation: "utf8_general_ci"
    t.decimal "Y10_MSFC_PASAT3_Score",                                                 precision: 5,  scale: 2
    t.string  "Y10_MSFC_PASAT3_Analytical_Status",                       limit: 50,                                                       collation: "utf8_general_ci"
    t.float   "Y10_MSFC_25FTW_Trial1_Seconds",                           limit: 53
    t.float   "Y10_MSFC_25FTW_Trial2_Seconds",                           limit: 53
    t.string  "Y10_MSFC_25FTW_Trial1_AFO",                               limit: 1,                                                        collation: "utf8_general_ci"
    t.string  "Y10_MSFC_25FTW_Trial2_AFO",                               limit: 1,                                                        collation: "utf8_general_ci"
    t.string  "Y10_MSFC_25FTW_Trial1_Unilat_Assist_Device",              limit: 20,                                                       collation: "utf8_general_ci"
    t.string  "Y10_MSFC_25FTW_Trial2_Unilat_Assist_Device",              limit: 20,                                                       collation: "utf8_general_ci"
    t.string  "Y10_MSFC_25FTW_Trial1_Bilat_Assist_Device",               limit: 20,                                                       collation: "utf8_general_ci"
    t.string  "Y10_MSFC_25FTW_Trial2_Bilat_Assist_Device",               limit: 20,                                                       collation: "utf8_general_ci"
    t.string  "Y10_MSFC_25FTW_Trial1_Analytical_Status",                 limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y10_MSFC_25FTW_Trial2_Analytical_Status",                 limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y10_MSFC_9HPT_Dominant_Hand",                             limit: 2,                                                        collation: "utf8_general_ci"
    t.float   "Y10_MSFC_9HPT_Dominant_Hand_Trial1_Seconds",              limit: 53
    t.float   "Y10_MSFC_9HPT_Dominant_Hand_Trial2_Seconds",              limit: 53
    t.float   "Y10_MSFC_9HPT_NonDominant_Hand_Trial1_Seconds",           limit: 53
    t.float   "Y10_MSFC_9HPT_NonDominant_Hand_Trial2_Seconds",           limit: 53
    t.string  "Y10_MSFC_9HPT_Dominant_Hand_Trial1_Analytical_Status",    limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y10_MSFC_9HPT_Dominant_Hand_Trial2_Analytical_Status",    limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y10_MSFC_9HPT_NonDominant_Hand_Trial1_Analytical_Status", limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y10_MSFC_9HPT_NonDominant_Hand_Trial2_Analytical_Status", limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y10_Treatment_Status",                                    limit: 7,                                                        collation: "utf8_general_ci"
    t.text    "Y10_Cumulative_Prior_Treatments",                         limit: 65535,                                                    collation: "utf8_general_ci"
    t.string  "Y10_Microbiome_Sample",                                   limit: 12,                                                       collation: "utf8_general_ci"
    t.string  "Y10_Repository_Date",                                     limit: 10,                             default: "", null: false, collation: "utf8_general_ci"
    t.decimal "Y10_DNA",                                                               precision: 52, scale: 2
    t.decimal "Y10_Serum",                                                             precision: 52, scale: 2
    t.decimal "Y10_Plasma",                                                            precision: 52, scale: 2
    t.decimal "Y10_Lymphocyte",                                                        precision: 52, scale: 2
    t.decimal "Y10_Cell_Line",                                                         precision: 52, scale: 2
    t.index ["SubjectID"], name: "ixsid", using: :btree
  end

  create_table "_year10_simple", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "SubjectID"
    t.integer "Y10_ID",                                                                   default: 0,  null: false
    t.string  "Y10_Status",                        limit: 30,                                                       collation: "utf8_general_ci"
    t.date    "Y10_ExamDate"
    t.integer "Y10_AgeAtExam"
    t.string  "Y10_DiseaseCourse",                 limit: 3,                                                        collation: "utf8_general_ci"
    t.integer "Y10_DiseaseDuration"
    t.string  "Y10_Cumulative_Prior_Attacks",      limit: 21,                             default: "", null: false, collation: "utf8_general_ci"
    t.text    "Y10_Cumulative_Prior_Attack_Dates", limit: 65535,                                                    collation: "utf8_general_ci"
    t.decimal "Y10_EDSS",                                        precision: 3,  scale: 1
    t.decimal "Y10_MSSS",                                        precision: 4,  scale: 2
    t.string  "Y10_Treatment_Status",              limit: 7,                                                        collation: "utf8_general_ci"
    t.text    "Y10_Cumulative_Prior_Treatments",   limit: 65535,                                                    collation: "utf8_general_ci"
    t.string  "Y10_Microbiome_Sample",             limit: 12,                                                       collation: "utf8_general_ci"
    t.string  "Y10_Repository_Date",               limit: 10,                             default: "", null: false, collation: "utf8_general_ci"
    t.decimal "Y10_DNA",                                         precision: 52, scale: 2
    t.decimal "Y10_Serum",                                       precision: 52, scale: 2
    t.decimal "Y10_Plasma",                                      precision: 52, scale: 2
    t.decimal "Y10_Lymphocyte",                                  precision: 52, scale: 2
    t.decimal "Y10_Cell_Line",                                   precision: 52, scale: 2
    t.decimal "Y10_Stool_Dry",                                   precision: 52, scale: 2
    t.decimal "Y10_Stool_Wet",                                   precision: 52, scale: 2
    t.decimal "Y10_Stool_Wet_Media",                             precision: 52, scale: 2
    t.index ["SubjectID"], name: "ixsid", using: :btree
  end

  create_table "_year11_detailed", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "SubjectID"
    t.integer "Y11_ID",                                                                                         default: 0,  null: false
    t.string  "Y11_Status",                                              limit: 30,                                                       collation: "utf8_general_ci"
    t.date    "Y11_ExamDate"
    t.integer "Y11_AgeAtExam"
    t.string  "Y11_DiseaseCourse",                                       limit: 3,                                                        collation: "utf8_general_ci"
    t.integer "Y11_DiseaseDuration"
    t.string  "Y11_Cumulative_Prior_Attacks",                            limit: 21,                             default: "", null: false, collation: "utf8_general_ci"
    t.text    "Y11_Cumulative_Prior_Attack_Dates",                       limit: 65535,                                                    collation: "utf8_general_ci"
    t.decimal "Y11_EDSS",                                                              precision: 3,  scale: 1
    t.decimal "Y11_MSSS",                                                              precision: 4,  scale: 2
    t.string  "Y11_FS_Visual",                                           limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y11_FS_Brainstem",                                        limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y11_FS_Pyramidal",                                        limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y11_FS_Cerebellar",                                       limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y11_FS_Sensory",                                          limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y11_FS_BowelBladder",                                     limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y11_FS_Mental",                                           limit: 50,                                                       collation: "utf8_general_ci"
    t.decimal "Y11_MSFC_PASAT3_Score",                                                 precision: 5,  scale: 2
    t.string  "Y11_MSFC_PASAT3_Analytical_Status",                       limit: 50,                                                       collation: "utf8_general_ci"
    t.float   "Y11_MSFC_25FTW_Trial1_Seconds",                           limit: 53
    t.float   "Y11_MSFC_25FTW_Trial2_Seconds",                           limit: 53
    t.string  "Y11_MSFC_25FTW_Trial1_AFO",                               limit: 1,                                                        collation: "utf8_general_ci"
    t.string  "Y11_MSFC_25FTW_Trial2_AFO",                               limit: 1,                                                        collation: "utf8_general_ci"
    t.string  "Y11_MSFC_25FTW_Trial1_Unilat_Assist_Device",              limit: 20,                                                       collation: "utf8_general_ci"
    t.string  "Y11_MSFC_25FTW_Trial2_Unilat_Assist_Device",              limit: 20,                                                       collation: "utf8_general_ci"
    t.string  "Y11_MSFC_25FTW_Trial1_Bilat_Assist_Device",               limit: 20,                                                       collation: "utf8_general_ci"
    t.string  "Y11_MSFC_25FTW_Trial2_Bilat_Assist_Device",               limit: 20,                                                       collation: "utf8_general_ci"
    t.string  "Y11_MSFC_25FTW_Trial1_Analytical_Status",                 limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y11_MSFC_25FTW_Trial2_Analytical_Status",                 limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y11_MSFC_9HPT_Dominant_Hand",                             limit: 2,                                                        collation: "utf8_general_ci"
    t.float   "Y11_MSFC_9HPT_Dominant_Hand_Trial1_Seconds",              limit: 53
    t.float   "Y11_MSFC_9HPT_Dominant_Hand_Trial2_Seconds",              limit: 53
    t.float   "Y11_MSFC_9HPT_NonDominant_Hand_Trial1_Seconds",           limit: 53
    t.float   "Y11_MSFC_9HPT_NonDominant_Hand_Trial2_Seconds",           limit: 53
    t.string  "Y11_MSFC_9HPT_Dominant_Hand_Trial1_Analytical_Status",    limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y11_MSFC_9HPT_Dominant_Hand_Trial2_Analytical_Status",    limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y11_MSFC_9HPT_NonDominant_Hand_Trial1_Analytical_Status", limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y11_MSFC_9HPT_NonDominant_Hand_Trial2_Analytical_Status", limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y11_Treatment_Status",                                    limit: 7,                                                        collation: "utf8_general_ci"
    t.text    "Y11_Cumulative_Prior_Treatments",                         limit: 65535,                                                    collation: "utf8_general_ci"
    t.string  "Y11_Microbiome_Sample",                                   limit: 12,                                                       collation: "utf8_general_ci"
    t.string  "Y11_Repository_Date",                                     limit: 10,                             default: "", null: false, collation: "utf8_general_ci"
    t.decimal "Y11_DNA",                                                               precision: 52, scale: 2
    t.decimal "Y11_Serum",                                                             precision: 52, scale: 2
    t.decimal "Y11_Plasma",                                                            precision: 52, scale: 2
    t.decimal "Y11_Lymphocyte",                                                        precision: 52, scale: 2
    t.decimal "Y11_Cell_Line",                                                         precision: 52, scale: 2
    t.index ["SubjectID"], name: "ixsid", using: :btree
  end

  create_table "_year11_simple", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "SubjectID"
    t.integer "Y11_ID",                                                                   default: 0,  null: false
    t.string  "Y11_Status",                        limit: 30,                                                       collation: "utf8_general_ci"
    t.date    "Y11_ExamDate"
    t.integer "Y11_AgeAtExam"
    t.string  "Y11_DiseaseCourse",                 limit: 3,                                                        collation: "utf8_general_ci"
    t.integer "Y11_DiseaseDuration"
    t.string  "Y11_Cumulative_Prior_Attacks",      limit: 21,                             default: "", null: false, collation: "utf8_general_ci"
    t.text    "Y11_Cumulative_Prior_Attack_Dates", limit: 65535,                                                    collation: "utf8_general_ci"
    t.decimal "Y11_EDSS",                                        precision: 3,  scale: 1
    t.decimal "Y11_MSSS",                                        precision: 4,  scale: 2
    t.string  "Y11_Treatment_Status",              limit: 7,                                                        collation: "utf8_general_ci"
    t.text    "Y11_Cumulative_Prior_Treatments",   limit: 65535,                                                    collation: "utf8_general_ci"
    t.string  "Y11_Microbiome_Sample",             limit: 12,                                                       collation: "utf8_general_ci"
    t.string  "Y11_Repository_Date",               limit: 10,                             default: "", null: false, collation: "utf8_general_ci"
    t.decimal "Y11_DNA",                                         precision: 52, scale: 2
    t.decimal "Y11_Serum",                                       precision: 52, scale: 2
    t.decimal "Y11_Plasma",                                      precision: 52, scale: 2
    t.decimal "Y11_Lymphocyte",                                  precision: 52, scale: 2
    t.decimal "Y11_Cell_Line",                                   precision: 52, scale: 2
    t.decimal "Y11_Stool_Dry",                                   precision: 52, scale: 2
    t.decimal "Y11_Stool_Wet",                                   precision: 52, scale: 2
    t.decimal "Y11_Stool_Wet_Media",                             precision: 52, scale: 2
    t.index ["SubjectID"], name: "ixsid", using: :btree
  end

  create_table "_year12_detailed", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "SubjectID"
    t.integer "Y12_ID",                                                                                         default: 0,  null: false
    t.string  "Y12_Status",                                              limit: 30,                                                       collation: "utf8_general_ci"
    t.date    "Y12_ExamDate"
    t.integer "Y12_AgeAtExam"
    t.string  "Y12_DiseaseCourse",                                       limit: 3,                                                        collation: "utf8_general_ci"
    t.integer "Y12_DiseaseDuration"
    t.string  "Y12_Cumulative_Prior_Attacks",                            limit: 21,                             default: "", null: false, collation: "utf8_general_ci"
    t.text    "Y12_Cumulative_Prior_Attack_Dates",                       limit: 65535,                                                    collation: "utf8_general_ci"
    t.decimal "Y12_EDSS",                                                              precision: 3,  scale: 1
    t.decimal "Y12_MSSS",                                                              precision: 4,  scale: 2
    t.string  "Y12_FS_Visual",                                           limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y12_FS_Brainstem",                                        limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y12_FS_Pyramidal",                                        limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y12_FS_Cerebellar",                                       limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y12_FS_Sensory",                                          limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y12_FS_BowelBladder",                                     limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y12_FS_Mental",                                           limit: 50,                                                       collation: "utf8_general_ci"
    t.decimal "Y12_MSFC_PASAT3_Score",                                                 precision: 5,  scale: 2
    t.string  "Y12_MSFC_PASAT3_Analytical_Status",                       limit: 50,                                                       collation: "utf8_general_ci"
    t.float   "Y12_MSFC_25FTW_Trial1_Seconds",                           limit: 53
    t.float   "Y12_MSFC_25FTW_Trial2_Seconds",                           limit: 53
    t.string  "Y12_MSFC_25FTW_Trial1_AFO",                               limit: 1,                                                        collation: "utf8_general_ci"
    t.string  "Y12_MSFC_25FTW_Trial2_AFO",                               limit: 1,                                                        collation: "utf8_general_ci"
    t.string  "Y12_MSFC_25FTW_Trial1_Unilat_Assist_Device",              limit: 20,                                                       collation: "utf8_general_ci"
    t.string  "Y12_MSFC_25FTW_Trial2_Unilat_Assist_Device",              limit: 20,                                                       collation: "utf8_general_ci"
    t.string  "Y12_MSFC_25FTW_Trial1_Bilat_Assist_Device",               limit: 20,                                                       collation: "utf8_general_ci"
    t.string  "Y12_MSFC_25FTW_Trial2_Bilat_Assist_Device",               limit: 20,                                                       collation: "utf8_general_ci"
    t.string  "Y12_MSFC_25FTW_Trial1_Analytical_Status",                 limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y12_MSFC_25FTW_Trial2_Analytical_Status",                 limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y12_MSFC_9HPT_Dominant_Hand",                             limit: 2,                                                        collation: "utf8_general_ci"
    t.float   "Y12_MSFC_9HPT_Dominant_Hand_Trial1_Seconds",              limit: 53
    t.float   "Y12_MSFC_9HPT_Dominant_Hand_Trial2_Seconds",              limit: 53
    t.float   "Y12_MSFC_9HPT_NonDominant_Hand_Trial1_Seconds",           limit: 53
    t.float   "Y12_MSFC_9HPT_NonDominant_Hand_Trial2_Seconds",           limit: 53
    t.string  "Y12_MSFC_9HPT_Dominant_Hand_Trial1_Analytical_Status",    limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y12_MSFC_9HPT_Dominant_Hand_Trial2_Analytical_Status",    limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y12_MSFC_9HPT_NonDominant_Hand_Trial1_Analytical_Status", limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y12_MSFC_9HPT_NonDominant_Hand_Trial2_Analytical_Status", limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y12_Treatment_Status",                                    limit: 7,                                                        collation: "utf8_general_ci"
    t.text    "Y12_Cumulative_Prior_Treatments",                         limit: 65535,                                                    collation: "utf8_general_ci"
    t.string  "Y12_Microbiome_Sample",                                   limit: 12,                                                       collation: "utf8_general_ci"
    t.string  "Y12_Repository_Date",                                     limit: 10,                             default: "", null: false, collation: "utf8_general_ci"
    t.decimal "Y12_DNA",                                                               precision: 52, scale: 2
    t.decimal "Y12_Serum",                                                             precision: 52, scale: 2
    t.decimal "Y12_Plasma",                                                            precision: 52, scale: 2
    t.decimal "Y12_Lymphocyte",                                                        precision: 52, scale: 2
    t.decimal "Y12_Cell_Line",                                                         precision: 52, scale: 2
    t.index ["SubjectID"], name: "ixsid", using: :btree
  end

  create_table "_year12_simple", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "SubjectID"
    t.integer "Y12_ID",                                                                   default: 0,  null: false
    t.string  "Y12_Status",                        limit: 30,                                                       collation: "utf8_general_ci"
    t.date    "Y12_ExamDate"
    t.integer "Y12_AgeAtExam"
    t.string  "Y12_DiseaseCourse",                 limit: 3,                                                        collation: "utf8_general_ci"
    t.integer "Y12_DiseaseDuration"
    t.string  "Y12_Cumulative_Prior_Attacks",      limit: 21,                             default: "", null: false, collation: "utf8_general_ci"
    t.text    "Y12_Cumulative_Prior_Attack_Dates", limit: 65535,                                                    collation: "utf8_general_ci"
    t.decimal "Y12_EDSS",                                        precision: 3,  scale: 1
    t.decimal "Y12_MSSS",                                        precision: 4,  scale: 2
    t.string  "Y12_Treatment_Status",              limit: 7,                                                        collation: "utf8_general_ci"
    t.text    "Y12_Cumulative_Prior_Treatments",   limit: 65535,                                                    collation: "utf8_general_ci"
    t.string  "Y12_Microbiome_Sample",             limit: 12,                                                       collation: "utf8_general_ci"
    t.string  "Y12_Repository_Date",               limit: 10,                             default: "", null: false, collation: "utf8_general_ci"
    t.decimal "Y12_DNA",                                         precision: 52, scale: 2
    t.decimal "Y12_Serum",                                       precision: 52, scale: 2
    t.decimal "Y12_Plasma",                                      precision: 52, scale: 2
    t.decimal "Y12_Lymphocyte",                                  precision: 52, scale: 2
    t.decimal "Y12_Cell_Line",                                   precision: 52, scale: 2
    t.decimal "Y12_Stool_Dry",                                   precision: 52, scale: 2
    t.decimal "Y12_Stool_Wet",                                   precision: 52, scale: 2
    t.decimal "Y12_Stool_Wet_Media",                             precision: 52, scale: 2
    t.index ["SubjectID"], name: "ixsid", using: :btree
  end

  create_table "_year13_detailed", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "SubjectID"
    t.integer "Y13_ID",                                                                                         default: 0,  null: false
    t.string  "Y13_Status",                                              limit: 30,                                                       collation: "utf8_general_ci"
    t.date    "Y13_ExamDate"
    t.integer "Y13_AgeAtExam"
    t.string  "Y13_DiseaseCourse",                                       limit: 3,                                                        collation: "utf8_general_ci"
    t.integer "Y13_DiseaseDuration"
    t.string  "Y13_Cumulative_Prior_Attacks",                            limit: 21,                             default: "", null: false, collation: "utf8_general_ci"
    t.text    "Y13_Cumulative_Prior_Attack_Dates",                       limit: 65535,                                                    collation: "utf8_general_ci"
    t.decimal "Y13_EDSS",                                                              precision: 3,  scale: 1
    t.decimal "Y13_MSSS",                                                              precision: 4,  scale: 2
    t.string  "Y13_FS_Visual",                                           limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y13_FS_Brainstem",                                        limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y13_FS_Pyramidal",                                        limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y13_FS_Cerebellar",                                       limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y13_FS_Sensory",                                          limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y13_FS_BowelBladder",                                     limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y13_FS_Mental",                                           limit: 50,                                                       collation: "utf8_general_ci"
    t.decimal "Y13_MSFC_PASAT3_Score",                                                 precision: 5,  scale: 2
    t.string  "Y13_MSFC_PASAT3_Analytical_Status",                       limit: 50,                                                       collation: "utf8_general_ci"
    t.float   "Y13_MSFC_25FTW_Trial1_Seconds",                           limit: 53
    t.float   "Y13_MSFC_25FTW_Trial2_Seconds",                           limit: 53
    t.string  "Y13_MSFC_25FTW_Trial1_AFO",                               limit: 1,                                                        collation: "utf8_general_ci"
    t.string  "Y13_MSFC_25FTW_Trial2_AFO",                               limit: 1,                                                        collation: "utf8_general_ci"
    t.string  "Y13_MSFC_25FTW_Trial1_Unilat_Assist_Device",              limit: 20,                                                       collation: "utf8_general_ci"
    t.string  "Y13_MSFC_25FTW_Trial2_Unilat_Assist_Device",              limit: 20,                                                       collation: "utf8_general_ci"
    t.string  "Y13_MSFC_25FTW_Trial1_Bilat_Assist_Device",               limit: 20,                                                       collation: "utf8_general_ci"
    t.string  "Y13_MSFC_25FTW_Trial2_Bilat_Assist_Device",               limit: 20,                                                       collation: "utf8_general_ci"
    t.string  "Y13_MSFC_25FTW_Trial1_Analytical_Status",                 limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y13_MSFC_25FTW_Trial2_Analytical_Status",                 limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y13_MSFC_9HPT_Dominant_Hand",                             limit: 2,                                                        collation: "utf8_general_ci"
    t.float   "Y13_MSFC_9HPT_Dominant_Hand_Trial1_Seconds",              limit: 53
    t.float   "Y13_MSFC_9HPT_Dominant_Hand_Trial2_Seconds",              limit: 53
    t.float   "Y13_MSFC_9HPT_NonDominant_Hand_Trial1_Seconds",           limit: 53
    t.float   "Y13_MSFC_9HPT_NonDominant_Hand_Trial2_Seconds",           limit: 53
    t.string  "Y13_MSFC_9HPT_Dominant_Hand_Trial1_Analytical_Status",    limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y13_MSFC_9HPT_Dominant_Hand_Trial2_Analytical_Status",    limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y13_MSFC_9HPT_NonDominant_Hand_Trial1_Analytical_Status", limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y13_MSFC_9HPT_NonDominant_Hand_Trial2_Analytical_Status", limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y13_Treatment_Status",                                    limit: 7,                                                        collation: "utf8_general_ci"
    t.text    "Y13_Cumulative_Prior_Treatments",                         limit: 65535,                                                    collation: "utf8_general_ci"
    t.string  "Y13_Microbiome_Sample",                                   limit: 12,                                                       collation: "utf8_general_ci"
    t.string  "Y13_Repository_Date",                                     limit: 10,                             default: "", null: false, collation: "utf8_general_ci"
    t.decimal "Y13_DNA",                                                               precision: 52, scale: 2
    t.decimal "Y13_Serum",                                                             precision: 52, scale: 2
    t.decimal "Y13_Plasma",                                                            precision: 52, scale: 2
    t.decimal "Y13_Lymphocyte",                                                        precision: 52, scale: 2
    t.decimal "Y13_Cell_Line",                                                         precision: 52, scale: 2
    t.index ["SubjectID"], name: "ixsid", using: :btree
  end

  create_table "_year13_simple", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "SubjectID"
    t.integer "Y13_ID",                                                                   default: 0,  null: false
    t.string  "Y13_Status",                        limit: 30,                                                       collation: "utf8_general_ci"
    t.date    "Y13_ExamDate"
    t.integer "Y13_AgeAtExam"
    t.string  "Y13_DiseaseCourse",                 limit: 3,                                                        collation: "utf8_general_ci"
    t.integer "Y13_DiseaseDuration"
    t.string  "Y13_Cumulative_Prior_Attacks",      limit: 21,                             default: "", null: false, collation: "utf8_general_ci"
    t.text    "Y13_Cumulative_Prior_Attack_Dates", limit: 65535,                                                    collation: "utf8_general_ci"
    t.decimal "Y13_EDSS",                                        precision: 3,  scale: 1
    t.decimal "Y13_MSSS",                                        precision: 4,  scale: 2
    t.string  "Y13_Treatment_Status",              limit: 7,                                                        collation: "utf8_general_ci"
    t.text    "Y13_Cumulative_Prior_Treatments",   limit: 65535,                                                    collation: "utf8_general_ci"
    t.string  "Y13_Microbiome_Sample",             limit: 12,                                                       collation: "utf8_general_ci"
    t.string  "Y13_Repository_Date",               limit: 10,                             default: "", null: false, collation: "utf8_general_ci"
    t.decimal "Y13_DNA",                                         precision: 52, scale: 2
    t.decimal "Y13_Serum",                                       precision: 52, scale: 2
    t.decimal "Y13_Plasma",                                      precision: 52, scale: 2
    t.decimal "Y13_Lymphocyte",                                  precision: 52, scale: 2
    t.decimal "Y13_Cell_Line",                                   precision: 52, scale: 2
    t.decimal "Y13_Stool_Dry",                                   precision: 52, scale: 2
    t.decimal "Y13_Stool_Wet",                                   precision: 52, scale: 2
    t.decimal "Y13_Stool_Wet_Media",                             precision: 52, scale: 2
    t.index ["SubjectID"], name: "ixsid", using: :btree
  end

  create_table "_year1_detailed", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "SubjectID"
    t.integer "Y1_ID",                                                                                         default: 0,  null: false
    t.string  "Y1_Status",                                              limit: 30,                                                       collation: "utf8_general_ci"
    t.date    "Y1_ExamDate"
    t.integer "Y1_AgeAtExam"
    t.string  "Y1_DiseaseCourse",                                       limit: 3,                                                        collation: "utf8_general_ci"
    t.integer "Y1_DiseaseDuration"
    t.string  "Y1_Cumulative_Prior_Attacks",                            limit: 21,                             default: "", null: false, collation: "utf8_general_ci"
    t.text    "Y1_Cumulative_Prior_Attack_Dates",                       limit: 65535,                                                    collation: "utf8_general_ci"
    t.decimal "Y1_EDSS",                                                              precision: 3,  scale: 1
    t.decimal "Y1_MSSS",                                                              precision: 4,  scale: 2
    t.string  "Y1_FS_Visual",                                           limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y1_FS_Brainstem",                                        limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y1_FS_Pyramidal",                                        limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y1_FS_Cerebellar",                                       limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y1_FS_Sensory",                                          limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y1_FS_BowelBladder",                                     limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y1_FS_Mental",                                           limit: 50,                                                       collation: "utf8_general_ci"
    t.decimal "Y1_MSFC_PASAT3_Score",                                                 precision: 5,  scale: 2
    t.string  "Y1_MSFC_PASAT3_Analytical_Status",                       limit: 50,                                                       collation: "utf8_general_ci"
    t.float   "Y1_MSFC_25FTW_Trial1_Seconds",                           limit: 53
    t.float   "Y1_MSFC_25FTW_Trial2_Seconds",                           limit: 53
    t.string  "Y1_MSFC_25FTW_Trial1_AFO",                               limit: 1,                                                        collation: "utf8_general_ci"
    t.string  "Y1_MSFC_25FTW_Trial2_AFO",                               limit: 1,                                                        collation: "utf8_general_ci"
    t.string  "Y1_MSFC_25FTW_Trial1_Unilat_Assist_Device",              limit: 20,                                                       collation: "utf8_general_ci"
    t.string  "Y1_MSFC_25FTW_Trial2_Unilat_Assist_Device",              limit: 20,                                                       collation: "utf8_general_ci"
    t.string  "Y1_MSFC_25FTW_Trial1_Bilat_Assist_Device",               limit: 20,                                                       collation: "utf8_general_ci"
    t.string  "Y1_MSFC_25FTW_Trial2_Bilat_Assist_Device",               limit: 20,                                                       collation: "utf8_general_ci"
    t.string  "Y1_MSFC_25FTW_Trial1_Analytical_Status",                 limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y1_MSFC_25FTW_Trial2_Analytical_Status",                 limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y1_MSFC_9HPT_Dominant_Hand",                             limit: 2,                                                        collation: "utf8_general_ci"
    t.float   "Y1_MSFC_9HPT_Dominant_Hand_Trial1_Seconds",              limit: 53
    t.float   "Y1_MSFC_9HPT_Dominant_Hand_Trial2_Seconds",              limit: 53
    t.float   "Y1_MSFC_9HPT_NonDominant_Hand_Trial1_Seconds",           limit: 53
    t.float   "Y1_MSFC_9HPT_NonDominant_Hand_Trial2_Seconds",           limit: 53
    t.string  "Y1_MSFC_9HPT_Dominant_Hand_Trial1_Analytical_Status",    limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y1_MSFC_9HPT_Dominant_Hand_Trial2_Analytical_Status",    limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y1_MSFC_9HPT_NonDominant_Hand_Trial1_Analytical_Status", limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y1_MSFC_9HPT_NonDominant_Hand_Trial2_Analytical_Status", limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y1_Treatment_Status",                                    limit: 7,                                                        collation: "utf8_general_ci"
    t.text    "Y1_Cumulative_Prior_Treatments",                         limit: 65535,                                                    collation: "utf8_general_ci"
    t.string  "Y1_Microbiome_Sample",                                   limit: 12,                                                       collation: "utf8_general_ci"
    t.string  "Y1_Repository_Date",                                     limit: 10,                             default: "", null: false, collation: "utf8_general_ci"
    t.decimal "Y1_DNA",                                                               precision: 52, scale: 2
    t.decimal "Y1_Serum",                                                             precision: 52, scale: 2
    t.decimal "Y1_Plasma",                                                            precision: 52, scale: 2
    t.decimal "Y1_Lymphocyte",                                                        precision: 52, scale: 2
    t.decimal "Y1_Cell_Line",                                                         precision: 52, scale: 2
    t.index ["SubjectID"], name: "ixsid", using: :btree
  end

  create_table "_year1_simple", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "SubjectID"
    t.integer "Y1_ID",                                                                   default: 0,  null: false
    t.string  "Y1_Status",                        limit: 30,                                                       collation: "utf8_general_ci"
    t.date    "Y1_ExamDate"
    t.integer "Y1_AgeAtExam"
    t.string  "Y1_DiseaseCourse",                 limit: 3,                                                        collation: "utf8_general_ci"
    t.integer "Y1_DiseaseDuration"
    t.string  "Y1_Cumulative_Prior_Attacks",      limit: 21,                             default: "", null: false, collation: "utf8_general_ci"
    t.text    "Y1_Cumulative_Prior_Attack_Dates", limit: 65535,                                                    collation: "utf8_general_ci"
    t.decimal "Y1_EDSS",                                        precision: 3,  scale: 1
    t.decimal "Y1_MSSS",                                        precision: 4,  scale: 2
    t.string  "Y1_Treatment_Status",              limit: 7,                                                        collation: "utf8_general_ci"
    t.text    "Y1_Cumulative_Prior_Treatments",   limit: 65535,                                                    collation: "utf8_general_ci"
    t.string  "Y1_Microbiome_Sample",             limit: 12,                                                       collation: "utf8_general_ci"
    t.string  "Y1_Repository_Date",               limit: 10,                             default: "", null: false, collation: "utf8_general_ci"
    t.decimal "Y1_DNA",                                         precision: 52, scale: 2
    t.decimal "Y1_Serum",                                       precision: 52, scale: 2
    t.decimal "Y1_Plasma",                                      precision: 52, scale: 2
    t.decimal "Y1_Lymphocyte",                                  precision: 52, scale: 2
    t.decimal "Y1_Cell_Line",                                   precision: 52, scale: 2
    t.decimal "Y1_Stool_Dry",                                   precision: 52, scale: 2
    t.decimal "Y1_Stool_Wet",                                   precision: 52, scale: 2
    t.decimal "Y1_Stool_Wet_Media",                             precision: 52, scale: 2
    t.index ["SubjectID"], name: "ixsid", using: :btree
  end

  create_table "_year2_detailed", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "SubjectID"
    t.integer "Y2_ID",                                                                                         default: 0,  null: false
    t.string  "Y2_Status",                                              limit: 30,                                                       collation: "utf8_general_ci"
    t.date    "Y2_ExamDate"
    t.integer "Y2_AgeAtExam"
    t.string  "Y2_DiseaseCourse",                                       limit: 3,                                                        collation: "utf8_general_ci"
    t.integer "Y2_DiseaseDuration"
    t.string  "Y2_Cumulative_Prior_Attacks",                            limit: 21,                             default: "", null: false, collation: "utf8_general_ci"
    t.text    "Y2_Cumulative_Prior_Attack_Dates",                       limit: 65535,                                                    collation: "utf8_general_ci"
    t.decimal "Y2_EDSS",                                                              precision: 3,  scale: 1
    t.decimal "Y2_MSSS",                                                              precision: 4,  scale: 2
    t.string  "Y2_FS_Visual",                                           limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y2_FS_Brainstem",                                        limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y2_FS_Pyramidal",                                        limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y2_FS_Cerebellar",                                       limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y2_FS_Sensory",                                          limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y2_FS_BowelBladder",                                     limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y2_FS_Mental",                                           limit: 50,                                                       collation: "utf8_general_ci"
    t.decimal "Y2_MSFC_PASAT3_Score",                                                 precision: 5,  scale: 2
    t.string  "Y2_MSFC_PASAT3_Analytical_Status",                       limit: 50,                                                       collation: "utf8_general_ci"
    t.float   "Y2_MSFC_25FTW_Trial1_Seconds",                           limit: 53
    t.float   "Y2_MSFC_25FTW_Trial2_Seconds",                           limit: 53
    t.string  "Y2_MSFC_25FTW_Trial1_AFO",                               limit: 1,                                                        collation: "utf8_general_ci"
    t.string  "Y2_MSFC_25FTW_Trial2_AFO",                               limit: 1,                                                        collation: "utf8_general_ci"
    t.string  "Y2_MSFC_25FTW_Trial1_Unilat_Assist_Device",              limit: 20,                                                       collation: "utf8_general_ci"
    t.string  "Y2_MSFC_25FTW_Trial2_Unilat_Assist_Device",              limit: 20,                                                       collation: "utf8_general_ci"
    t.string  "Y2_MSFC_25FTW_Trial1_Bilat_Assist_Device",               limit: 20,                                                       collation: "utf8_general_ci"
    t.string  "Y2_MSFC_25FTW_Trial2_Bilat_Assist_Device",               limit: 20,                                                       collation: "utf8_general_ci"
    t.string  "Y2_MSFC_25FTW_Trial1_Analytical_Status",                 limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y2_MSFC_25FTW_Trial2_Analytical_Status",                 limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y2_MSFC_9HPT_Dominant_Hand",                             limit: 2,                                                        collation: "utf8_general_ci"
    t.float   "Y2_MSFC_9HPT_Dominant_Hand_Trial1_Seconds",              limit: 53
    t.float   "Y2_MSFC_9HPT_Dominant_Hand_Trial2_Seconds",              limit: 53
    t.float   "Y2_MSFC_9HPT_NonDominant_Hand_Trial1_Seconds",           limit: 53
    t.float   "Y2_MSFC_9HPT_NonDominant_Hand_Trial2_Seconds",           limit: 53
    t.string  "Y2_MSFC_9HPT_Dominant_Hand_Trial1_Analytical_Status",    limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y2_MSFC_9HPT_Dominant_Hand_Trial2_Analytical_Status",    limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y2_MSFC_9HPT_NonDominant_Hand_Trial1_Analytical_Status", limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y2_MSFC_9HPT_NonDominant_Hand_Trial2_Analytical_Status", limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y2_Treatment_Status",                                    limit: 7,                                                        collation: "utf8_general_ci"
    t.text    "Y2_Cumulative_Prior_Treatments",                         limit: 65535,                                                    collation: "utf8_general_ci"
    t.string  "Y2_Microbiome_Sample",                                   limit: 12,                                                       collation: "utf8_general_ci"
    t.string  "Y2_Repository_Date",                                     limit: 10,                             default: "", null: false, collation: "utf8_general_ci"
    t.decimal "Y2_DNA",                                                               precision: 52, scale: 2
    t.decimal "Y2_Serum",                                                             precision: 52, scale: 2
    t.decimal "Y2_Plasma",                                                            precision: 52, scale: 2
    t.decimal "Y2_Lymphocyte",                                                        precision: 52, scale: 2
    t.decimal "Y2_Cell_Line",                                                         precision: 52, scale: 2
    t.index ["SubjectID"], name: "ixsid", using: :btree
  end

  create_table "_year2_simple", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "SubjectID"
    t.integer "Y2_ID",                                                                   default: 0,  null: false
    t.string  "Y2_Status",                        limit: 30,                                                       collation: "utf8_general_ci"
    t.date    "Y2_ExamDate"
    t.integer "Y2_AgeAtExam"
    t.string  "Y2_DiseaseCourse",                 limit: 3,                                                        collation: "utf8_general_ci"
    t.integer "Y2_DiseaseDuration"
    t.string  "Y2_Cumulative_Prior_Attacks",      limit: 21,                             default: "", null: false, collation: "utf8_general_ci"
    t.text    "Y2_Cumulative_Prior_Attack_Dates", limit: 65535,                                                    collation: "utf8_general_ci"
    t.decimal "Y2_EDSS",                                        precision: 3,  scale: 1
    t.decimal "Y2_MSSS",                                        precision: 4,  scale: 2
    t.string  "Y2_Treatment_Status",              limit: 7,                                                        collation: "utf8_general_ci"
    t.text    "Y2_Cumulative_Prior_Treatments",   limit: 65535,                                                    collation: "utf8_general_ci"
    t.string  "Y2_Microbiome_Sample",             limit: 12,                                                       collation: "utf8_general_ci"
    t.string  "Y2_Repository_Date",               limit: 10,                             default: "", null: false, collation: "utf8_general_ci"
    t.decimal "Y2_DNA",                                         precision: 52, scale: 2
    t.decimal "Y2_Serum",                                       precision: 52, scale: 2
    t.decimal "Y2_Plasma",                                      precision: 52, scale: 2
    t.decimal "Y2_Lymphocyte",                                  precision: 52, scale: 2
    t.decimal "Y2_Cell_Line",                                   precision: 52, scale: 2
    t.decimal "Y2_Stool_Dry",                                   precision: 52, scale: 2
    t.decimal "Y2_Stool_Wet",                                   precision: 52, scale: 2
    t.decimal "Y2_Stool_Wet_Media",                             precision: 52, scale: 2
    t.index ["SubjectID"], name: "ixsid", using: :btree
  end

  create_table "_year3_detailed", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "SubjectID"
    t.integer "Y3_ID",                                                                                         default: 0,  null: false
    t.string  "Y3_Status",                                              limit: 30,                                                       collation: "utf8_general_ci"
    t.date    "Y3_ExamDate"
    t.integer "Y3_AgeAtExam"
    t.string  "Y3_DiseaseCourse",                                       limit: 3,                                                        collation: "utf8_general_ci"
    t.integer "Y3_DiseaseDuration"
    t.string  "Y3_Cumulative_Prior_Attacks",                            limit: 21,                             default: "", null: false, collation: "utf8_general_ci"
    t.text    "Y3_Cumulative_Prior_Attack_Dates",                       limit: 65535,                                                    collation: "utf8_general_ci"
    t.decimal "Y3_EDSS",                                                              precision: 3,  scale: 1
    t.decimal "Y3_MSSS",                                                              precision: 4,  scale: 2
    t.string  "Y3_FS_Visual",                                           limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y3_FS_Brainstem",                                        limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y3_FS_Pyramidal",                                        limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y3_FS_Cerebellar",                                       limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y3_FS_Sensory",                                          limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y3_FS_BowelBladder",                                     limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y3_FS_Mental",                                           limit: 50,                                                       collation: "utf8_general_ci"
    t.decimal "Y3_MSFC_PASAT3_Score",                                                 precision: 5,  scale: 2
    t.string  "Y3_MSFC_PASAT3_Analytical_Status",                       limit: 50,                                                       collation: "utf8_general_ci"
    t.float   "Y3_MSFC_25FTW_Trial1_Seconds",                           limit: 53
    t.float   "Y3_MSFC_25FTW_Trial2_Seconds",                           limit: 53
    t.string  "Y3_MSFC_25FTW_Trial1_AFO",                               limit: 1,                                                        collation: "utf8_general_ci"
    t.string  "Y3_MSFC_25FTW_Trial2_AFO",                               limit: 1,                                                        collation: "utf8_general_ci"
    t.string  "Y3_MSFC_25FTW_Trial1_Unilat_Assist_Device",              limit: 20,                                                       collation: "utf8_general_ci"
    t.string  "Y3_MSFC_25FTW_Trial2_Unilat_Assist_Device",              limit: 20,                                                       collation: "utf8_general_ci"
    t.string  "Y3_MSFC_25FTW_Trial1_Bilat_Assist_Device",               limit: 20,                                                       collation: "utf8_general_ci"
    t.string  "Y3_MSFC_25FTW_Trial2_Bilat_Assist_Device",               limit: 20,                                                       collation: "utf8_general_ci"
    t.string  "Y3_MSFC_25FTW_Trial1_Analytical_Status",                 limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y3_MSFC_25FTW_Trial2_Analytical_Status",                 limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y3_MSFC_9HPT_Dominant_Hand",                             limit: 2,                                                        collation: "utf8_general_ci"
    t.float   "Y3_MSFC_9HPT_Dominant_Hand_Trial1_Seconds",              limit: 53
    t.float   "Y3_MSFC_9HPT_Dominant_Hand_Trial2_Seconds",              limit: 53
    t.float   "Y3_MSFC_9HPT_NonDominant_Hand_Trial1_Seconds",           limit: 53
    t.float   "Y3_MSFC_9HPT_NonDominant_Hand_Trial2_Seconds",           limit: 53
    t.string  "Y3_MSFC_9HPT_Dominant_Hand_Trial1_Analytical_Status",    limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y3_MSFC_9HPT_Dominant_Hand_Trial2_Analytical_Status",    limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y3_MSFC_9HPT_NonDominant_Hand_Trial1_Analytical_Status", limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y3_MSFC_9HPT_NonDominant_Hand_Trial2_Analytical_Status", limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y3_Treatment_Status",                                    limit: 7,                                                        collation: "utf8_general_ci"
    t.text    "Y3_Cumulative_Prior_Treatments",                         limit: 65535,                                                    collation: "utf8_general_ci"
    t.string  "Y3_Microbiome_Sample",                                   limit: 12,                                                       collation: "utf8_general_ci"
    t.string  "Y3_Repository_Date",                                     limit: 10,                             default: "", null: false, collation: "utf8_general_ci"
    t.decimal "Y3_DNA",                                                               precision: 52, scale: 2
    t.decimal "Y3_Serum",                                                             precision: 52, scale: 2
    t.decimal "Y3_Plasma",                                                            precision: 52, scale: 2
    t.decimal "Y3_Lymphocyte",                                                        precision: 52, scale: 2
    t.decimal "Y3_Cell_Line",                                                         precision: 52, scale: 2
    t.index ["SubjectID"], name: "ixsid", using: :btree
  end

  create_table "_year3_simple", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "SubjectID"
    t.integer "Y3_ID",                                                                   default: 0,  null: false
    t.string  "Y3_Status",                        limit: 30,                                                       collation: "utf8_general_ci"
    t.date    "Y3_ExamDate"
    t.integer "Y3_AgeAtExam"
    t.string  "Y3_DiseaseCourse",                 limit: 3,                                                        collation: "utf8_general_ci"
    t.integer "Y3_DiseaseDuration"
    t.string  "Y3_Cumulative_Prior_Attacks",      limit: 21,                             default: "", null: false, collation: "utf8_general_ci"
    t.text    "Y3_Cumulative_Prior_Attack_Dates", limit: 65535,                                                    collation: "utf8_general_ci"
    t.decimal "Y3_EDSS",                                        precision: 3,  scale: 1
    t.decimal "Y3_MSSS",                                        precision: 4,  scale: 2
    t.string  "Y3_Treatment_Status",              limit: 7,                                                        collation: "utf8_general_ci"
    t.text    "Y3_Cumulative_Prior_Treatments",   limit: 65535,                                                    collation: "utf8_general_ci"
    t.string  "Y3_Microbiome_Sample",             limit: 12,                                                       collation: "utf8_general_ci"
    t.string  "Y3_Repository_Date",               limit: 10,                             default: "", null: false, collation: "utf8_general_ci"
    t.decimal "Y3_DNA",                                         precision: 52, scale: 2
    t.decimal "Y3_Serum",                                       precision: 52, scale: 2
    t.decimal "Y3_Plasma",                                      precision: 52, scale: 2
    t.decimal "Y3_Lymphocyte",                                  precision: 52, scale: 2
    t.decimal "Y3_Cell_Line",                                   precision: 52, scale: 2
    t.decimal "Y3_Stool_Dry",                                   precision: 52, scale: 2
    t.decimal "Y3_Stool_Wet",                                   precision: 52, scale: 2
    t.decimal "Y3_Stool_Wet_Media",                             precision: 52, scale: 2
    t.index ["SubjectID"], name: "ixsid", using: :btree
  end

  create_table "_year4_detailed", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "SubjectID"
    t.integer "Y4_ID",                                                                                         default: 0,  null: false
    t.string  "Y4_Status",                                              limit: 30,                                                       collation: "utf8_general_ci"
    t.date    "Y4_ExamDate"
    t.integer "Y4_AgeAtExam"
    t.string  "Y4_DiseaseCourse",                                       limit: 3,                                                        collation: "utf8_general_ci"
    t.integer "Y4_DiseaseDuration"
    t.string  "Y4_Cumulative_Prior_Attacks",                            limit: 21,                             default: "", null: false, collation: "utf8_general_ci"
    t.text    "Y4_Cumulative_Prior_Attack_Dates",                       limit: 65535,                                                    collation: "utf8_general_ci"
    t.decimal "Y4_EDSS",                                                              precision: 3,  scale: 1
    t.decimal "Y4_MSSS",                                                              precision: 4,  scale: 2
    t.string  "Y4_FS_Visual",                                           limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y4_FS_Brainstem",                                        limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y4_FS_Pyramidal",                                        limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y4_FS_Cerebellar",                                       limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y4_FS_Sensory",                                          limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y4_FS_BowelBladder",                                     limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y4_FS_Mental",                                           limit: 50,                                                       collation: "utf8_general_ci"
    t.decimal "Y4_MSFC_PASAT3_Score",                                                 precision: 5,  scale: 2
    t.string  "Y4_MSFC_PASAT3_Analytical_Status",                       limit: 50,                                                       collation: "utf8_general_ci"
    t.float   "Y4_MSFC_25FTW_Trial1_Seconds",                           limit: 53
    t.float   "Y4_MSFC_25FTW_Trial2_Seconds",                           limit: 53
    t.string  "Y4_MSFC_25FTW_Trial1_AFO",                               limit: 1,                                                        collation: "utf8_general_ci"
    t.string  "Y4_MSFC_25FTW_Trial2_AFO",                               limit: 1,                                                        collation: "utf8_general_ci"
    t.string  "Y4_MSFC_25FTW_Trial1_Unilat_Assist_Device",              limit: 20,                                                       collation: "utf8_general_ci"
    t.string  "Y4_MSFC_25FTW_Trial2_Unilat_Assist_Device",              limit: 20,                                                       collation: "utf8_general_ci"
    t.string  "Y4_MSFC_25FTW_Trial1_Bilat_Assist_Device",               limit: 20,                                                       collation: "utf8_general_ci"
    t.string  "Y4_MSFC_25FTW_Trial2_Bilat_Assist_Device",               limit: 20,                                                       collation: "utf8_general_ci"
    t.string  "Y4_MSFC_25FTW_Trial1_Analytical_Status",                 limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y4_MSFC_25FTW_Trial2_Analytical_Status",                 limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y4_MSFC_9HPT_Dominant_Hand",                             limit: 2,                                                        collation: "utf8_general_ci"
    t.float   "Y4_MSFC_9HPT_Dominant_Hand_Trial1_Seconds",              limit: 53
    t.float   "Y4_MSFC_9HPT_Dominant_Hand_Trial2_Seconds",              limit: 53
    t.float   "Y4_MSFC_9HPT_NonDominant_Hand_Trial1_Seconds",           limit: 53
    t.float   "Y4_MSFC_9HPT_NonDominant_Hand_Trial2_Seconds",           limit: 53
    t.string  "Y4_MSFC_9HPT_Dominant_Hand_Trial1_Analytical_Status",    limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y4_MSFC_9HPT_Dominant_Hand_Trial2_Analytical_Status",    limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y4_MSFC_9HPT_NonDominant_Hand_Trial1_Analytical_Status", limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y4_MSFC_9HPT_NonDominant_Hand_Trial2_Analytical_Status", limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y4_Treatment_Status",                                    limit: 7,                                                        collation: "utf8_general_ci"
    t.text    "Y4_Cumulative_Prior_Treatments",                         limit: 65535,                                                    collation: "utf8_general_ci"
    t.string  "Y4_Microbiome_Sample",                                   limit: 12,                                                       collation: "utf8_general_ci"
    t.string  "Y4_Repository_Date",                                     limit: 10,                             default: "", null: false, collation: "utf8_general_ci"
    t.decimal "Y4_DNA",                                                               precision: 52, scale: 2
    t.decimal "Y4_Serum",                                                             precision: 52, scale: 2
    t.decimal "Y4_Plasma",                                                            precision: 52, scale: 2
    t.decimal "Y4_Lymphocyte",                                                        precision: 52, scale: 2
    t.decimal "Y4_Cell_Line",                                                         precision: 52, scale: 2
    t.index ["SubjectID"], name: "ixsid", using: :btree
  end

  create_table "_year4_simple", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "SubjectID"
    t.integer "Y4_ID",                                                                   default: 0,  null: false
    t.string  "Y4_Status",                        limit: 30,                                                       collation: "utf8_general_ci"
    t.date    "Y4_ExamDate"
    t.integer "Y4_AgeAtExam"
    t.string  "Y4_DiseaseCourse",                 limit: 3,                                                        collation: "utf8_general_ci"
    t.integer "Y4_DiseaseDuration"
    t.string  "Y4_Cumulative_Prior_Attacks",      limit: 21,                             default: "", null: false, collation: "utf8_general_ci"
    t.text    "Y4_Cumulative_Prior_Attack_Dates", limit: 65535,                                                    collation: "utf8_general_ci"
    t.decimal "Y4_EDSS",                                        precision: 3,  scale: 1
    t.decimal "Y4_MSSS",                                        precision: 4,  scale: 2
    t.string  "Y4_Treatment_Status",              limit: 7,                                                        collation: "utf8_general_ci"
    t.text    "Y4_Cumulative_Prior_Treatments",   limit: 65535,                                                    collation: "utf8_general_ci"
    t.string  "Y4_Microbiome_Sample",             limit: 12,                                                       collation: "utf8_general_ci"
    t.string  "Y4_Repository_Date",               limit: 10,                             default: "", null: false, collation: "utf8_general_ci"
    t.decimal "Y4_DNA",                                         precision: 52, scale: 2
    t.decimal "Y4_Serum",                                       precision: 52, scale: 2
    t.decimal "Y4_Plasma",                                      precision: 52, scale: 2
    t.decimal "Y4_Lymphocyte",                                  precision: 52, scale: 2
    t.decimal "Y4_Cell_Line",                                   precision: 52, scale: 2
    t.decimal "Y4_Stool_Dry",                                   precision: 52, scale: 2
    t.decimal "Y4_Stool_Wet",                                   precision: 52, scale: 2
    t.decimal "Y4_Stool_Wet_Media",                             precision: 52, scale: 2
    t.index ["SubjectID"], name: "ixsid", using: :btree
  end

  create_table "_year5_detailed", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "SubjectID"
    t.integer "Y5_ID",                                                                                         default: 0,  null: false
    t.string  "Y5_Status",                                              limit: 30,                                                       collation: "utf8_general_ci"
    t.date    "Y5_ExamDate"
    t.integer "Y5_AgeAtExam"
    t.string  "Y5_DiseaseCourse",                                       limit: 3,                                                        collation: "utf8_general_ci"
    t.integer "Y5_DiseaseDuration"
    t.string  "Y5_Cumulative_Prior_Attacks",                            limit: 21,                             default: "", null: false, collation: "utf8_general_ci"
    t.text    "Y5_Cumulative_Prior_Attack_Dates",                       limit: 65535,                                                    collation: "utf8_general_ci"
    t.decimal "Y5_EDSS",                                                              precision: 3,  scale: 1
    t.decimal "Y5_MSSS",                                                              precision: 4,  scale: 2
    t.string  "Y5_FS_Visual",                                           limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y5_FS_Brainstem",                                        limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y5_FS_Pyramidal",                                        limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y5_FS_Cerebellar",                                       limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y5_FS_Sensory",                                          limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y5_FS_BowelBladder",                                     limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y5_FS_Mental",                                           limit: 50,                                                       collation: "utf8_general_ci"
    t.decimal "Y5_MSFC_PASAT3_Score",                                                 precision: 5,  scale: 2
    t.string  "Y5_MSFC_PASAT3_Analytical_Status",                       limit: 50,                                                       collation: "utf8_general_ci"
    t.float   "Y5_MSFC_25FTW_Trial1_Seconds",                           limit: 53
    t.float   "Y5_MSFC_25FTW_Trial2_Seconds",                           limit: 53
    t.string  "Y5_MSFC_25FTW_Trial1_AFO",                               limit: 1,                                                        collation: "utf8_general_ci"
    t.string  "Y5_MSFC_25FTW_Trial2_AFO",                               limit: 1,                                                        collation: "utf8_general_ci"
    t.string  "Y5_MSFC_25FTW_Trial1_Unilat_Assist_Device",              limit: 20,                                                       collation: "utf8_general_ci"
    t.string  "Y5_MSFC_25FTW_Trial2_Unilat_Assist_Device",              limit: 20,                                                       collation: "utf8_general_ci"
    t.string  "Y5_MSFC_25FTW_Trial1_Bilat_Assist_Device",               limit: 20,                                                       collation: "utf8_general_ci"
    t.string  "Y5_MSFC_25FTW_Trial2_Bilat_Assist_Device",               limit: 20,                                                       collation: "utf8_general_ci"
    t.string  "Y5_MSFC_25FTW_Trial1_Analytical_Status",                 limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y5_MSFC_25FTW_Trial2_Analytical_Status",                 limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y5_MSFC_9HPT_Dominant_Hand",                             limit: 2,                                                        collation: "utf8_general_ci"
    t.float   "Y5_MSFC_9HPT_Dominant_Hand_Trial1_Seconds",              limit: 53
    t.float   "Y5_MSFC_9HPT_Dominant_Hand_Trial2_Seconds",              limit: 53
    t.float   "Y5_MSFC_9HPT_NonDominant_Hand_Trial1_Seconds",           limit: 53
    t.float   "Y5_MSFC_9HPT_NonDominant_Hand_Trial2_Seconds",           limit: 53
    t.string  "Y5_MSFC_9HPT_Dominant_Hand_Trial1_Analytical_Status",    limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y5_MSFC_9HPT_Dominant_Hand_Trial2_Analytical_Status",    limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y5_MSFC_9HPT_NonDominant_Hand_Trial1_Analytical_Status", limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y5_MSFC_9HPT_NonDominant_Hand_Trial2_Analytical_Status", limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y5_Treatment_Status",                                    limit: 7,                                                        collation: "utf8_general_ci"
    t.text    "Y5_Cumulative_Prior_Treatments",                         limit: 65535,                                                    collation: "utf8_general_ci"
    t.string  "Y5_Microbiome_Sample",                                   limit: 12,                                                       collation: "utf8_general_ci"
    t.string  "Y5_Repository_Date",                                     limit: 10,                             default: "", null: false, collation: "utf8_general_ci"
    t.decimal "Y5_DNA",                                                               precision: 52, scale: 2
    t.decimal "Y5_Serum",                                                             precision: 52, scale: 2
    t.decimal "Y5_Plasma",                                                            precision: 52, scale: 2
    t.decimal "Y5_Lymphocyte",                                                        precision: 52, scale: 2
    t.decimal "Y5_Cell_Line",                                                         precision: 52, scale: 2
    t.index ["SubjectID"], name: "ixsid", using: :btree
  end

  create_table "_year5_simple", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "SubjectID"
    t.integer "Y5_ID",                                                                   default: 0,  null: false
    t.string  "Y5_Status",                        limit: 30,                                                       collation: "utf8_general_ci"
    t.date    "Y5_ExamDate"
    t.integer "Y5_AgeAtExam"
    t.string  "Y5_DiseaseCourse",                 limit: 3,                                                        collation: "utf8_general_ci"
    t.integer "Y5_DiseaseDuration"
    t.string  "Y5_Cumulative_Prior_Attacks",      limit: 21,                             default: "", null: false, collation: "utf8_general_ci"
    t.text    "Y5_Cumulative_Prior_Attack_Dates", limit: 65535,                                                    collation: "utf8_general_ci"
    t.decimal "Y5_EDSS",                                        precision: 3,  scale: 1
    t.decimal "Y5_MSSS",                                        precision: 4,  scale: 2
    t.string  "Y5_Treatment_Status",              limit: 7,                                                        collation: "utf8_general_ci"
    t.text    "Y5_Cumulative_Prior_Treatments",   limit: 65535,                                                    collation: "utf8_general_ci"
    t.string  "Y5_Microbiome_Sample",             limit: 12,                                                       collation: "utf8_general_ci"
    t.string  "Y5_Repository_Date",               limit: 10,                             default: "", null: false, collation: "utf8_general_ci"
    t.decimal "Y5_DNA",                                         precision: 52, scale: 2
    t.decimal "Y5_Serum",                                       precision: 52, scale: 2
    t.decimal "Y5_Plasma",                                      precision: 52, scale: 2
    t.decimal "Y5_Lymphocyte",                                  precision: 52, scale: 2
    t.decimal "Y5_Cell_Line",                                   precision: 52, scale: 2
    t.decimal "Y5_Stool_Dry",                                   precision: 52, scale: 2
    t.decimal "Y5_Stool_Wet",                                   precision: 52, scale: 2
    t.decimal "Y5_Stool_Wet_Media",                             precision: 52, scale: 2
    t.index ["SubjectID"], name: "ixsid", using: :btree
  end

  create_table "_year6_detailed", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "SubjectID"
    t.integer "Y6_ID",                                                                                         default: 0,  null: false
    t.string  "Y6_Status",                                              limit: 30,                                                       collation: "utf8_general_ci"
    t.date    "Y6_ExamDate"
    t.integer "Y6_AgeAtExam"
    t.string  "Y6_DiseaseCourse",                                       limit: 3,                                                        collation: "utf8_general_ci"
    t.integer "Y6_DiseaseDuration"
    t.string  "Y6_Cumulative_Prior_Attacks",                            limit: 21,                             default: "", null: false, collation: "utf8_general_ci"
    t.text    "Y6_Cumulative_Prior_Attack_Dates",                       limit: 65535,                                                    collation: "utf8_general_ci"
    t.decimal "Y6_EDSS",                                                              precision: 3,  scale: 1
    t.decimal "Y6_MSSS",                                                              precision: 4,  scale: 2
    t.string  "Y6_FS_Visual",                                           limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y6_FS_Brainstem",                                        limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y6_FS_Pyramidal",                                        limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y6_FS_Cerebellar",                                       limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y6_FS_Sensory",                                          limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y6_FS_BowelBladder",                                     limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y6_FS_Mental",                                           limit: 50,                                                       collation: "utf8_general_ci"
    t.decimal "Y6_MSFC_PASAT3_Score",                                                 precision: 5,  scale: 2
    t.string  "Y6_MSFC_PASAT3_Analytical_Status",                       limit: 50,                                                       collation: "utf8_general_ci"
    t.float   "Y6_MSFC_25FTW_Trial1_Seconds",                           limit: 53
    t.float   "Y6_MSFC_25FTW_Trial2_Seconds",                           limit: 53
    t.string  "Y6_MSFC_25FTW_Trial1_AFO",                               limit: 1,                                                        collation: "utf8_general_ci"
    t.string  "Y6_MSFC_25FTW_Trial2_AFO",                               limit: 1,                                                        collation: "utf8_general_ci"
    t.string  "Y6_MSFC_25FTW_Trial1_Unilat_Assist_Device",              limit: 20,                                                       collation: "utf8_general_ci"
    t.string  "Y6_MSFC_25FTW_Trial2_Unilat_Assist_Device",              limit: 20,                                                       collation: "utf8_general_ci"
    t.string  "Y6_MSFC_25FTW_Trial1_Bilat_Assist_Device",               limit: 20,                                                       collation: "utf8_general_ci"
    t.string  "Y6_MSFC_25FTW_Trial2_Bilat_Assist_Device",               limit: 20,                                                       collation: "utf8_general_ci"
    t.string  "Y6_MSFC_25FTW_Trial1_Analytical_Status",                 limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y6_MSFC_25FTW_Trial2_Analytical_Status",                 limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y6_MSFC_9HPT_Dominant_Hand",                             limit: 2,                                                        collation: "utf8_general_ci"
    t.float   "Y6_MSFC_9HPT_Dominant_Hand_Trial1_Seconds",              limit: 53
    t.float   "Y6_MSFC_9HPT_Dominant_Hand_Trial2_Seconds",              limit: 53
    t.float   "Y6_MSFC_9HPT_NonDominant_Hand_Trial1_Seconds",           limit: 53
    t.float   "Y6_MSFC_9HPT_NonDominant_Hand_Trial2_Seconds",           limit: 53
    t.string  "Y6_MSFC_9HPT_Dominant_Hand_Trial1_Analytical_Status",    limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y6_MSFC_9HPT_Dominant_Hand_Trial2_Analytical_Status",    limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y6_MSFC_9HPT_NonDominant_Hand_Trial1_Analytical_Status", limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y6_MSFC_9HPT_NonDominant_Hand_Trial2_Analytical_Status", limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y6_Treatment_Status",                                    limit: 7,                                                        collation: "utf8_general_ci"
    t.text    "Y6_Cumulative_Prior_Treatments",                         limit: 65535,                                                    collation: "utf8_general_ci"
    t.string  "Y6_Microbiome_Sample",                                   limit: 12,                                                       collation: "utf8_general_ci"
    t.string  "Y6_Repository_Date",                                     limit: 10,                             default: "", null: false, collation: "utf8_general_ci"
    t.decimal "Y6_DNA",                                                               precision: 52, scale: 2
    t.decimal "Y6_Serum",                                                             precision: 52, scale: 2
    t.decimal "Y6_Plasma",                                                            precision: 52, scale: 2
    t.decimal "Y6_Lymphocyte",                                                        precision: 52, scale: 2
    t.decimal "Y6_Cell_Line",                                                         precision: 52, scale: 2
    t.index ["SubjectID"], name: "ixsid", using: :btree
  end

  create_table "_year6_simple", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "SubjectID"
    t.integer "Y6_ID",                                                                   default: 0,  null: false
    t.string  "Y6_Status",                        limit: 30,                                                       collation: "utf8_general_ci"
    t.date    "Y6_ExamDate"
    t.integer "Y6_AgeAtExam"
    t.string  "Y6_DiseaseCourse",                 limit: 3,                                                        collation: "utf8_general_ci"
    t.integer "Y6_DiseaseDuration"
    t.string  "Y6_Cumulative_Prior_Attacks",      limit: 21,                             default: "", null: false, collation: "utf8_general_ci"
    t.text    "Y6_Cumulative_Prior_Attack_Dates", limit: 65535,                                                    collation: "utf8_general_ci"
    t.decimal "Y6_EDSS",                                        precision: 3,  scale: 1
    t.decimal "Y6_MSSS",                                        precision: 4,  scale: 2
    t.string  "Y6_Treatment_Status",              limit: 7,                                                        collation: "utf8_general_ci"
    t.text    "Y6_Cumulative_Prior_Treatments",   limit: 65535,                                                    collation: "utf8_general_ci"
    t.string  "Y6_Microbiome_Sample",             limit: 12,                                                       collation: "utf8_general_ci"
    t.string  "Y6_Repository_Date",               limit: 10,                             default: "", null: false, collation: "utf8_general_ci"
    t.decimal "Y6_DNA",                                         precision: 52, scale: 2
    t.decimal "Y6_Serum",                                       precision: 52, scale: 2
    t.decimal "Y6_Plasma",                                      precision: 52, scale: 2
    t.decimal "Y6_Lymphocyte",                                  precision: 52, scale: 2
    t.decimal "Y6_Cell_Line",                                   precision: 52, scale: 2
    t.decimal "Y6_Stool_Dry",                                   precision: 52, scale: 2
    t.decimal "Y6_Stool_Wet",                                   precision: 52, scale: 2
    t.decimal "Y6_Stool_Wet_Media",                             precision: 52, scale: 2
    t.index ["SubjectID"], name: "ixsid", using: :btree
  end

  create_table "_year7_detailed", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "SubjectID"
    t.integer "Y7_ID",                                                                                         default: 0,  null: false
    t.string  "Y7_Status",                                              limit: 30,                                                       collation: "utf8_general_ci"
    t.date    "Y7_ExamDate"
    t.integer "Y7_AgeAtExam"
    t.string  "Y7_DiseaseCourse",                                       limit: 3,                                                        collation: "utf8_general_ci"
    t.integer "Y7_DiseaseDuration"
    t.string  "Y7_Cumulative_Prior_Attacks",                            limit: 21,                             default: "", null: false, collation: "utf8_general_ci"
    t.text    "Y7_Cumulative_Prior_Attack_Dates",                       limit: 65535,                                                    collation: "utf8_general_ci"
    t.decimal "Y7_EDSS",                                                              precision: 3,  scale: 1
    t.decimal "Y7_MSSS",                                                              precision: 4,  scale: 2
    t.string  "Y7_FS_Visual",                                           limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y7_FS_Brainstem",                                        limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y7_FS_Pyramidal",                                        limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y7_FS_Cerebellar",                                       limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y7_FS_Sensory",                                          limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y7_FS_BowelBladder",                                     limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y7_FS_Mental",                                           limit: 50,                                                       collation: "utf8_general_ci"
    t.decimal "Y7_MSFC_PASAT3_Score",                                                 precision: 5,  scale: 2
    t.string  "Y7_MSFC_PASAT3_Analytical_Status",                       limit: 50,                                                       collation: "utf8_general_ci"
    t.float   "Y7_MSFC_25FTW_Trial1_Seconds",                           limit: 53
    t.float   "Y7_MSFC_25FTW_Trial2_Seconds",                           limit: 53
    t.string  "Y7_MSFC_25FTW_Trial1_AFO",                               limit: 1,                                                        collation: "utf8_general_ci"
    t.string  "Y7_MSFC_25FTW_Trial2_AFO",                               limit: 1,                                                        collation: "utf8_general_ci"
    t.string  "Y7_MSFC_25FTW_Trial1_Unilat_Assist_Device",              limit: 20,                                                       collation: "utf8_general_ci"
    t.string  "Y7_MSFC_25FTW_Trial2_Unilat_Assist_Device",              limit: 20,                                                       collation: "utf8_general_ci"
    t.string  "Y7_MSFC_25FTW_Trial1_Bilat_Assist_Device",               limit: 20,                                                       collation: "utf8_general_ci"
    t.string  "Y7_MSFC_25FTW_Trial2_Bilat_Assist_Device",               limit: 20,                                                       collation: "utf8_general_ci"
    t.string  "Y7_MSFC_25FTW_Trial1_Analytical_Status",                 limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y7_MSFC_25FTW_Trial2_Analytical_Status",                 limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y7_MSFC_9HPT_Dominant_Hand",                             limit: 2,                                                        collation: "utf8_general_ci"
    t.float   "Y7_MSFC_9HPT_Dominant_Hand_Trial1_Seconds",              limit: 53
    t.float   "Y7_MSFC_9HPT_Dominant_Hand_Trial2_Seconds",              limit: 53
    t.float   "Y7_MSFC_9HPT_NonDominant_Hand_Trial1_Seconds",           limit: 53
    t.float   "Y7_MSFC_9HPT_NonDominant_Hand_Trial2_Seconds",           limit: 53
    t.string  "Y7_MSFC_9HPT_Dominant_Hand_Trial1_Analytical_Status",    limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y7_MSFC_9HPT_Dominant_Hand_Trial2_Analytical_Status",    limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y7_MSFC_9HPT_NonDominant_Hand_Trial1_Analytical_Status", limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y7_MSFC_9HPT_NonDominant_Hand_Trial2_Analytical_Status", limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y7_Treatment_Status",                                    limit: 7,                                                        collation: "utf8_general_ci"
    t.text    "Y7_Cumulative_Prior_Treatments",                         limit: 65535,                                                    collation: "utf8_general_ci"
    t.string  "Y7_Microbiome_Sample",                                   limit: 12,                                                       collation: "utf8_general_ci"
    t.string  "Y7_Repository_Date",                                     limit: 10,                             default: "", null: false, collation: "utf8_general_ci"
    t.decimal "Y7_DNA",                                                               precision: 52, scale: 2
    t.decimal "Y7_Serum",                                                             precision: 52, scale: 2
    t.decimal "Y7_Plasma",                                                            precision: 52, scale: 2
    t.decimal "Y7_Lymphocyte",                                                        precision: 52, scale: 2
    t.decimal "Y7_Cell_Line",                                                         precision: 52, scale: 2
    t.index ["SubjectID"], name: "ixsid", using: :btree
  end

  create_table "_year7_simple", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "SubjectID"
    t.integer "Y7_ID",                                                                   default: 0,  null: false
    t.string  "Y7_Status",                        limit: 30,                                                       collation: "utf8_general_ci"
    t.date    "Y7_ExamDate"
    t.integer "Y7_AgeAtExam"
    t.string  "Y7_DiseaseCourse",                 limit: 3,                                                        collation: "utf8_general_ci"
    t.integer "Y7_DiseaseDuration"
    t.string  "Y7_Cumulative_Prior_Attacks",      limit: 21,                             default: "", null: false, collation: "utf8_general_ci"
    t.text    "Y7_Cumulative_Prior_Attack_Dates", limit: 65535,                                                    collation: "utf8_general_ci"
    t.decimal "Y7_EDSS",                                        precision: 3,  scale: 1
    t.decimal "Y7_MSSS",                                        precision: 4,  scale: 2
    t.string  "Y7_Treatment_Status",              limit: 7,                                                        collation: "utf8_general_ci"
    t.text    "Y7_Cumulative_Prior_Treatments",   limit: 65535,                                                    collation: "utf8_general_ci"
    t.string  "Y7_Microbiome_Sample",             limit: 12,                                                       collation: "utf8_general_ci"
    t.string  "Y7_Repository_Date",               limit: 10,                             default: "", null: false, collation: "utf8_general_ci"
    t.decimal "Y7_DNA",                                         precision: 52, scale: 2
    t.decimal "Y7_Serum",                                       precision: 52, scale: 2
    t.decimal "Y7_Plasma",                                      precision: 52, scale: 2
    t.decimal "Y7_Lymphocyte",                                  precision: 52, scale: 2
    t.decimal "Y7_Cell_Line",                                   precision: 52, scale: 2
    t.decimal "Y7_Stool_Dry",                                   precision: 52, scale: 2
    t.decimal "Y7_Stool_Wet",                                   precision: 52, scale: 2
    t.decimal "Y7_Stool_Wet_Media",                             precision: 52, scale: 2
    t.index ["SubjectID"], name: "ixsid", using: :btree
  end

  create_table "_year8_detailed", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "SubjectID"
    t.integer "Y8_ID",                                                                                         default: 0,  null: false
    t.string  "Y8_Status",                                              limit: 30,                                                       collation: "utf8_general_ci"
    t.date    "Y8_ExamDate"
    t.integer "Y8_AgeAtExam"
    t.string  "Y8_DiseaseCourse",                                       limit: 3,                                                        collation: "utf8_general_ci"
    t.integer "Y8_DiseaseDuration"
    t.string  "Y8_Cumulative_Prior_Attacks",                            limit: 21,                             default: "", null: false, collation: "utf8_general_ci"
    t.text    "Y8_Cumulative_Prior_Attack_Dates",                       limit: 65535,                                                    collation: "utf8_general_ci"
    t.decimal "Y8_EDSS",                                                              precision: 3,  scale: 1
    t.decimal "Y8_MSSS",                                                              precision: 4,  scale: 2
    t.string  "Y8_FS_Visual",                                           limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y8_FS_Brainstem",                                        limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y8_FS_Pyramidal",                                        limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y8_FS_Cerebellar",                                       limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y8_FS_Sensory",                                          limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y8_FS_BowelBladder",                                     limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y8_FS_Mental",                                           limit: 50,                                                       collation: "utf8_general_ci"
    t.decimal "Y8_MSFC_PASAT3_Score",                                                 precision: 5,  scale: 2
    t.string  "Y8_MSFC_PASAT3_Analytical_Status",                       limit: 50,                                                       collation: "utf8_general_ci"
    t.float   "Y8_MSFC_25FTW_Trial1_Seconds",                           limit: 53
    t.float   "Y8_MSFC_25FTW_Trial2_Seconds",                           limit: 53
    t.string  "Y8_MSFC_25FTW_Trial1_AFO",                               limit: 1,                                                        collation: "utf8_general_ci"
    t.string  "Y8_MSFC_25FTW_Trial2_AFO",                               limit: 1,                                                        collation: "utf8_general_ci"
    t.string  "Y8_MSFC_25FTW_Trial1_Unilat_Assist_Device",              limit: 20,                                                       collation: "utf8_general_ci"
    t.string  "Y8_MSFC_25FTW_Trial2_Unilat_Assist_Device",              limit: 20,                                                       collation: "utf8_general_ci"
    t.string  "Y8_MSFC_25FTW_Trial1_Bilat_Assist_Device",               limit: 20,                                                       collation: "utf8_general_ci"
    t.string  "Y8_MSFC_25FTW_Trial2_Bilat_Assist_Device",               limit: 20,                                                       collation: "utf8_general_ci"
    t.string  "Y8_MSFC_25FTW_Trial1_Analytical_Status",                 limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y8_MSFC_25FTW_Trial2_Analytical_Status",                 limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y8_MSFC_9HPT_Dominant_Hand",                             limit: 2,                                                        collation: "utf8_general_ci"
    t.float   "Y8_MSFC_9HPT_Dominant_Hand_Trial1_Seconds",              limit: 53
    t.float   "Y8_MSFC_9HPT_Dominant_Hand_Trial2_Seconds",              limit: 53
    t.float   "Y8_MSFC_9HPT_NonDominant_Hand_Trial1_Seconds",           limit: 53
    t.float   "Y8_MSFC_9HPT_NonDominant_Hand_Trial2_Seconds",           limit: 53
    t.string  "Y8_MSFC_9HPT_Dominant_Hand_Trial1_Analytical_Status",    limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y8_MSFC_9HPT_Dominant_Hand_Trial2_Analytical_Status",    limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y8_MSFC_9HPT_NonDominant_Hand_Trial1_Analytical_Status", limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y8_MSFC_9HPT_NonDominant_Hand_Trial2_Analytical_Status", limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y8_Treatment_Status",                                    limit: 7,                                                        collation: "utf8_general_ci"
    t.text    "Y8_Cumulative_Prior_Treatments",                         limit: 65535,                                                    collation: "utf8_general_ci"
    t.string  "Y8_Microbiome_Sample",                                   limit: 12,                                                       collation: "utf8_general_ci"
    t.string  "Y8_Repository_Date",                                     limit: 10,                             default: "", null: false, collation: "utf8_general_ci"
    t.decimal "Y8_DNA",                                                               precision: 52, scale: 2
    t.decimal "Y8_Serum",                                                             precision: 52, scale: 2
    t.decimal "Y8_Plasma",                                                            precision: 52, scale: 2
    t.decimal "Y8_Lymphocyte",                                                        precision: 52, scale: 2
    t.decimal "Y8_Cell_Line",                                                         precision: 52, scale: 2
    t.index ["SubjectID"], name: "ixsid", using: :btree
  end

  create_table "_year8_simple", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "SubjectID"
    t.integer "Y8_ID",                                                                   default: 0,  null: false
    t.string  "Y8_Status",                        limit: 30,                                                       collation: "utf8_general_ci"
    t.date    "Y8_ExamDate"
    t.integer "Y8_AgeAtExam"
    t.string  "Y8_DiseaseCourse",                 limit: 3,                                                        collation: "utf8_general_ci"
    t.integer "Y8_DiseaseDuration"
    t.string  "Y8_Cumulative_Prior_Attacks",      limit: 21,                             default: "", null: false, collation: "utf8_general_ci"
    t.text    "Y8_Cumulative_Prior_Attack_Dates", limit: 65535,                                                    collation: "utf8_general_ci"
    t.decimal "Y8_EDSS",                                        precision: 3,  scale: 1
    t.decimal "Y8_MSSS",                                        precision: 4,  scale: 2
    t.string  "Y8_Treatment_Status",              limit: 7,                                                        collation: "utf8_general_ci"
    t.text    "Y8_Cumulative_Prior_Treatments",   limit: 65535,                                                    collation: "utf8_general_ci"
    t.string  "Y8_Microbiome_Sample",             limit: 12,                                                       collation: "utf8_general_ci"
    t.string  "Y8_Repository_Date",               limit: 10,                             default: "", null: false, collation: "utf8_general_ci"
    t.decimal "Y8_DNA",                                         precision: 52, scale: 2
    t.decimal "Y8_Serum",                                       precision: 52, scale: 2
    t.decimal "Y8_Plasma",                                      precision: 52, scale: 2
    t.decimal "Y8_Lymphocyte",                                  precision: 52, scale: 2
    t.decimal "Y8_Cell_Line",                                   precision: 52, scale: 2
    t.decimal "Y8_Stool_Dry",                                   precision: 52, scale: 2
    t.decimal "Y8_Stool_Wet",                                   precision: 52, scale: 2
    t.decimal "Y8_Stool_Wet_Media",                             precision: 52, scale: 2
    t.index ["SubjectID"], name: "ixsid", using: :btree
  end

  create_table "_year9_detailed", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "SubjectID"
    t.integer "Y9_ID",                                                                                         default: 0,  null: false
    t.string  "Y9_Status",                                              limit: 30,                                                       collation: "utf8_general_ci"
    t.date    "Y9_ExamDate"
    t.integer "Y9_AgeAtExam"
    t.string  "Y9_DiseaseCourse",                                       limit: 3,                                                        collation: "utf8_general_ci"
    t.integer "Y9_DiseaseDuration"
    t.string  "Y9_Cumulative_Prior_Attacks",                            limit: 21,                             default: "", null: false, collation: "utf8_general_ci"
    t.text    "Y9_Cumulative_Prior_Attack_Dates",                       limit: 65535,                                                    collation: "utf8_general_ci"
    t.decimal "Y9_EDSS",                                                              precision: 3,  scale: 1
    t.decimal "Y9_MSSS",                                                              precision: 4,  scale: 2
    t.string  "Y9_FS_Visual",                                           limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y9_FS_Brainstem",                                        limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y9_FS_Pyramidal",                                        limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y9_FS_Cerebellar",                                       limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y9_FS_Sensory",                                          limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y9_FS_BowelBladder",                                     limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y9_FS_Mental",                                           limit: 50,                                                       collation: "utf8_general_ci"
    t.decimal "Y9_MSFC_PASAT3_Score",                                                 precision: 5,  scale: 2
    t.string  "Y9_MSFC_PASAT3_Analytical_Status",                       limit: 50,                                                       collation: "utf8_general_ci"
    t.float   "Y9_MSFC_25FTW_Trial1_Seconds",                           limit: 53
    t.float   "Y9_MSFC_25FTW_Trial2_Seconds",                           limit: 53
    t.string  "Y9_MSFC_25FTW_Trial1_AFO",                               limit: 1,                                                        collation: "utf8_general_ci"
    t.string  "Y9_MSFC_25FTW_Trial2_AFO",                               limit: 1,                                                        collation: "utf8_general_ci"
    t.string  "Y9_MSFC_25FTW_Trial1_Unilat_Assist_Device",              limit: 20,                                                       collation: "utf8_general_ci"
    t.string  "Y9_MSFC_25FTW_Trial2_Unilat_Assist_Device",              limit: 20,                                                       collation: "utf8_general_ci"
    t.string  "Y9_MSFC_25FTW_Trial1_Bilat_Assist_Device",               limit: 20,                                                       collation: "utf8_general_ci"
    t.string  "Y9_MSFC_25FTW_Trial2_Bilat_Assist_Device",               limit: 20,                                                       collation: "utf8_general_ci"
    t.string  "Y9_MSFC_25FTW_Trial1_Analytical_Status",                 limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y9_MSFC_25FTW_Trial2_Analytical_Status",                 limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y9_MSFC_9HPT_Dominant_Hand",                             limit: 2,                                                        collation: "utf8_general_ci"
    t.float   "Y9_MSFC_9HPT_Dominant_Hand_Trial1_Seconds",              limit: 53
    t.float   "Y9_MSFC_9HPT_Dominant_Hand_Trial2_Seconds",              limit: 53
    t.float   "Y9_MSFC_9HPT_NonDominant_Hand_Trial1_Seconds",           limit: 53
    t.float   "Y9_MSFC_9HPT_NonDominant_Hand_Trial2_Seconds",           limit: 53
    t.string  "Y9_MSFC_9HPT_Dominant_Hand_Trial1_Analytical_Status",    limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y9_MSFC_9HPT_Dominant_Hand_Trial2_Analytical_Status",    limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y9_MSFC_9HPT_NonDominant_Hand_Trial1_Analytical_Status", limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y9_MSFC_9HPT_NonDominant_Hand_Trial2_Analytical_Status", limit: 50,                                                       collation: "utf8_general_ci"
    t.string  "Y9_Treatment_Status",                                    limit: 7,                                                        collation: "utf8_general_ci"
    t.text    "Y9_Cumulative_Prior_Treatments",                         limit: 65535,                                                    collation: "utf8_general_ci"
    t.string  "Y9_Microbiome_Sample",                                   limit: 12,                                                       collation: "utf8_general_ci"
    t.string  "Y9_Repository_Date",                                     limit: 10,                             default: "", null: false, collation: "utf8_general_ci"
    t.decimal "Y9_DNA",                                                               precision: 52, scale: 2
    t.decimal "Y9_Serum",                                                             precision: 52, scale: 2
    t.decimal "Y9_Plasma",                                                            precision: 52, scale: 2
    t.decimal "Y9_Lymphocyte",                                                        precision: 52, scale: 2
    t.decimal "Y9_Cell_Line",                                                         precision: 52, scale: 2
    t.index ["SubjectID"], name: "ixsid", using: :btree
  end

  create_table "_year9_simple", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "SubjectID"
    t.integer "Y9_ID",                                                                   default: 0,  null: false
    t.string  "Y9_Status",                        limit: 30,                                                       collation: "utf8_general_ci"
    t.date    "Y9_ExamDate"
    t.integer "Y9_AgeAtExam"
    t.string  "Y9_DiseaseCourse",                 limit: 3,                                                        collation: "utf8_general_ci"
    t.integer "Y9_DiseaseDuration"
    t.string  "Y9_Cumulative_Prior_Attacks",      limit: 21,                             default: "", null: false, collation: "utf8_general_ci"
    t.text    "Y9_Cumulative_Prior_Attack_Dates", limit: 65535,                                                    collation: "utf8_general_ci"
    t.decimal "Y9_EDSS",                                        precision: 3,  scale: 1
    t.decimal "Y9_MSSS",                                        precision: 4,  scale: 2
    t.string  "Y9_Treatment_Status",              limit: 7,                                                        collation: "utf8_general_ci"
    t.text    "Y9_Cumulative_Prior_Treatments",   limit: 65535,                                                    collation: "utf8_general_ci"
    t.string  "Y9_Microbiome_Sample",             limit: 12,                                                       collation: "utf8_general_ci"
    t.string  "Y9_Repository_Date",               limit: 10,                             default: "", null: false, collation: "utf8_general_ci"
    t.decimal "Y9_DNA",                                         precision: 52, scale: 2
    t.decimal "Y9_Serum",                                       precision: 52, scale: 2
    t.decimal "Y9_Plasma",                                      precision: 52, scale: 2
    t.decimal "Y9_Lymphocyte",                                  precision: 52, scale: 2
    t.decimal "Y9_Cell_Line",                                   precision: 52, scale: 2
    t.decimal "Y9_Stool_Dry",                                   precision: 52, scale: 2
    t.decimal "Y9_Stool_Wet",                                   precision: 52, scale: 2
    t.decimal "Y9_Stool_Wet_Media",                             precision: 52, scale: 2
    t.index ["SubjectID"], name: "ixsid", using: :btree
  end

  create_table "attack", primary_key: "AttackID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "SubjectID"
    t.string  "AttackYr",       limit: 4
    t.string  "AttackMo",       limit: 3
    t.string  "AttackDy",       limit: 3
    t.string  "ON",             limit: 3
    t.string  "ONSide",         limit: 3
    t.string  "CER",            limit: 3
    t.string  "LTM",            limit: 3
    t.string  "COG",            limit: 3
    t.string  "BS",             limit: 3
    t.string  "SC",             limit: 3
    t.string  "LTS",            limit: 3
    t.string  "UNK",            limit: 3
    t.string  "Steroids",       limit: 3
    t.string  "FullyRecovered", limit: 3
    t.integer "YearCategory"
    t.text    "AttackComment",  limit: 4294967295
    t.string  "DataSource",     limit: 50
    t.date    "adjattackdate"
    t.boolean "FirstAttack"
    t.index ["SubjectID"], name: "SubjectID", using: :btree
  end

  create_table "bmi", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=utf8" do |t|
    t.integer "subjectid"
    t.integer "visitid"
    t.integer "OysterBox"
    t.string  "BoxLabel",    limit: 33
    t.integer "EPICID"
    t.string  "GSKID",       limit: 7
    t.string  "Initials",    limit: 3
    t.string  "VisitType",   limit: 8
    t.integer "VisitDate"
    t.string  "Visit_date",  limit: 10
    t.decimal "Height (cm)",            precision: 5,  scale: 2
    t.decimal "Weight (kg)",            precision: 16, scale: 14
    t.integer "Waist (cm)"
  end

  create_table "consent", primary_key: "ConsentID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "SubjectID"
    t.string  "ConsentType", limit: 15
    t.string  "FormYear",    limit: 4
    t.date    "DateSigned"
    t.index ["SubjectID"], name: "SubjectID", using: :btree
  end

  create_table "contact", primary_key: "ContactID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "SubjectID"
    t.datetime "ContactDate"
    t.text     "Comments",    limit: 4294967295
    t.index ["SubjectID"], name: "SubjectID", using: :btree
  end

  create_table "crf_jan26", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=utf8" do |t|
    t.integer "subjectid"
    t.integer "visitid"
    t.integer "participant_id"
    t.string  "redcap_survey_identifier",        limit: 10
    t.string  "survey_timestamp",                limit: 15
    t.string  "baseline_y_n",                    limit: 1
    t.string  "fu_year",                         limit: 2
    t.string  "epic_id",                         limit: 4
    t.string  "pedigree_number",                 limit: 6
    t.string  "individual_number",               limit: 11
    t.string  "index_case",                      limit: 1
    t.string  "informed_consent_y_n",            limit: 1
    t.string  "informed_consent_date",           limit: 8
    t.string  "informed_consent_version",        limit: 1
    t.string  "assessment_date",                 limit: 8
    t.string  "weight",                          limit: 8
    t.string  "height",                          limit: 8
    t.string  "waist_measurement",               limit: 21
    t.string  "sitting_heart_rate",              limit: 7
    t.string  "sitting_hr_regularity",           limit: 1
    t.string  "blood_pressure",                  limit: 7
    t.string  "pregnant_y_n",                    limit: 1
    t.string  "pregnancy_test_y_n",              limit: 1
    t.string  "amb_y_n",                         limit: 1
    t.string  "amb_time_100m",                   limit: 38
    t.string  "amb_range",                       limit: 1
    t.string  "amb_actual_distance",             limit: 41
    t.string  "amb_constant_assist_type",        limit: 1
    t.string  "unilateral_asst_other",           limit: 53
    t.string  "bilateral_asst_other",            limit: 54
    t.string  "amb_meters_w_assist",             limit: 104
    t.string  "fs_visual",                       limit: 40
    t.string  "fs_brainstem",                    limit: 1
    t.string  "fs_pyramidal",                    limit: 2
    t.string  "fs_cerebellar",                   limit: 26
    t.string  "fs_sensory",                      limit: 2
    t.string  "fs_bladder_bowel",                limit: 1
    t.string  "fs_mental",                       limit: 1
    t.string  "actual_edss",                     limit: 2
    t.string  "edss_date",                       limit: 8
    t.string  "edss_physician",                  limit: 39
    t.string  "dcf",                             limit: 1
    t.string  "disease_course",                  limit: 1
    t.string  "rr_to_sp_year",                   limit: 33
    t.string  "year_of_dx",                      limit: 7
    t.string  "disease_course_change_y_n",       limit: 1
    t.string  "type_of_disease",                 limit: 1
    t.integer "neuro_signs_symptoms___1"
    t.integer "neuro_signs_symptoms___2"
    t.integer "neuro_signs_symptoms___3"
    t.integer "neuro_signs_symptoms___4"
    t.integer "neuro_signs_symptoms___5"
    t.integer "neuro_signs_symptoms___6"
    t.integer "neuro_signs_symptoms___7"
    t.integer "neuro_signs_symptoms___8"
    t.integer "neuro_signs_symptoms___9"
    t.string  "neur_sign_sx_visual_loss",        limit: 1
    t.string  "relapse_y_n",                     limit: 1
    t.string  "attacks_since_last_visit",        limit: 1
    t.string  "attack1_date",                    limit: 21
    t.string  "attack1_steroids_y_n",            limit: 1
    t.string  "attack1_fully_recovered",         limit: 1
    t.integer "attack1_unilateral___1"
    t.integer "attack1_unilateral___2"
    t.integer "attack1_unilateral___3"
    t.integer "attack1_unilateral___4"
    t.integer "attack1_unilateral___5"
    t.integer "attack1_unilateral___6"
    t.integer "attack1_unilateral___7"
    t.integer "attack1_unilateral___8"
    t.integer "attack1_unilateral___9"
    t.integer "attack1_unilateral___10"
    t.integer "attack1_bilateral___1"
    t.integer "attack1_bilateral___2"
    t.integer "attack1_bilateral___3"
    t.integer "attack1_bilateral___4"
    t.integer "attack1_bilateral___5"
    t.integer "attack1_bilateral___6"
    t.integer "attack1_bilateral___7"
    t.integer "attack1_bilateral___8"
    t.integer "attack1_bilateral___9"
    t.integer "attack1_bilateral___10"
    t.integer "attack1_undet_unkown___1"
    t.integer "attack1_undet_unkown___2"
    t.integer "attack1_undet_unkown___3"
    t.integer "attack1_undet_unkown___4"
    t.integer "attack1_undet_unkown___5"
    t.integer "attack1_undet_unkown___6"
    t.integer "attack1_undet_unkown___7"
    t.integer "attack1_undet_unkown___8"
    t.integer "attack1_undet_unkown___9"
    t.integer "attack1_undet_unkown___10"
    t.string  "attack2_date",                    limit: 16
    t.string  "attack2_steroids_y_n",            limit: 1
    t.string  "attack2_fully_recover",           limit: 1
    t.integer "attack2_unilateral___1"
    t.integer "attack2_unilateral___2"
    t.integer "attack2_unilateral___3"
    t.integer "attack2_unilateral___4"
    t.integer "attack2_unilateral___5"
    t.integer "attack2_unilateral___6"
    t.integer "attack2_unilateral___7"
    t.integer "attack2_unilateral___8"
    t.integer "attack2_unilateral___9"
    t.integer "attack2_unilateral___10"
    t.integer "attack2_bilateral___1"
    t.integer "attack2_bilateral___2"
    t.integer "attack2_bilateral___3"
    t.integer "attack2_bilateral___4"
    t.integer "attack2_bilateral___5"
    t.integer "attack2_bilateral___6"
    t.integer "attack2_bilateral___7"
    t.integer "attack2_bilateral___8"
    t.integer "attack2_bilateral___9"
    t.integer "attack2_bilateral___10"
    t.integer "attack2_undet_unkown___1"
    t.integer "attack2_undet_unkown___2"
    t.integer "attack2_undet_unkown___3"
    t.integer "attack2_undet_unkown___4"
    t.integer "attack2_undet_unkown___5"
    t.integer "attack2_undet_unkown___6"
    t.integer "attack2_undet_unkown___7"
    t.integer "attack2_undet_unkown___8"
    t.integer "attack2_undet_unkown___9"
    t.integer "attack2_undet_unkown___10"
    t.string  "attack3_date",                    limit: 7
    t.string  "attack3_steroids_y_n",            limit: 1
    t.string  "attack3_fully_recover",           limit: 1
    t.integer "attack3_unilateral___1"
    t.integer "attack3_unilateral___2"
    t.integer "attack3_unilateral___3"
    t.integer "attack3_unilateral___4"
    t.integer "attack3_unilateral___5"
    t.integer "attack3_unilateral___6"
    t.integer "attack3_unilateral___7"
    t.integer "attack3_unilateral___8"
    t.integer "attack3_unilateral___9"
    t.integer "attack3_unilateral___10"
    t.integer "attack3_bilateral___1"
    t.integer "attack3_bilateral___2"
    t.integer "attack3_bilateral___3"
    t.integer "attack3_bilateral___4"
    t.integer "attack3_bilateral___5"
    t.integer "attack3_bilateral___6"
    t.integer "attack3_bilateral___7"
    t.integer "attack3_bilateral___8"
    t.integer "attack3_bilateral___9"
    t.integer "attack3_bilateral___10"
    t.integer "attack3_undet_unknown___1"
    t.integer "attack3_undet_unknown___2"
    t.integer "attack3_undet_unknown___3"
    t.integer "attack3_undet_unknown___4"
    t.integer "attack3_undet_unknown___5"
    t.integer "attack3_undet_unknown___6"
    t.integer "attack3_undet_unknown___7"
    t.integer "attack3_undet_unknown___8"
    t.integer "attack3_undet_unknown___9"
    t.integer "attack3_undet_unknown___10"
    t.string  "attack4_date",                    limit: 7
    t.string  "attack4_steroids_y_n",            limit: 1
    t.string  "attack4_fully_recover",           limit: 1
    t.integer "attack4_unilateral___1"
    t.integer "attack4_unilateral___2"
    t.integer "attack4_unilateral___3"
    t.integer "attack4_unilateral___4"
    t.integer "attack4_unilateral___5"
    t.integer "attack4_unilateral___6"
    t.integer "attack4_unilateral___7"
    t.integer "attack4_unilateral___8"
    t.integer "attack4_unilateral___9"
    t.integer "attack4_unilateral___10"
    t.integer "attack4_bilateral___1"
    t.integer "attack4_bilateral___2"
    t.integer "attack4_bilateral___3"
    t.integer "attack4_bilateral___4"
    t.integer "attack4_bilateral___5"
    t.integer "attack4_bilateral___6"
    t.integer "attack4_bilateral___7"
    t.integer "attack4_bilateral___8"
    t.integer "attack4_bilateral___9"
    t.integer "attack4_bilateral___10"
    t.integer "attack4_undet_unknown___1"
    t.integer "attack4_undet_unknown___2"
    t.integer "attack4_undet_unknown___3"
    t.integer "attack4_undet_unknown___4"
    t.integer "attack4_undet_unknown___5"
    t.integer "attack4_undet_unknown___6"
    t.integer "attack4_undet_unknown___7"
    t.integer "attack4_undet_unknown___8"
    t.integer "attack4_undet_unknown___9"
    t.integer "attack4_undet_unknown___10"
    t.string  "attack5_date",                    limit: 6
    t.string  "attack5_steroids_y_n",            limit: 1
    t.string  "attack5_fully_recover",           limit: 1
    t.integer "attack5_unilateral___1"
    t.integer "attack5_unilateral___2"
    t.integer "attack5_unilateral___3"
    t.integer "attack5_unilateral___4"
    t.integer "attack5_unilateral___5"
    t.integer "attack5_unilateral___6"
    t.integer "attack5_unilateral___7"
    t.integer "attack5_unilateral___8"
    t.integer "attack5_unilateral___9"
    t.integer "attack5_unilateral___10"
    t.integer "attack5_bilateral___1"
    t.integer "attack5_bilateral___2"
    t.integer "attack5_bilateral___3"
    t.integer "attack5_bilateral___4"
    t.integer "attack5_bilateral___5"
    t.integer "attack5_bilateral___6"
    t.integer "attack5_bilateral___7"
    t.integer "attack5_bilateral___8"
    t.integer "attack5_bilateral___9"
    t.integer "attack5_bilateral___10"
    t.integer "attack5_undet_unknown___1"
    t.integer "attack5_undet_unknown___2"
    t.integer "attack5_undet_unknown___3"
    t.integer "attack5_undet_unknown___4"
    t.integer "attack5_undet_unknown___5"
    t.integer "attack5_undet_unknown___6"
    t.integer "attack5_undet_unknown___7"
    t.integer "attack5_undet_unknown___8"
    t.integer "attack5_undet_unknown___9"
    t.integer "attack5_undet_unknown___10"
    t.string  "attack_plus_date",                limit: 74
    t.string  "attacks_notes",                   limit: 645
    t.integer "medication_list___1"
    t.integer "medication_list___2"
    t.integer "medication_list___3"
    t.integer "medication_list___4"
    t.integer "medication_list___5"
    t.integer "medication_list___6"
    t.integer "medication_list___7"
    t.integer "medication_list___8"
    t.integer "medication_list___9"
    t.integer "medication_list___10"
    t.integer "medication_list___11"
    t.integer "medication_list___12"
    t.integer "medication_list___13"
    t.integer "medication_list___14"
    t.string  "dmt_y_n",                         limit: 1
    t.string  "dmt_changed_y_n",                 limit: 1
    t.string  "dmt_last_dose",                   limit: 35
    t.integer "dmt_adv_effect___1"
    t.integer "dmt_adv_effect___2"
    t.integer "dmt_adv_effect___3"
    t.integer "dmt_adv_effect___4"
    t.integer "dmt_adv_effect___5"
    t.integer "dmt_adv_effect___6"
    t.integer "dmt_adv_effect___7"
    t.integer "dmt_adv_effect___8"
    t.integer "dmt_adv_effect___9"
    t.integer "dmt_adv_effect___10"
    t.string  "dmt_adverse_other",               limit: 112
    t.string  "dmt_side_effects",                limit: 144
    t.integer "follow_up_med_list___1"
    t.integer "follow_up_med_list___2"
    t.integer "follow_up_med_list___3"
    t.integer "follow_up_med_list___4"
    t.integer "follow_up_med_list___5"
    t.integer "follow_up_med_list___6"
    t.integer "follow_up_med_list___7"
    t.integer "follow_up_med_list___8"
    t.integer "follow_up_med_list___9"
    t.integer "follow_up_med_list___10"
    t.integer "follow_up_med_list___11"
    t.integer "follow_up_med_list___12"
    t.integer "follow_up_med_list___13"
    t.integer "follow_up_med_list___14"
    t.string  "avonex_dose",                     limit: 10
    t.string  "avonex_date_started",             limit: 14
    t.string  "avonex_still_on_drug",            limit: 1
    t.string  "avonex_last_dose",                limit: 8
    t.string  "avonex_date_stopped",             limit: 26
    t.string  "avonex_lack_of_efficacy",         limit: 1
    t.integer "avonex_adverse_event___1"
    t.integer "avonex_adverse_event___2"
    t.integer "avonex_adverse_event___3"
    t.integer "avonex_adverse_event___4"
    t.integer "avonex_adverse_event___5"
    t.integer "avonex_adverse_event___6"
    t.integer "avonex_adverse_event___7"
    t.integer "avonex_adverse_event___8"
    t.integer "avonex_adverse_event___9"
    t.integer "avonex_adverse_event___10"
    t.string  "avonex_adverse_other",            limit: 48
    t.string  "avonex_other_discontinue",        limit: 97
    t.string  "rebif_dose",                      limit: 14
    t.string  "rebif_date_started",              limit: 16
    t.string  "rebif_still_on_drug",             limit: 1
    t.string  "rebif_last_dose",                 limit: 8
    t.string  "rebif_date_stopped",              limit: 18
    t.string  "rebif_lack_of_efficacy",          limit: 1
    t.integer "rebif_adverse_event___1"
    t.integer "rebif_adverse_event___2"
    t.integer "rebif_adverse_event___3"
    t.integer "rebif_adverse_event___4"
    t.integer "rebif_adverse_event___5"
    t.integer "rebif_adverse_event___6"
    t.integer "rebif_adverse_event___7"
    t.integer "rebif_adverse_event___8"
    t.integer "rebif_adverse_event___9"
    t.integer "rebif_adverse_event___10"
    t.string  "rebif_adverse_other",             limit: 17
    t.string  "rebif_other_discontinue",         limit: 62
    t.string  "betaseron_dose",                  limit: 10
    t.string  "betaseron_date_started",          limit: 10
    t.string  "betaseron_still_on_drug",         limit: 1
    t.string  "betaseron_last_dose",             limit: 7
    t.string  "betaseron_date_stopped",          limit: 6
    t.string  "betaseron_lack_of_efficacy",      limit: 1
    t.integer "betaseron_adverse_event___1"
    t.integer "betaseron_adverse_event___2"
    t.integer "betaseron_adverse_event___3"
    t.integer "betaseron_adverse_event___4"
    t.integer "betaseron_adverse_event___5"
    t.integer "betaseron_adverse_event___6"
    t.integer "betaseron_adverse_event___7"
    t.integer "betaseron_adverse_event___8"
    t.integer "betaseron_adverse_event___9"
    t.integer "betaseron_adverse_event___10"
    t.string  "betaseron_adverse_other",         limit: 10
    t.string  "betaseron_other_discontinue",     limit: 29
    t.string  "copaxone_dose",                   limit: 15
    t.string  "copaxone_date_started",           limit: 41
    t.string  "copaxone_still_on_drug",          limit: 1
    t.string  "copaxone_last_dose",              limit: 8
    t.string  "copaxone_date_stopped",           limit: 10
    t.string  "copaxone_lack_of_efficacy",       limit: 1
    t.integer "copaxone_adverse_event___1"
    t.integer "copaxone_adverse_event___2"
    t.integer "copaxone_adverse_event___3"
    t.integer "copaxone_adverse_event___4"
    t.integer "copaxone_adverse_event___5"
    t.integer "copaxone_adverse_event___6"
    t.integer "copaxone_adverse_event___7"
    t.integer "copaxone_adverse_event___8"
    t.integer "copaxone_adverse_event___9"
    t.integer "copaxone_adverse_event___10"
    t.string  "copaxone_adverse_other",          limit: 35
    t.string  "copaxone_other_discontinue",      limit: 54
    t.string  "tysabri_dose",                    limit: 15
    t.string  "tysabri_date_started",            limit: 39
    t.string  "tysabri_still_on_drug",           limit: 1
    t.string  "tysabri_last_dose",               limit: 37
    t.string  "tysabri_date_stopped",            limit: 27
    t.string  "tysabri_lack_of_efficacy",        limit: 1
    t.integer "tysabri_adverse_event___1"
    t.integer "tysabri_adverse_event___2"
    t.integer "tysabri_adverse_event___3"
    t.integer "tysabri_adverse_event___4"
    t.integer "tysabri_adverse_event___5"
    t.integer "tysabri_adverse_event___6"
    t.integer "tysabri_adverse_event___7"
    t.integer "tysabri_adverse_event___8"
    t.integer "tysabri_adverse_event___9"
    t.integer "tysabri_adverse_event___10"
    t.string  "tysabri_adverse_other",           limit: 27
    t.string  "tysabri_other_discontinue",       limit: 53
    t.string  "gilenya_dose",                    limit: 25
    t.string  "gilenya_date_started",            limit: 100
    t.string  "gilenya_still_on_drug",           limit: 1
    t.string  "gilenya_last_dose",               limit: 8
    t.string  "gilenya_date_stopped",            limit: 6
    t.string  "gilenya_lack_of_efficacy",        limit: 1
    t.integer "gilenya_adverse_event___1"
    t.integer "gilenya_adverse_event___2"
    t.integer "gilenya_adverse_event___3"
    t.integer "gilenya_adverse_event___4"
    t.integer "gilenya_adverse_event___5"
    t.integer "gilenya_adverse_event___6"
    t.integer "gilenya_adverse_event___7"
    t.integer "gilenya_adverse_event___8"
    t.integer "gilenya_adverse_event___9"
    t.integer "gilenya_adverse_event___10"
    t.string  "gilenya_adverse_other",           limit: 36
    t.string  "gilenya_other_discontinue",       limit: 33
    t.string  "cellcept_dose",                   limit: 10
    t.string  "cellcept_date_started",           limit: 10
    t.string  "cellcept_still_on_drug",          limit: 1
    t.string  "cellcept_last_dose",              limit: 10
    t.string  "cellcept_date_stopped",           limit: 8
    t.string  "cellcept_lack_of_efficacy",       limit: 1
    t.integer "cellcept_adverse_event___1"
    t.integer "cellcept_adverse_event___2"
    t.integer "cellcept_adverse_event___3"
    t.integer "cellcept_adverse_event___4"
    t.integer "cellcept_adverse_event___5"
    t.integer "cellcept_adverse_event___6"
    t.integer "cellcept_adverse_event___7"
    t.integer "cellcept_adverse_event___8"
    t.integer "cellcept_adverse_event___9"
    t.integer "cellcept_adverse_event___10"
    t.string  "cellcept_other_discontinue",      limit: 76
    t.string  "cellcept_adverse_other",          limit: 10
    t.string  "rituxan_dose",                    limit: 22
    t.string  "rituxan_date_started",            limit: 6
    t.string  "rituxan_still_on_drug",           limit: 1
    t.string  "rituxan_last_dose",               limit: 7
    t.string  "rituxan_date_stopped",            limit: 6
    t.string  "rituxan_lack_of_efficacy",        limit: 1
    t.integer "rituxan_adverse_event___1"
    t.integer "rituxan_adverse_event___2"
    t.integer "rituxan_adverse_event___3"
    t.integer "rituxan_adverse_event___4"
    t.integer "rituxan_adverse_event___5"
    t.integer "rituxan_adverse_event___6"
    t.integer "rituxan_adverse_event___7"
    t.integer "rituxan_adverse_event___8"
    t.integer "rituxan_adverse_event___9"
    t.integer "rituxan_adverse_event___10"
    t.string  "rituxan_adverse_other",           limit: 59
    t.string  "rituxan_other_discontinue",       limit: 25
    t.string  "methotrexate_dose",               limit: 10
    t.string  "methotrexate_date_started",       limit: 4
    t.string  "methotrexate_still_on_drug",      limit: 1
    t.string  "methotrexate_last_dose",          limit: 10
    t.string  "methotrexate_date_stopped",       limit: 4
    t.string  "methotrexate_lack_of_efficacy",   limit: 1
    t.integer "methotrexate_adverse_event___1"
    t.integer "methotrexate_adverse_event___2"
    t.integer "methotrexate_adverse_event___3"
    t.integer "methotrexate_adverse_event___4"
    t.integer "methotrexate_adverse_event___5"
    t.integer "methotrexate_adverse_event___6"
    t.integer "methotrexate_adverse_event___7"
    t.integer "methotrexate_adverse_event___8"
    t.integer "methotrexate_adverse_event___9"
    t.integer "methotrexate_adverse_event___10"
    t.string  "methotrexate_adverse_other",      limit: 10
    t.string  "methotrexate_other_discontinue",  limit: 10
    t.string  "ocrelizumab_dose",                limit: 10
    t.string  "ocrelizumab_date_started",        limit: 10
    t.string  "ocrelizumab_still_on_drug",       limit: 10
    t.string  "ocrelizumab_last_dose",           limit: 10
    t.string  "ocrelizumab_date_stopped",        limit: 10
    t.string  "ocrelizumab_lack_of_efficacy",    limit: 10
    t.integer "ocrelizumab_adverse_event___1"
    t.integer "ocrelizumab_adverse_event___2"
    t.integer "ocrelizumab_adverse_event___3"
    t.integer "ocrelizumab_adverse_event___4"
    t.integer "ocrelizumab_adverse_event___5"
    t.integer "ocrelizumab_adverse_event___6"
    t.integer "ocrelizumab_adverse_event___7"
    t.integer "ocrelizumab_adverse_event___8"
    t.integer "ocrelizumab_adverse_event___9"
    t.integer "ocrelizumab_adverse_event___10"
    t.string  "ocrelizumab_adverse_other",       limit: 10
    t.string  "ocrelizumab_other_discontinue",   limit: 10
    t.string  "setroid_name",                    limit: 28
    t.string  "steroid_dose",                    limit: 10
    t.string  "steroid_date_started",            limit: 6
    t.string  "steroid_still_on_drug",           limit: 1
    t.string  "steroid_last_dose",               limit: 7
    t.string  "steroid_date_stopped",            limit: 10
    t.string  "steroid_lack_of_efficacy",        limit: 1
    t.integer "steroid_adverse_event___1"
    t.integer "steroid_adverse_event___2"
    t.integer "steroid_adverse_event___3"
    t.integer "steroid_adverse_event___4"
    t.integer "steroid_adverse_event___5"
    t.integer "steroid_adverse_event___6"
    t.integer "steroid_adverse_event___7"
    t.integer "steroid_adverse_event___8"
    t.integer "steroid_adverse_event___9"
    t.integer "steroid_adverse_event___10"
    t.string  "steroid_adverse_other",           limit: 10
    t.string  "steroid_other_discontinue",       limit: 36
    t.string  "other1_medication_name",          limit: 22
    t.string  "other1_dose",                     limit: 15
    t.string  "other1_date_started",             limit: 26
    t.string  "other1_still_on_drug",            limit: 1
    t.string  "other1_last_dose",                limit: 9
    t.string  "other1_date_stopped",             limit: 7
    t.string  "other1_lack_of_efficacy",         limit: 1
    t.integer "other1_adverse_event___1"
    t.integer "other1_adverse_event___2"
    t.integer "other1_adverse_event___3"
    t.integer "other1_adverse_event___4"
    t.integer "other1_adverse_event___5"
    t.integer "other1_adverse_event___6"
    t.integer "other1_adverse_event___7"
    t.integer "other1_adverse_event___8"
    t.integer "other1_adverse_event___9"
    t.integer "other1_adverse_event___10"
    t.string  "other1_adverse_other",            limit: 106
    t.string  "other1_other_discontinue",        limit: 46
    t.string  "other2_medication_name",          limit: 15
    t.string  "other2_dose",                     limit: 10
    t.string  "other2_date_started",             limit: 6
    t.string  "other2_still_on_drug",            limit: 1
    t.string  "other2_last_dose",                limit: 8
    t.string  "other2_date_stopped",             limit: 6
    t.string  "other2_lack_of_efficacy",         limit: 1
    t.integer "other2_adverse_event___1"
    t.integer "other2_adverse_event___2"
    t.integer "other2_adverse_event___3"
    t.integer "other2_adverse_event___4"
    t.integer "other2_adverse_event___5"
    t.integer "other2_adverse_event___6"
    t.integer "other2_adverse_event___7"
    t.integer "other2_adverse_event___8"
    t.integer "other2_adverse_event___9"
    t.integer "other2_adverse_event___10"
    t.string  "other2_adverse_other",            limit: 10
    t.string  "other2_other_discontinue",        limit: 10
    t.string  "peg_dom_hand",                    limit: 1
    t.string  "peg_dom1_time",                   limit: 9
    t.string  "peg_dom1_notes",                  limit: 77
    t.string  "peg_dom1_incomplete",             limit: 1
    t.string  "peg_dom1_incomplete_other",       limit: 10
    t.string  "peg_dom2_time",                   limit: 7
    t.string  "peg_dom2_notes",                  limit: 102
    t.string  "peg_dom2_incomplete",             limit: 1
    t.string  "peg_dom2_incomplete_other",       limit: 10
    t.string  "peg_dom_more_trials",             limit: 1
    t.string  "peg_dom_more_trials_reason",      limit: 50
    t.string  "peg_ndom1_time",                  limit: 9
    t.string  "peg_ndom1_notes",                 limit: 50
    t.string  "peg_ndom1_incomplete",            limit: 1
    t.string  "peg_ndom1_incomplete_other",      limit: 10
    t.string  "peg_ndom2_time",                  limit: 7
    t.string  "peg_ndom2_notes",                 limit: 55
    t.string  "peg_ndom2_incomplete",            limit: 1
    t.string  "peg_ndom2_incomplete_other",      limit: 10
    t.string  "peg_ndom_more_trials",            limit: 1
    t.string  "peg_ndom_more_trials_reason",     limit: 57
    t.string  "pasat_form_a_b",                  limit: 1
    t.string  "pasat_score",                     limit: 2
    t.string  "pasat_notes",                     limit: 81
    t.string  "pasat_incomplete",                limit: 1
    t.string  "past_incomplete_other",           limit: 80
    t.string  "pasat_1half_supp_score",          limit: 2
    t.string  "pasat_2half_supp_score",          limit: 2
    t.string  "pasat_commissions_suppscore",     limit: 1
    t.string  "sdmt_score",                      limit: 34
    t.string  "sdmt_completed_by",               limit: 1
    t.string  "sdmt_not_completed",              limit: 103
    t.string  "sdmt_incomplete",                 limit: 1
    t.string  "sdmtpast_incomplete_other",       limit: 10
    t.string  "walk_afo_y_n",                    limit: 1
    t.string  "walk_asst_y_n",                   limit: 1
    t.string  "walk_asst_device",                limit: 1
    t.string  "walk_time1",                      limit: 4
    t.string  "walk1_notes",                     limit: 50
    t.string  "walk1_incomplete_y_n",            limit: 1
    t.string  "walk1_incomplete_reason",         limit: 64
    t.string  "walk_time2",                      limit: 4
    t.string  "walk2_notes",                     limit: 41
    t.string  "walk2_incomplete_y_n",            limit: 1
    t.string  "walk2_incomplete_reason",         limit: 69
    t.string  "blood_draw_date",                 limit: 8
    t.string  "blood_draw_time",                 limit: 5
    t.string  "blood_draw_last_meal",            limit: 1
    t.string  "blood_draw_meal_time",            limit: 5
    t.string  "blood_draw_meal_type",            limit: 1
    t.string  "mri_date",                        limit: 8
    t.string  "mri_contradictions_y_n",          limit: 1
    t.string  "mri_contradiction_notes",         limit: 151
    t.string  "withdrawn_y_n",                   limit: 1
    t.string  "withdrawn_date",                  limit: 10
    t.string  "withdrawn_reason",                limit: 10
    t.string  "sample_destruction_y_n",          limit: 1
    t.string  "sample_destroyed_reason",         limit: 10
    t.string  "sample_destroyed_other",          limit: 10
    t.string  "coordinator_name",                limit: 15
    t.string  "study_end_date",                  limit: 8
    t.integer "survey_complete"
  end

  create_table "crfmatrix_jan26", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=utf8" do |t|
    t.integer "subjectid"
    t.integer "visitid"
    t.integer "participant_id"
    t.string  "redcap_survey_identifier",        limit: 10
    t.string  "survey_timestamp",                limit: 15
    t.integer "baseline_y_n"
    t.integer "fu_year"
    t.integer "epic_id"
    t.integer "pedigree_number"
    t.integer "individual_number"
    t.integer "index_case"
    t.integer "informed_consent_y_n"
    t.integer "informed_consent_date"
    t.integer "informed_consent_version"
    t.integer "assessment_date"
    t.string  "weight",                          limit: 7
    t.string  "height",                          limit: 8
    t.string  "waist_measurement",               limit: 6
    t.string  "sitting_heart_rate",              limit: 7
    t.integer "sitting_hr_regularity"
    t.string  "blood_pressure",                  limit: 6
    t.integer "pregnant_y_n"
    t.integer "pregnancy_test_y_n"
    t.integer "amb_y_n"
    t.string  "amb_time_100m",                   limit: 38
    t.integer "amb_range"
    t.string  "amb_actual_distance",             limit: 20
    t.integer "amb_constant_assist_type"
    t.string  "unilateral_asst_other",           limit: 10
    t.string  "bilateral_asst_other",            limit: 10
    t.string  "amb_meters_w_assist",             limit: 10
    t.integer "fs_visual"
    t.integer "fs_brainstem"
    t.integer "fs_pyramidal"
    t.integer "fs_cerebellar"
    t.integer "fs_sensory"
    t.integer "fs_bladder_bowel"
    t.integer "fs_mental"
    t.decimal "actual_edss",                                 precision: 2,  scale: 1
    t.integer "edss_date"
    t.string  "edss_physician",                  limit: 39
    t.integer "dcf"
    t.integer "disease_course"
    t.integer "rr_to_sp_year"
    t.integer "year_of_dx"
    t.integer "disease_course_change_y_n"
    t.integer "type_of_disease"
    t.integer "neuro_signs_symptoms___1"
    t.integer "neuro_signs_symptoms___2"
    t.integer "neuro_signs_symptoms___3"
    t.integer "neuro_signs_symptoms___4"
    t.integer "neuro_signs_symptoms___5"
    t.integer "neuro_signs_symptoms___6"
    t.integer "neuro_signs_symptoms___7"
    t.integer "neuro_signs_symptoms___8"
    t.integer "neuro_signs_symptoms___9"
    t.integer "neur_sign_sx_visual_loss"
    t.integer "relapse_y_n"
    t.integer "attacks_since_last_visit"
    t.string  "attack1_date",                    limit: 21
    t.integer "attack1_steroids_y_n"
    t.integer "attack1_fully_recovered"
    t.integer "attack1_on___1"
    t.integer "attack1_on___2"
    t.integer "attack1_on___3"
    t.integer "attack1_bs___1"
    t.integer "attack1_bs___2"
    t.integer "attack1_bs___3"
    t.integer "attack1_cerebellar___1"
    t.integer "attack1_cerebellar___2"
    t.integer "attack1_cerebellar___3"
    t.integer "attack1_sc___1"
    t.integer "attack1_sc___2"
    t.integer "attack1_sc___3"
    t.integer "attack1_ltm___1"
    t.integer "attack1_ltm___2"
    t.integer "attack1_ltm___3"
    t.integer "attack1_lts___1"
    t.integer "attack1_lts___2"
    t.integer "attack1_lts___3"
    t.integer "attack1_cognitive___1"
    t.integer "attack1_cognitive___2"
    t.integer "attack1_cognitive___3"
    t.integer "attack1_bowel___1"
    t.integer "attack1_bowel___2"
    t.integer "attack1_bowel___3"
    t.integer "attack1_bladder___1"
    t.integer "attack1_bladder___2"
    t.integer "attack1_bladder___3"
    t.integer "attack1_unknown___1"
    t.integer "attack1_unknown___2"
    t.integer "attack1_unknown___3"
    t.string  "attack2_date",                    limit: 16
    t.integer "attack2_steroids_y_n"
    t.integer "attack2_fully_recover"
    t.integer "attack2_on___1"
    t.integer "attack2_on___2"
    t.integer "attack2_on___3"
    t.integer "attack2_bs___1"
    t.integer "attack2_bs___2"
    t.integer "attack2_bs___3"
    t.integer "attack2_cerebellar___1"
    t.integer "attack2_cerebellar___2"
    t.integer "attack2_cerebellar___3"
    t.integer "attack2_sc___1"
    t.integer "attack2_sc___2"
    t.integer "attack2_sc___3"
    t.integer "attack2_ltm___1"
    t.integer "attack2_ltm___2"
    t.integer "attack2_ltm___3"
    t.integer "attack2_lts___1"
    t.integer "attack2_lts___2"
    t.integer "attack2_lts___3"
    t.integer "attack2_cognitive___1"
    t.integer "attack2_cognitive___2"
    t.integer "attack2_cognitive___3"
    t.integer "attack2_bowel___1"
    t.integer "attack2_bowel___2"
    t.integer "attack2_bowel___3"
    t.integer "attack2_bladder___1"
    t.integer "attack2_bladder___2"
    t.integer "attack2_bladder___3"
    t.integer "attack2_unknown___1"
    t.integer "attack2_unknown___2"
    t.integer "attack2_unknown___3"
    t.integer "attack3_date"
    t.integer "attack3_steroids_y_n"
    t.integer "attack3_fully_recover"
    t.integer "attack3_on___1"
    t.integer "attack3_on___2"
    t.integer "attack3_on___3"
    t.integer "attack3_bs___1"
    t.integer "attack3_bs___2"
    t.integer "attack3_bs___3"
    t.integer "attack3_cerebellar___1"
    t.integer "attack3_cerebellar___2"
    t.integer "attack3_cerebellar___3"
    t.integer "attack3_sc___1"
    t.integer "attack3_sc___2"
    t.integer "attack3_sc___3"
    t.integer "attack3_ltm___1"
    t.integer "attack3_ltm___2"
    t.integer "attack3_ltm___3"
    t.integer "attack3_lts___1"
    t.integer "attack3_lts___2"
    t.integer "attack3_lts___3"
    t.integer "attack3_cognitive___1"
    t.integer "attack3_cognitive___2"
    t.integer "attack3_cognitive___3"
    t.integer "attack3_bowel___1"
    t.integer "attack3_bowel___2"
    t.integer "attack3_bowel___3"
    t.integer "attack3_bladder___1"
    t.integer "attack3_bladder___2"
    t.integer "attack3_bladder___3"
    t.integer "attack3_unknown___1"
    t.integer "attack3_unknown___2"
    t.integer "attack3_unknown___3"
    t.integer "attack4_date"
    t.integer "attack4_steroids_y_n"
    t.integer "attack4_fully_recover"
    t.integer "attack4_on___1"
    t.integer "attack4_on___2"
    t.integer "attack4_on___3"
    t.integer "attack4_bs___1"
    t.integer "attack4_bs___2"
    t.integer "attack4_bs___3"
    t.integer "attack4_cerebellar___1"
    t.integer "attack4_cerebellar___2"
    t.integer "attack4_cerebellar___3"
    t.integer "attack4_sc___1"
    t.integer "attack4_sc___2"
    t.integer "attack4_sc___3"
    t.integer "attack4_ltm___1"
    t.integer "attack4_ltm___2"
    t.integer "attack4_ltm___3"
    t.integer "attack4_lts___1"
    t.integer "attack4_lts___2"
    t.integer "attack4_lts___3"
    t.integer "attack4_cognitive___1"
    t.integer "attack4_cognitive___2"
    t.integer "attack4_cognitive___3"
    t.integer "attack4_bowel___1"
    t.integer "attack4_bowel___2"
    t.integer "attack4_bowel___3"
    t.integer "attack4_bladder___1"
    t.integer "attack4_bladder___2"
    t.integer "attack4_bladder___3"
    t.integer "attack4_unknown___1"
    t.integer "attack4_unknown___2"
    t.integer "attack4_unknown___3"
    t.string  "attack5_date",                    limit: 10
    t.string  "attack5_steroids_y_n",            limit: 10
    t.string  "attack5_fully_recover",           limit: 10
    t.integer "attack5_on___1"
    t.integer "attack5_on___2"
    t.integer "attack5_on___3"
    t.integer "attack5_bs___1"
    t.integer "attack5_bs___2"
    t.integer "attack5_bs___3"
    t.integer "attack5_cerebellar___1"
    t.integer "attack5_cerebellar___2"
    t.integer "attack5_cerebellar___3"
    t.integer "attack5_sc___1"
    t.integer "attack5_sc___2"
    t.integer "attack5_sc___3"
    t.integer "attack5_ltm___1"
    t.integer "attack5_ltm___2"
    t.integer "attack5_ltm___3"
    t.integer "attack5_lts___1"
    t.integer "attack5_lts___2"
    t.integer "attack5_lts___3"
    t.integer "attack5_cognitive___1"
    t.integer "attack5_cognitive___2"
    t.integer "attack5_cognitive___3"
    t.integer "attack5_bowel___1"
    t.integer "attack5_bowel___2"
    t.integer "attack5_bowel___3"
    t.integer "attack5_bladder___1"
    t.integer "attack5_bladder___2"
    t.integer "attack5_bladder___3"
    t.integer "attack5_unknown___1"
    t.integer "attack5_unknown___2"
    t.integer "attack5_unknown___3"
    t.string  "attack_plus_date",                limit: 10
    t.string  "attacks_notes",                   limit: 451
    t.integer "dmt_y_n"
    t.integer "dmt_changed_y_n"
    t.integer "dmt_avonex___1"
    t.integer "dmt_avonex___2"
    t.integer "dmt_rebif___1"
    t.integer "dmt_rebif___2"
    t.integer "dmt_betaseron___1"
    t.integer "dmt_betaseron___2"
    t.integer "dmt_copaxone___1"
    t.integer "dmt_copaxone___2"
    t.integer "dmt_tysabri___1"
    t.integer "dmt_tysabri___2"
    t.integer "dmt_gilenya___1"
    t.integer "dmt_gilenya___2"
    t.integer "dmt_cellcept___1"
    t.integer "dmt_cellcept___2"
    t.integer "dmt_rituxan___1"
    t.integer "dmt_rituxan___2"
    t.integer "dmt_methotrexate___1"
    t.integer "dmt_methotrexate___2"
    t.integer "dmt_ocrelizumab___1"
    t.integer "dmt_ocrelizumab___2"
    t.integer "dmt_bg12___1"
    t.integer "dmt_bg12___2"
    t.integer "dmt_aubagio___1"
    t.integer "dmt_aubagio___2"
    t.integer "dmt_steroids___1"
    t.integer "dmt_steroids___2"
    t.integer "dmt_other1___1"
    t.integer "dmt_other1___2"
    t.integer "dmt_other2___1"
    t.integer "dmt_other2___2"
    t.integer "dmt_off_treatment___1"
    t.integer "dmt_off_treatment___2"
    t.integer "dmt_treatment_naive___1"
    t.integer "dmt_treatment_naive___2"
    t.string  "dmt_last_dose",                   limit: 15
    t.integer "dmt_adv_effect___1"
    t.integer "dmt_adv_effect___2"
    t.integer "dmt_adv_effect___3"
    t.integer "dmt_adv_effect___4"
    t.integer "dmt_adv_effect___5"
    t.integer "dmt_adv_effect___6"
    t.integer "dmt_adv_effect___7"
    t.integer "dmt_adv_effect___8"
    t.integer "dmt_adv_effect___9"
    t.integer "dmt_adv_effect___10"
    t.string  "dmt_adverse_other",               limit: 28
    t.string  "dmt_side_effects",                limit: 144
    t.string  "avonex_dose",                     limit: 10
    t.string  "avonex_date_started",             limit: 35
    t.integer "avonex_still_on_drug"
    t.integer "avonex_last_dose"
    t.string  "avonex_date_stopped",             limit: 26
    t.integer "avonex_lack_of_efficacy"
    t.integer "avonex_adverse_event___1"
    t.integer "avonex_adverse_event___2"
    t.integer "avonex_adverse_event___3"
    t.integer "avonex_adverse_event___4"
    t.integer "avonex_adverse_event___5"
    t.integer "avonex_adverse_event___6"
    t.integer "avonex_adverse_event___7"
    t.integer "avonex_adverse_event___8"
    t.integer "avonex_adverse_event___9"
    t.integer "avonex_adverse_event___10"
    t.string  "avonex_adverse_other",            limit: 10
    t.string  "avonex_other_discontinue",        limit: 29
    t.string  "rebif_dose",                      limit: 10
    t.integer "rebif_date_started"
    t.integer "rebif_still_on_drug"
    t.string  "rebif_last_dose",                 limit: 10
    t.integer "rebif_date_stopped"
    t.integer "rebif_lack_of_efficacy"
    t.integer "rebif_adverse_event___1"
    t.integer "rebif_adverse_event___2"
    t.integer "rebif_adverse_event___3"
    t.integer "rebif_adverse_event___4"
    t.integer "rebif_adverse_event___5"
    t.integer "rebif_adverse_event___6"
    t.integer "rebif_adverse_event___7"
    t.integer "rebif_adverse_event___8"
    t.integer "rebif_adverse_event___9"
    t.integer "rebif_adverse_event___10"
    t.string  "rebif_adverse_other",             limit: 10
    t.string  "rebif_other_discontinue",         limit: 34
    t.string  "betaseron_dose",                  limit: 10
    t.integer "betaseron_date_started"
    t.integer "betaseron_still_on_drug"
    t.string  "betaseron_last_dose",             limit: 10
    t.integer "betaseron_date_stopped"
    t.integer "betaseron_lack_of_efficacy"
    t.integer "betaseron_adverse_event___1"
    t.integer "betaseron_adverse_event___2"
    t.integer "betaseron_adverse_event___3"
    t.integer "betaseron_adverse_event___4"
    t.integer "betaseron_adverse_event___5"
    t.integer "betaseron_adverse_event___6"
    t.integer "betaseron_adverse_event___7"
    t.integer "betaseron_adverse_event___8"
    t.integer "betaseron_adverse_event___9"
    t.integer "betaseron_adverse_event___10"
    t.string  "betaseron_adverse_other",         limit: 10
    t.string  "betaseron_other_discontinue",     limit: 24
    t.string  "copaxone_dose",                   limit: 10
    t.string  "copaxone_date_started",           limit: 41
    t.integer "copaxone_still_on_drug"
    t.integer "copaxone_last_dose"
    t.integer "copaxone_date_stopped"
    t.integer "copaxone_lack_of_efficacy"
    t.integer "copaxone_adverse_event___1"
    t.integer "copaxone_adverse_event___2"
    t.integer "copaxone_adverse_event___3"
    t.integer "copaxone_adverse_event___4"
    t.integer "copaxone_adverse_event___5"
    t.integer "copaxone_adverse_event___6"
    t.integer "copaxone_adverse_event___7"
    t.integer "copaxone_adverse_event___8"
    t.integer "copaxone_adverse_event___9"
    t.integer "copaxone_adverse_event___10"
    t.string  "copaxone_adverse_other",          limit: 10
    t.string  "copaxone_other_discontinue",      limit: 38
    t.string  "tysabri_dose",                    limit: 15
    t.integer "tysabri_date_started"
    t.integer "tysabri_still_on_drug"
    t.integer "tysabri_last_dose"
    t.string  "tysabri_date_stopped",            limit: 27
    t.integer "tysabri_lack_of_efficacy"
    t.integer "tysabri_adverse_event___1"
    t.integer "tysabri_adverse_event___2"
    t.integer "tysabri_adverse_event___3"
    t.integer "tysabri_adverse_event___4"
    t.integer "tysabri_adverse_event___5"
    t.integer "tysabri_adverse_event___6"
    t.integer "tysabri_adverse_event___7"
    t.integer "tysabri_adverse_event___8"
    t.integer "tysabri_adverse_event___9"
    t.integer "tysabri_adverse_event___10"
    t.string  "tysabri_adverse_other",           limit: 7
    t.string  "tysabri_other_discontinue",       limit: 21
    t.string  "gilenya_dose",                    limit: 25
    t.string  "gilenya_date_started",            limit: 22
    t.integer "gilenya_still_on_drug"
    t.integer "gilenya_last_dose"
    t.integer "gilenya_date_stopped"
    t.integer "gilenya_lack_of_efficacy"
    t.integer "gilenya_adverse_event___1"
    t.integer "gilenya_adverse_event___2"
    t.integer "gilenya_adverse_event___3"
    t.integer "gilenya_adverse_event___4"
    t.integer "gilenya_adverse_event___5"
    t.integer "gilenya_adverse_event___6"
    t.integer "gilenya_adverse_event___7"
    t.integer "gilenya_adverse_event___8"
    t.integer "gilenya_adverse_event___9"
    t.integer "gilenya_adverse_event___10"
    t.string  "gilenya_adverse_other",           limit: 10
    t.string  "gilenya_other_discontinue",       limit: 13
    t.string  "cellcept_dose",                   limit: 10
    t.string  "cellcept_date_started",           limit: 10
    t.string  "cellcept_still_on_drug",          limit: 10
    t.string  "cellcept_last_dose",              limit: 10
    t.string  "cellcept_date_stopped",           limit: 10
    t.string  "cellcept_lack_of_efficacy",       limit: 10
    t.integer "cellcept_adverse_event___1"
    t.integer "cellcept_adverse_event___2"
    t.integer "cellcept_adverse_event___3"
    t.integer "cellcept_adverse_event___4"
    t.integer "cellcept_adverse_event___5"
    t.integer "cellcept_adverse_event___6"
    t.integer "cellcept_adverse_event___7"
    t.integer "cellcept_adverse_event___8"
    t.integer "cellcept_adverse_event___9"
    t.integer "cellcept_adverse_event___10"
    t.string  "cellcept_other_discontinue",      limit: 10
    t.string  "cellcept_adverse_other",          limit: 10
    t.string  "rituxan_dose",                    limit: 10
    t.integer "rituxan_date_started"
    t.integer "rituxan_still_on_drug"
    t.string  "rituxan_last_dose",               limit: 10
    t.integer "rituxan_date_stopped"
    t.integer "rituxan_lack_of_efficacy"
    t.integer "rituxan_adverse_event___1"
    t.integer "rituxan_adverse_event___2"
    t.integer "rituxan_adverse_event___3"
    t.integer "rituxan_adverse_event___4"
    t.integer "rituxan_adverse_event___5"
    t.integer "rituxan_adverse_event___6"
    t.integer "rituxan_adverse_event___7"
    t.integer "rituxan_adverse_event___8"
    t.integer "rituxan_adverse_event___9"
    t.integer "rituxan_adverse_event___10"
    t.string  "rituxan_adverse_other",           limit: 10
    t.string  "rituxan_other_discontinue",       limit: 16
    t.string  "methotrexate_dose",               limit: 10
    t.string  "methotrexate_date_started",       limit: 10
    t.string  "methotrexate_still_on_drug",      limit: 10
    t.string  "methotrexate_last_dose",          limit: 10
    t.string  "methotrexate_date_stopped",       limit: 10
    t.string  "methotrexate_lack_of_efficacy",   limit: 10
    t.integer "methotrexate_adverse_event___1"
    t.integer "methotrexate_adverse_event___2"
    t.integer "methotrexate_adverse_event___3"
    t.integer "methotrexate_adverse_event___4"
    t.integer "methotrexate_adverse_event___5"
    t.integer "methotrexate_adverse_event___6"
    t.integer "methotrexate_adverse_event___7"
    t.integer "methotrexate_adverse_event___8"
    t.integer "methotrexate_adverse_event___9"
    t.integer "methotrexate_adverse_event___10"
    t.string  "methotrexate_adverse_other",      limit: 10
    t.string  "methotrexate_other_discontinue",  limit: 10
    t.string  "ocrelizumab_dose",                limit: 10
    t.string  "ocrelizumab_date_started",        limit: 10
    t.string  "ocrelizumab_still_on_drug",       limit: 10
    t.string  "ocrelizumab_last_dose",           limit: 10
    t.string  "ocrelizumab_date_stopped",        limit: 10
    t.string  "ocrelizumab_lack_of_efficacy",    limit: 10
    t.integer "ocrelizumab_adverse_event___1"
    t.integer "ocrelizumab_adverse_event___2"
    t.integer "ocrelizumab_adverse_event___3"
    t.integer "ocrelizumab_adverse_event___4"
    t.integer "ocrelizumab_adverse_event___5"
    t.integer "ocrelizumab_adverse_event___6"
    t.integer "ocrelizumab_adverse_event___7"
    t.integer "ocrelizumab_adverse_event___8"
    t.integer "ocrelizumab_adverse_event___9"
    t.integer "ocrelizumab_adverse_event___10"
    t.string  "ocrelizumab_adverse_other",       limit: 10
    t.string  "ocrelizumab_other_discontinue",   limit: 10
    t.string  "bg12_dose",                       limit: 10
    t.string  "bg12_date_started",               limit: 10
    t.string  "bg12_still_on_drug",              limit: 10
    t.string  "bg12_last_dose",                  limit: 10
    t.string  "bg12_date_stopped",               limit: 10
    t.string  "bg12_lack_of_efficacy",           limit: 10
    t.integer "bg12_adverse_event___1"
    t.integer "bg12_adverse_event___2"
    t.integer "bg12_adverse_event___3"
    t.integer "bg12_adverse_event___4"
    t.integer "bg12_adverse_event___5"
    t.integer "bg12_adverse_event___6"
    t.integer "bg12_adverse_event___7"
    t.integer "bg12_adverse_event___8"
    t.integer "bg12_adverse_event___9"
    t.integer "bg12_adverse_event___10"
    t.string  "bg12_adverse_other",              limit: 10
    t.string  "bg12_other_discontinue",          limit: 10
    t.string  "aubagio_dose",                    limit: 10
    t.string  "aubagio_date_started",            limit: 10
    t.string  "aubagio_still_on_drug",           limit: 10
    t.string  "aubagio_last_dose",               limit: 10
    t.string  "aubagio_date_stopped",            limit: 10
    t.string  "aubagio_lack_of_efficacy",        limit: 10
    t.integer "aubagio_adverse_event___1"
    t.integer "aubagio_adverse_event___2"
    t.integer "aubagio_adverse_event___3"
    t.integer "aubagio_adverse_event___4"
    t.integer "aubagio_adverse_event___5"
    t.integer "aubagio_adverse_event___6"
    t.integer "aubagio_adverse_event___7"
    t.integer "aubagio_adverse_event___8"
    t.integer "aubagio_adverse_event___9"
    t.integer "aubagio_adverse_event___10"
    t.string  "aubagio_adverse_other",           limit: 10
    t.string  "aubagio_other_discontinue",       limit: 10
    t.string  "setroid_name",                    limit: 16
    t.string  "steroid_dose",                    limit: 6
    t.integer "steroid_date_started"
    t.integer "steroid_still_on_drug"
    t.string  "steroid_last_dose",               limit: 10
    t.string  "steroid_date_stopped",            limit: 17
    t.integer "steroid_lack_of_efficacy"
    t.integer "steroid_adverse_event___1"
    t.integer "steroid_adverse_event___2"
    t.integer "steroid_adverse_event___3"
    t.integer "steroid_adverse_event___4"
    t.integer "steroid_adverse_event___5"
    t.integer "steroid_adverse_event___6"
    t.integer "steroid_adverse_event___7"
    t.integer "steroid_adverse_event___8"
    t.integer "steroid_adverse_event___9"
    t.integer "steroid_adverse_event___10"
    t.string  "steroid_adverse_other",           limit: 10
    t.string  "steroid_other_discontinue",       limit: 17
    t.string  "other1_medication_name",          limit: 19
    t.string  "other1_dose",                     limit: 17
    t.integer "other1_date_started"
    t.integer "other1_still_on_drug"
    t.integer "other1_last_dose"
    t.integer "other1_date_stopped"
    t.integer "other1_lack_of_efficacy"
    t.integer "other1_adverse_event___1"
    t.integer "other1_adverse_event___2"
    t.integer "other1_adverse_event___3"
    t.integer "other1_adverse_event___4"
    t.integer "other1_adverse_event___5"
    t.integer "other1_adverse_event___6"
    t.integer "other1_adverse_event___7"
    t.integer "other1_adverse_event___8"
    t.integer "other1_adverse_event___9"
    t.integer "other1_adverse_event___10"
    t.string  "other1_adverse_other",            limit: 8
    t.string  "other1_other_discontinue",        limit: 31
    t.string  "other2_medication_name",          limit: 15
    t.string  "other2_dose",                     limit: 10
    t.integer "other2_date_started"
    t.integer "other2_still_on_drug"
    t.integer "other2_last_dose"
    t.string  "other2_date_stopped",             limit: 10
    t.string  "other2_lack_of_efficacy",         limit: 10
    t.integer "other2_adverse_event___1"
    t.integer "other2_adverse_event___2"
    t.integer "other2_adverse_event___3"
    t.integer "other2_adverse_event___4"
    t.integer "other2_adverse_event___5"
    t.integer "other2_adverse_event___6"
    t.integer "other2_adverse_event___7"
    t.integer "other2_adverse_event___8"
    t.integer "other2_adverse_event___9"
    t.integer "other2_adverse_event___10"
    t.string  "other2_adverse_other",            limit: 10
    t.string  "other2_other_discontinue",        limit: 10
    t.string  "dmt_comments",                    limit: 10
    t.integer "peg_dom_hand"
    t.decimal "peg_dom1_time",                               precision: 4,  scale: 2
    t.string  "peg_dom1_notes",                  limit: 32
    t.string  "peg_dom1_incomplete",             limit: 10
    t.string  "peg_dom1_incomplete_other",       limit: 10
    t.decimal "peg_dom2_time",                               precision: 4,  scale: 2
    t.string  "peg_dom2_notes",                  limit: 102
    t.string  "peg_dom2_incomplete",             limit: 10
    t.string  "peg_dom2_incomplete_other",       limit: 10
    t.integer "peg_dom_more_trials"
    t.string  "peg_dom_more_trials_reason",      limit: 42
    t.decimal "peg_ndom1_time",                              precision: 4,  scale: 2
    t.string  "peg_ndom1_notes",                 limit: 34
    t.string  "peg_ndom1_incomplete",            limit: 10
    t.string  "peg_ndom1_incomplete_other",      limit: 10
    t.decimal "peg_ndom2_time",                              precision: 4,  scale: 2
    t.string  "peg_ndom2_notes",                 limit: 55
    t.string  "peg_ndom2_incomplete",            limit: 10
    t.string  "peg_ndom2_incomplete_other",      limit: 10
    t.integer "peg_ndom_more_trials"
    t.string  "peg_ndom_more_trials_reason",     limit: 57
    t.integer "pasat_form_a_b"
    t.integer "pasat_score"
    t.string  "pasat_notes",                     limit: 51
    t.integer "pasat_incomplete"
    t.string  "past_incomplete_other",           limit: 38
    t.integer "pasat_1half_supp_score"
    t.integer "pasat_2half_supp_score"
    t.integer "pasat_commissions_suppscore"
    t.string  "sdmt_score",                      limit: 5
    t.string  "sdmt_comments",                   limit: 10
    t.integer "walk_afo_y_n"
    t.integer "walk_asst_y_n"
    t.integer "walk_asst_device"
    t.string  "walk_time1",                      limit: 4
    t.string  "walk1_notes",                     limit: 19
    t.integer "walk1_incomplete_y_n"
    t.string  "walk1_incomplete_reason",         limit: 64
    t.decimal "walk_time2",                                  precision: 4,  scale: 2
    t.string  "walk2_notes",                     limit: 19
    t.integer "walk2_incomplete_y_n"
    t.string  "walk2_incomplete_reason",         limit: 69
    t.integer "blood_draw_date"
    t.decimal "blood_draw_time",                             precision: 21, scale: 5
    t.integer "blood_draw_last_meal"
    t.decimal "blood_draw_meal_time",                        precision: 21, scale: 5
    t.integer "blood_draw_meal_type"
    t.integer "mri_date"
    t.integer "mri_contradictions_y_n"
    t.string  "mri_contradiction_notes",         limit: 112
    t.integer "withdrawn_y_n"
    t.string  "withdrawn_date",                  limit: 10
    t.string  "withdrawn_reason",                limit: 10
    t.integer "sample_destruction_y_n"
    t.string  "sample_destroyed_reason",         limit: 10
    t.string  "sample_destroyed_other",          limit: 10
    t.string  "coordinator_name",                limit: 15
    t.integer "study_end_date"
    t.integer "survey_complete"
  end

  create_table "csf", primary_key: "CSFID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "VisitID"
    t.string  "CSFDate",   limit: 20
    t.string  "IgG",       limit: 3
    t.string  "OCB",       limit: 3
    t.string  "CellCount", limit: 3
    t.index ["VisitID"], name: "ClinicalFollowupID", using: :btree
  end

  create_table "eduweight", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "CaffeineFreq"
    t.string  "Overweight"
    t.integer "OWTChild",               limit: 1
    t.integer "OWTTeen",                limit: 1
    t.integer "OWTYoungAdult",          limit: 1
    t.integer "OWTAdult",               limit: 1
    t.integer "OWTOlder",               limit: 1
    t.string  "MemoryConcerns",         limit: 20
    t.string  "MemoryDecreaseLastYear", limit: 20
    t.string  "YrsEducation",           limit: 100
    t.integer "SubjectId"
    t.index ["SubjectId"], name: "SubjectId", using: :btree
  end

  create_table "epic1_manuscript_subjects", primary_key: "SubjectID", id: :integer, default: 0, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "EPICID", limit: 10, default: ""
  end

  create_table "epicreport", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "subjectid"
    t.integer  "visitid"
    t.boolean  "exclude",                       null: false
    t.boolean  "withdrawn",                     null: false
    t.string   "PropFamily",        limit: 50
    t.string   "PatientName"
    t.string   "Gender"
    t.datetime "DOB"
    t.integer  "OnsetYear",         limit: 2
    t.integer  "AgeOfOnset",        limit: 2
    t.string   "FamilyHistory",     limit: 50
    t.datetime "mridate"
    t.datetime "ClinicalVisitDate"
    t.string   "mritype"
    t.string   "VisitType",         limit: 100
    t.string   "VisitStatus",       limit: 50
    t.string   "DiseaseCourse",     limit: 3
    t.float    "actualedss",        limit: 53
    t.float    "msss",              limit: 53
    t.float    "pasatscore",        limit: 53
    t.float    "walkscore",         limit: 53
    t.float    "DomScore",          limit: 53
    t.float    "NonDomScore",       limit: 53
    t.string   "PasatNotes"
    t.string   "PegNotes"
    t.string   "WalkNotes"
    t.string   "DMT"
    t.integer  "AtkCt"
    t.float    "AvgPegScore",       limit: 53
    t.float    "PegZ",              limit: 53
    t.float    "WalkZ",             limit: 53
    t.float    "PasatZ",            limit: 53
    t.float    "MSFCZ",             limit: 53
    t.integer  "Enrolled"
    t.string   "SmokerStatus",      limit: 50
    t.string   "DMT1",              limit: 50
    t.string   "DMT1 Start",        limit: 50
    t.string   "DMT1 End",          limit: 50
    t.string   "DMT1 On-going",     limit: 50
    t.string   "DMT2",              limit: 50
    t.string   "DMT2 Start",        limit: 50
    t.string   "DMT2 End",          limit: 50
    t.string   "DMT2 On-going",     limit: 50
    t.string   "DMT3",              limit: 50
    t.string   "DMT3 Start",        limit: 50
    t.string   "DMT3 End",          limit: 50
    t.string   "DMT3 On-going",     limit: 50
    t.integer  "DRB1_1501_copies"
    t.string   "CaseControl",       limit: 50
    t.string   "MSID",              limit: 20
    t.string   "Time_Point",        limit: 5
    t.string   "GM_volume",         limit: 50
    t.string   "Siena_PBVC",        limit: 50
    t.index ["subjectid"], name: "subjectid", using: :btree
    t.index ["visitid"], name: "visitid", using: :btree
  end

  create_table "evokedpotentials", primary_key: "EvokedPotentialsID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "VisitID"
    t.string  "EvokedPotentialType", limit: 1
    t.string  "EvokedDate",          limit: 12
    t.string  "Result",              limit: 3
    t.index ["VisitID"], name: "ClinicalFollowupID", using: :btree
  end

  create_table "fams", primary_key: "FAMSID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "VisitId",                 null: false
    t.integer "RelativePain"
    t.integer "FeelSad"
    t.integer "LosingHope"
    t.integer "EnjoyLife"
    t.integer "TrappedByCondition"
    t.integer "DepressedAboutCondition"
    t.integer "FeelUseless"
    t.integer "FeelOverwhelmed"
    t.integer "LackEnergy"
    t.integer "FeelTired"
    t.integer "TroubleStarting"
    t.integer "TroubleFinishing"
    t.integer "NeedRest"
    t.integer "TroubleRemembering"
    t.integer "TroubleConcentrating"
    t.integer "ThinkingSlower"
    t.integer "TroubleLearning"
  end

  create_table "fssc", primary_key: "FSSCID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "VisitId"
    t.string  "Visual",       limit: 50
    t.string  "Visualconv",   limit: 50
    t.string  "Brainstem",    limit: 50
    t.string  "Pyramidal",    limit: 50
    t.string  "Cerebellar",   limit: 50
    t.string  "Sensory",      limit: 50
    t.string  "Bowel",        limit: 50
    t.string  "Bowelconv",    limit: 50
    t.string  "Mental",       limit: 50
    t.decimal "ActualEDSS",              precision: 3, scale: 1
    t.string  "EDSS",         limit: 5
    t.string  "Investigator"
    t.index ["VisitId"], name: "VisitId", unique: true, using: :btree
  end

  create_table "gennet_vitl", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=utf8" do |t|
    t.integer "SubjectID"
    t.integer "VisitID"
    t.string  "STUDY",            limit: 9
    t.integer "INVSITE"
    t.integer "INV"
    t.integer "PT"
    t.string  "GSKID",            limit: 20
    t.string  "CPEVENT",          limit: 8
    t.integer "VisitSeq"
    t.integer "VISIT_NUMBER"
    t.integer "SUBEVENT_NUMBER"
    t.integer "REPEATSN"
    t.string  "QUALIFYING_VALUE", limit: 10
    t.integer "DCMDATE"
    t.string  "DCMNAME",          limit: 5
    t.string  "DCMSUBNM",         limit: 7
    t.integer "SUBSETSN"
    t.string  "DOCNUM",           limit: 10
    t.integer "VTLDT"
    t.decimal "WT",                          precision: 5, scale: 2
    t.string  "WTU",              limit: 2
    t.integer "HT"
    t.string  "HTU",              limit: 2
    t.integer "WST"
    t.string  "WSTU",             limit: 2
    t.integer "HRTRTE"
    t.string  "HRTRTERG",         limit: 1
    t.integer "BPS"
    t.integer "BPD"
    t.index ["GSKID"], name: "GSKID", using: :btree
    t.index ["PT"], name: "PT", using: :btree
    t.index ["SubjectID"], name: "SubjectID", using: :btree
    t.index ["VISIT_NUMBER"], name: "VISIT_NUMBER", using: :btree
    t.index ["VisitSeq"], name: "VisitSeq", using: :btree
  end

  create_table "gmeds", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=utf8" do |t|
    t.integer "subjectid"
    t.integer "visitid"
    t.integer "EPIC ID #"
    t.string  "Visit",                                          limit: 20
    t.string  "Medication",                                     limit: 34
    t.string  "Reason for Use",                                 limit: 28
    t.string  "Acquisition Method (O = OTC or P=Prescription)", limit: 1
    t.string  "Frequency (R = Regularly, O = Occasionally)",    limit: 1
    t.integer "BC HRT"
    t.integer "BC"
    t.integer "HRT"
  end

  create_table "gsk_hla", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.float   "subjectid",   limit: 53
    t.string  "gskid"
    t.integer "copies_1501", limit: 2
    t.index ["gskid"], name: "gskid", using: :btree
    t.index ["subjectid"], name: "subjectid", using: :btree
  end

  create_table "lab", primary_key: "LabID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "VisitID"
    t.string  "CBC",               limit: 3
    t.string  "B12",               limit: 3
    t.string  "HTLVOrHIV",         limit: 3
    t.string  "SedRateOrCRP",      limit: 3
    t.string  "RF",                limit: 3
    t.string  "ANA",               limit: 3
    t.string  "dsDNA",             limit: 3
    t.string  "SSAOrSSB",          limit: 3
    t.string  "VDRL",              limit: 3
    t.string  "ACE",               limit: 3
    t.string  "ChestXRay",         limit: 3
    t.string  "Borrelia",          limit: 3
    t.string  "VLCFA",             limit: 3
    t.string  "LactateOrPyruvate", limit: 3
    t.string  "UPScreen",          limit: 3
    t.string  "AQP4",              limit: 3
    t.string  "VitaminD",          limit: 3
    t.string  "JCVab",             limit: 3
    t.index ["VisitID"], name: "ClinicalFollowupID", using: :btree
  end

  create_table "lkpmsss", primary_key: ["DiseaseDuration", "EDSS"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "DiseaseDuration", limit: 2,                                         null: false
    t.decimal "EDSS",                      precision: 3, scale: 1, default: "0.0", null: false
    t.decimal "MSSS",                      precision: 4, scale: 2
  end

  create_table "mail", primary_key: "MailID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "SubjectID"
    t.string   "MailType",      limit: 10
    t.boolean  "MailCompleted",                    null: false
    t.datetime "DateSent"
    t.datetime "DateReplied"
    t.text     "Comment",       limit: 4294967295
    t.index ["SubjectID"], name: "SubjectID", using: :btree
  end

  create_table "microbiomesample", primary_key: "MicrobiomeSampleID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "VisitID",                       null: false
    t.date    "DateKitProvided"
    t.text    "Comments",        limit: 65535
  end

  create_table "more_conmeds", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "EPICID",     limit: 7
    t.string "VisitType",  limit: 9
    t.string "Type",       limit: 12
    t.string "Medication", limit: 183
    t.string "Reason",     limit: 92
    t.string "Frequency",  limit: 12
    t.index ["EPICID"], name: "EPICID", using: :btree
    t.index ["VisitType"], name: "VisitType", using: :btree
  end

  create_table "mri", primary_key: "MRIID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "VisitID"
    t.string  "MRIType",               limit: 20
    t.date    "MRIDate"
    t.boolean "MRINormal"
    t.boolean "BrainMRIcwMS"
    t.boolean "GadEnhancingLesions"
    t.boolean "AbnormalNoDetail"
    t.boolean "SmallLesions"
    t.boolean "LargeLesions"
    t.text    "MRIComment",            limit: 4294967295
    t.string  "Accession",             limit: 20
    t.date    "AdjDate"
    t.string  "RadiologyReviewStatus", limit: 20
    t.string  "ResearchAssessment"
    t.string  "ResearchGadEnhancing",  limit: 10
    t.string  "NewLesions",            limit: 10
    t.date    "ComparedToMRIDate"
    t.text    "ResearchComment",       limit: 65535
    t.string  "ResearchReviewStatus",  limit: 20
    t.index ["VisitID", "MRIType", "MRIDate"], name: "VisitID", unique: true, using: :btree
    t.index ["VisitID"], name: "ClinicalFollowupID", using: :btree
  end

  create_table "mridetails", primary_key: "ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "GSKID"
    t.string  "MSID"
    t.integer "SubjectID"
    t.integer "VisitID"
    t.string  "VisitType"
    t.string  "ScanDate"
    t.string  "CE"
    t.string  "CE_Lesion"
    t.string  "New_T2_Lesions"
    t.string  "T2_LL"
    t.string  "T1_LL"
    t.string  "SIENA-1"
    t.string  "SIENA-2"
    t.string  "SIENA-3"
    t.string  "SIENA-4"
    t.string  "SIENA-5"
    t.string  "SIENA-6"
    t.string  "SIENAXvScale"
    t.string  "SIENAXnGMV"
    t.string  "SIENAXnWMV"
    t.string  "SIENAXnLesionV"
    t.string  "SIENAXnBPV"
    t.string  "SIENAXnCSFVol"
    t.string  "SIENAXnLesion_nWMV"
    t.string  "naaNAWM"
    t.string  "naaNAGM"
    t.string  "GluNAWM"
    t.string  "GluNAGM"
    t.string  "CreaNAWM"
    t.string  "CreaNAGM"
    t.string  "CholNAWM"
    t.string  "CholNAGM"
    t.string  "M-I_NAWM"
    t.string  "M-I_NAGM"
    t.index ["GSKID"], name: "EPICID", using: :btree
    t.index ["MSID"], name: "MSID", using: :btree
    t.index ["SubjectID"], name: "SubjectID", using: :btree
    t.index ["VisitID"], name: "VisitID", using: :btree
  end

  create_table "msfc_peg", primary_key: "MSFC_PegID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "VisitId"
    t.string  "HandTested",              limit: 20,  default: "", null: false
    t.float   "Trial1",                  limit: 53
    t.string  "Trial1Affects",           limit: 100
    t.string  "Trial1IncompleteReason",  limit: 200
    t.string  "Trial1IncompleteDetails"
    t.string  "Trial1AnalyticalStatus",  limit: 50
    t.float   "Trial2",                  limit: 53
    t.string  "Trial2Affects",           limit: 200
    t.string  "Trial2IncompleteReason",  limit: 100
    t.string  "Trial2IncompleteDetails"
    t.string  "Trial2AnalyticalStatus",  limit: 50
    t.string  "Comments"
    t.string  "DominantHand",            limit: 2
    t.index ["HandTested"], name: "HandTested", using: :btree
    t.index ["VisitId", "HandTested"], name: "ixhand", unique: true, using: :btree
    t.index ["VisitId"], name: "VisitId", using: :btree
  end

  create_table "msfc_walk", primary_key: "MSFC_WalkID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "VisitId"
    t.string  "Trial1AFO",               limit: 1
    t.string  "Trial1AssistiveDevice",   limit: 1
    t.string  "Trial1UnilatAssist",      limit: 20
    t.string  "Trial1BilatAssist",       limit: 20
    t.float   "Trial1",                  limit: 53
    t.string  "Trial1Affects",           limit: 100
    t.string  "Trial1IncompleteReason",  limit: 100
    t.string  "Trial1IncompleteDetails"
    t.string  "Trial1AnalyticalStatus",  limit: 50
    t.string  "Trial2AFO",               limit: 1
    t.string  "Trial2AssistiveDevice",   limit: 1
    t.string  "Trial2UnilatAssist",      limit: 20
    t.string  "Trial2BilatAssist",       limit: 20
    t.float   "Trial2",                  limit: 53
    t.string  "Trial2Affects",           limit: 100
    t.string  "Trial2IncompleteReason",  limit: 100
    t.string  "Trial2IncompleteDetails"
    t.string  "Trial2AnalyticalStatus",  limit: 50
    t.index ["VisitId"], name: "ixvis", unique: true, using: :btree
  end

  create_table "mshistory", primary_key: "MSHistoryID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "SubjectID",                             null: false
    t.integer "OnsetYear",               limit: 2
    t.integer "AgeOfOnset",              limit: 2
    t.integer "DxYear",                  limit: 2
    t.string  "DiseaseType",             limit: 6,                  collation: "utf8_general_ci"
    t.integer "YrRRSP"
    t.integer "YrsFromRRToSP",           limit: 2
    t.integer "YrEDSS3"
    t.integer "YrsToEDSS3",              limit: 2
    t.integer "YrEDSS6"
    t.integer "YrsToEDSS6",              limit: 2
    t.integer "YrEDSS6_5"
    t.integer "YrsToEDSS6_5",            limit: 2
    t.integer "YrEDSS7"
    t.integer "YrsToEDSS7",              limit: 2
    t.string  "TreatmentStatus",         limit: 30
    t.text    "TreatmentHistoryComment", limit: 65535
    t.index ["SubjectID"], name: "ixsubjectid", unique: true, using: :btree
  end

  create_table "newmeds", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=utf8" do |t|
    t.integer "SubjectID"
    t.integer "VisitID"
    t.string  "EPICID",                                         limit: 7
    t.integer "VisitSeq"
    t.string  "EPIC ID #",                                      limit: 3
    t.string  "Visit (B,1,2,3,….10)",                           limit: 1
    t.string  "Medication",                                     limit: 100
    t.string  "Reason for Use",                                 limit: 43
    t.string  "Acquisition Method (O = OTC or P=Prescription)", limit: 1
    t.string  "Frequence (R = Regularly, O = Occasionally)",    limit: 1
  end

  create_table "nihdef", primary_key: "NIHDefID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "NIHType",  limit: 50
    t.string "NIHValue", limit: 50
    t.string "Desc",     limit: 100
  end

  create_table "nihreport", primary_key: ["RptGrp", "Seq"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "RptGrp",            null: false
    t.integer "Seq",               null: false
    t.string  "Desc",   limit: 50
    t.integer "Female"
    t.integer "Male"
    t.integer "Unk"
    t.integer "Total"
  end

  create_table "oct", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "EPICID"
    t.integer "VisitId"
    t.string  "VisitType",         limit: 20
    t.date    "VisitDate"
    t.integer "AgeAtExam"
    t.decimal "RNFL_Thickness_OD",            precision: 5, scale: 2
    t.decimal "Temporal_Avg_OD",              precision: 4, scale: 1
    t.decimal "Macular_Volume_OD",            precision: 4, scale: 3
    t.string  "Best_Acuity_OD",    limit: 9
    t.decimal "RNFL_Thickness_OS",            precision: 5, scale: 2
    t.decimal "Temporal_Avg_OS",              precision: 4, scale: 1
    t.decimal "Macular_Volume_OS",            precision: 4, scale: 3
    t.string  "Best_Acuity_OS",    limit: 9
    t.index ["EPICID"], name: "ixEPICID", using: :btree
    t.index ["VisitId"], name: "ixVisitID", using: :btree
  end

  create_table "othermeds", primary_key: "OtherMedID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "SubjectID",                   null: false
    t.string  "VisitType",     limit: 20
    t.string  "Medication",    limit: 200
    t.string  "ReasonForUse"
    t.string  "Acquisition",   limit: 20
    t.string  "Frequency",     limit: 20
    t.text    "ChemicalNotes", limit: 65535
    t.index ["SubjectID", "VisitType", "Medication", "ReasonForUse", "Acquisition"], name: "ixuniq", unique: true, using: :btree
    t.index ["SubjectID"], name: "ixsubid", using: :btree
  end

  create_table "pasat", primary_key: "PasatId", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "VisitId"
    t.string  "PasatFormType",         limit: 20
    t.decimal "TotalScore",                       precision: 5, scale: 2
    t.string  "ScoreAffects"
    t.string  "IncompleteReason"
    t.string  "IncompleteDetails"
    t.string  "PasatAnalyticalStatus", limit: 50
    t.string  "ScoreHalf1"
    t.string  "ScoreHalf2"
    t.string  "TotalCorrectionErrors"
    t.string  "TotalOmissionErrors"
    t.index ["VisitId"], name: "VisitId_2", unique: true, using: :btree
  end

  create_table "pqmore", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=utf8" do |t|
    t.integer "subjectid"
    t.integer "visitid"
    t.string  "GSKID",        limit: 7
    t.integer "epic_id"
    t.string  "fu_year",      limit: 9
    t.string  "visit_date",   limit: 10
    t.string  "Acquisition",  limit: 12
    t.string  "Medication",   limit: 54
    t.string  "ReasonForUse", limit: 33
    t.string  "Frequency",    limit: 12
  end

  create_table "researchmri", primary_key: "ResearchMRIID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "VisitID"
    t.string  "MRIType",       limit: 20
    t.date    "MRIDate"
    t.string  "NewGadLesions", limit: 3
    t.string  "NewT2Lesions",  limit: 3
    t.text    "MRIComment",    limit: 4294967295
    t.index ["VisitID"], name: "ClinicalFollowupID", using: :btree
  end

  create_table "sample", primary_key: "SampleID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "VisitID"
    t.date    "SampleRecDate"
    t.boolean "SampleRecd",                             null: false
    t.string  "SampleSource",        limit: 50
    t.string  "SampleLabReturnedTo", limit: 10
    t.text    "SampleComment",       limit: 4294967295
    t.string  "DrawTime",            limit: 50
    t.string  "LastMealDay",         limit: 50
    t.string  "LastMealTime",        limit: 50
    t.string  "LastMealType",        limit: 50
    t.index ["VisitID"], name: "ClinicalFollowupID", using: :btree
  end

  create_table "sdmt", primary_key: "SDMTID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "VisitId",                          null: false
    t.string  "Score",                 limit: 20
    t.string  "CompletedBy",           limit: 30
    t.string  "SDMTAffects"
    t.string  "SDMTIncompleteReason"
    t.string  "SDMTIncompleteDetails"
    t.string  "AnalyticalStatus",      limit: 50
    t.index ["VisitId"], name: "VisitId", unique: true, using: :btree
  end

  create_table "sdmt2", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "SDMTID",                           default: 0, null: false
    t.integer "VisitId",                                      null: false
    t.string  "Score",                 limit: 20
    t.string  "CompletedBy",           limit: 30
    t.string  "SDMTAffects"
    t.string  "SDMTIncompleteReason"
    t.string  "SDMTIncompleteDetails"
    t.string  "AnalyticalStatus",      limit: 50
  end

  create_table "smokedrink", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "SubjectId",     null: false
    t.string  "AlcPriorUse"
    t.string  "AlcCurrentUse"
    t.string  "DrinkFreq"
    t.string  "SmokerStatus"
    t.string  "YrsQuit"
    t.string  "NumCigs"
    t.string  "CigMetric"
    t.string  "YrsSmoked"
    t.index ["NumCigs"], name: "NumCigs", using: :btree
    t.index ["SubjectId"], name: "ixsubjectid", using: :btree
  end

  create_table "studygroup", primary_key: "StudyGroupID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "SubjectGroupSubjectID"
    t.string  "StudyGroup",            limit: 10
    t.index ["StudyGroup"], name: "StudyGroupStudyGroup", using: :btree
    t.index ["SubjectGroupSubjectID"], name: "SubjectID", using: :btree
  end

  create_table "studygroupmaster", primary_key: "StudyGroupMasterID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "StudyGroup", limit: 10
    t.index ["StudyGroup"], name: "SubjectID", using: :btree
  end

  create_table "subject_epic", primary_key: "subjectid", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "Exclude",                      limit: 1,                                  default: 0, null: false
    t.string  "ExcludeReason"
    t.text    "AttackHistoryComment",         limit: 4294967295
    t.integer "Withdrawn",                    limit: 1,                                  default: 0, null: false
    t.string  "WithdrawnReason"
    t.string  "WithdrawnStatus",              limit: 80
    t.integer "CreatinineNeeded",             limit: 1,                                  default: 0, null: false
    t.date    "InitialChartDate"
    t.integer "NotUCSFPatient",               limit: 1,                                  default: 0, null: false
    t.date    "NotUCSFPatientDate"
    t.string  "CaseControl",                  limit: 50
    t.string  "EPICProject",                  limit: 20
    t.string  "EPIC2_Category",               limit: 5
    t.boolean "ClinicalTrialsInterest"
    t.boolean "NeedsAirplaneReimbursement"
    t.decimal "AirplaneExpenses",                                precision: 7, scale: 2
    t.boolean "NeedsHotelReimbursement"
    t.decimal "HotelExpenses",                                   precision: 7, scale: 2
    t.boolean "NeedsGroundReimbursement"
    t.decimal "GroundTransportationExpenses",                    precision: 7, scale: 2
    t.string  "OysterBox",                    limit: 50
    t.string  "OysterLPN",                    limit: 50
    t.string  "BoxLabel",                     limit: 50
    t.integer "Summit",                       limit: 1
  end

  create_table "table 60", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=utf8" do |t|
    t.string  "GSKID",                                          limit: 7
    t.integer "EPICID"
    t.string  "Visit#",                                         limit: 1
    t.string  "VisitType",                                      limit: 8
    t.string  "Medication",                                     limit: 47
    t.string  "Reason for Use",                                 limit: 39
    t.string  "Acquisition Method (O = OTC or P=Prescription)", limit: 1
    t.string  "Frequence (R = Regularly, O = Occasionally)",    limit: 1
    t.string  "BC HRT",                                         limit: 1
    t.string  "BC",                                             limit: 1
    t.string  "HRT",                                            limit: 1
    t.string  "Pre-Natal Vit",                                  limit: 1
  end

  create_table "table 65", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=utf8" do |t|
    t.string  "GSKID",        limit: 7
    t.integer "epic_id"
    t.string  "fu_year",      limit: 9
    t.string  "visit_date",   limit: 10
    t.string  "Acquisition",  limit: 12
    t.string  "Medication",   limit: 54
    t.string  "ReasonForUse", limit: 33
    t.string  "Frequency",    limit: 12
  end

  create_table "treatment", primary_key: "TreatmentID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "TreatmentTypeID"
    t.integer "SubjectID"
    t.string  "StartDate",             limit: 12
    t.string  "EndDate",               limit: 12
    t.boolean "OnGoing",                             null: false
    t.integer "Duration"
    t.string  "Dosage",                limit: 50
    t.string  "StoppedEfficacy",       limit: 50
    t.integer "StoppedAdverseCode1"
    t.integer "StoppedAdverseCode2"
    t.integer "StoppedAdverseCode3"
    t.text    "StoppedAdverseDetails", limit: 65535
    t.text    "StoppedOtherReason",    limit: 65535
    t.text    "SideEffects",           limit: 65535
    t.date    "START"
    t.date    "END"
    t.index ["SubjectID"], name: "ClinicalFollowupID", using: :btree
    t.index ["TreatmentTypeID"], name: "ixdmttype", using: :btree
  end

  create_table "treatmentbkp", primary_key: "TreatmentID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "TreatmentTypeID"
    t.integer "SubjectID"
    t.string  "StartDate",             limit: 12
    t.string  "EndDate",               limit: 12
    t.boolean "OnGoing",                          null: false
    t.integer "Duration"
    t.string  "Dosage",                limit: 50
    t.string  "StoppedEfficacy",       limit: 50
    t.integer "StoppedAdverseCode1"
    t.integer "StoppedAdverseCode2"
    t.integer "StoppedAdverseCode3"
    t.string  "StoppedAdverseDetails", limit: 50
    t.string  "StoppedOtherReason",    limit: 50
    t.string  "SideEffects",           limit: 50
    t.date    "START"
    t.date    "END"
    t.index ["SubjectID"], name: "ClinicalFollowupID", using: :btree
    t.index ["TreatmentTypeID"], name: "ixdmttype", using: :btree
  end

  create_table "u_biome_raw", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string  "epicID",            limit: 11,    null: false
    t.date    "dateReceived",                    null: false
    t.text    "color",             limit: 65535, null: false
    t.text    "initials",          limit: 65535, null: false
    t.text    "label",             limit: 65535, null: false
    t.integer "concentration_s",                 null: false
    t.integer "concentration_q",                 null: false
    t.integer "concentration_rna",               null: false
    t.integer "storage_rack",                    null: false
    t.text    "rack_position",     limit: 65535, null: false
    t.integer "dna_box",                         null: false
    t.text    "dna_box_position",  limit: 65535, null: false
    t.text    "questionnaire",     limit: 65535, null: false
    t.text    "notes",             limit: 65535, null: false
  end

  create_table "v_data_dump_for_analysis", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
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

  create_table "v_epic1_year2and10_status", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "subjectid",                     limit: 1, null: false
    t.integer "EPIC ID",                       limit: 1, null: false
    t.integer "Deceased",                      limit: 1, null: false
    t.integer "Excluded",                      limit: 1, null: false
    t.integer "Reason Excluded",               limit: 1, null: false
    t.integer "Withdrawn",                     limit: 1, null: false
    t.integer "Reason Withdrawn",              limit: 1, null: false
    t.integer "Baseline",                      limit: 1, null: false
    t.integer "Baseline Visit Date",           limit: 1, null: false
    t.integer "F/U Yr 2",                      limit: 1, null: false
    t.integer "Last Completed Visit",          limit: 1, null: false
    t.integer "Last Visit Date",               limit: 1, null: false
    t.integer "Baseline at least 8 years ago", limit: 1, null: false
  end

  create_table "v_epic1pending", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "subjectid", limit: 1, null: false
    t.integer "visitid",   limit: 1, null: false
    t.integer "duedate",   limit: 1, null: false
    t.integer "EPIC ID",   limit: 1, null: false
    t.integer "Visit",     limit: 1, null: false
    t.integer "Status",    limit: 1, null: false
    t.integer "Exam Date", limit: 1, null: false
    t.integer "Due",       limit: 1, null: false
    t.integer "Patient",   limit: 1, null: false
  end

  create_table "v_epic2pending", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "subjectid", limit: 1, null: false
    t.integer "visitid",   limit: 1, null: false
    t.integer "duedate",   limit: 1, null: false
    t.integer "EPIC ID",   limit: 1, null: false
    t.integer "Visit",     limit: 1, null: false
    t.integer "Status",    limit: 1, null: false
    t.integer "Exam Date", limit: 1, null: false
    t.integer "Due",       limit: 1, null: false
    t.integer "Patient",   limit: 1, null: false
  end

  create_table "v_epic_1_2_enrollment_summary_nonconsolidated", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "Visit",                         limit: 1, null: false
    t.integer "Complete",                      limit: 1, null: false
    t.integer "Scheduled",                     limit: 1, null: false
    t.integer "Deceased",                      limit: 1, null: false
    t.integer "Withdrawn - Voluntary",         limit: 1, null: false
    t.integer "Withdrawn - Lost to follow up", limit: 1, null: false
  end

  create_table "v_epic_1_2_enrollment_summary_nonconsolidated_since_origins", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "Visit",                         limit: 1, null: false
    t.integer "Complete",                      limit: 1, null: false
    t.integer "Scheduled",                     limit: 1, null: false
    t.integer "Deceased",                      limit: 1, null: false
    t.integer "Withdrawn - Voluntary",         limit: 1, null: false
    t.integer "Withdrawn - Lost to follow up", limit: 1, null: false
  end

  create_table "v_epic_1_2_visit_statuses_nonconsolidated", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "EPICID",                                          limit: 1, null: false
    t.integer "VisitSeq",                                        limit: 1, null: false
    t.integer "group_concat(concat(visittype,':',visitstatus))", limit: 1, null: false
    t.integer "Visit",                                           limit: 1, null: false
    t.integer "VisitStatus",                                     limit: 1, null: false
    t.integer "Status",                                          limit: 1, null: false
    t.integer "VisitDate",                                       limit: 1, null: false
  end

  create_table "v_epic_1_2_visit_statuses_nonconsolidated_since_origins", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "EPICID",                                          limit: 1, null: false
    t.integer "VisitSeq",                                        limit: 1, null: false
    t.integer "group_concat(concat(visittype,':',visitstatus))", limit: 1, null: false
    t.integer "Visit",                                           limit: 1, null: false
    t.integer "VisitStatus",                                     limit: 1, null: false
    t.integer "Status",                                          limit: 1, null: false
    t.integer "VisitDate",                                       limit: 1, null: false
  end

  create_table "v_epic_1_enrollment_summary", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "Visit",                         limit: 1, null: false
    t.integer "Complete",                      limit: 1, null: false
    t.integer "Scheduled",                     limit: 1, null: false
    t.integer "Deceased",                      limit: 1, null: false
    t.integer "Withdrawn - Voluntary",         limit: 1, null: false
    t.integer "Withdrawn - Lost to follow up", limit: 1, null: false
  end

  create_table "v_epic_1_enrollment_summary_nonconsolidated", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "Visit",                         limit: 1, null: false
    t.integer "Complete",                      limit: 1, null: false
    t.integer "Scheduled",                     limit: 1, null: false
    t.integer "Deceased",                      limit: 1, null: false
    t.integer "Withdrawn - Voluntary",         limit: 1, null: false
    t.integer "Withdrawn - Lost to follow up", limit: 1, null: false
  end

  create_table "v_epic_1_visit_statuses", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "EPICID",                                          limit: 1, null: false
    t.integer "group_concat(concat(visittype,':',visitstatus))", limit: 1, null: false
    t.integer "Visit",                                           limit: 1, null: false
    t.integer "VisitStatus",                                     limit: 1, null: false
    t.integer "Status",                                          limit: 1, null: false
  end

  create_table "v_epic_1_visit_statuses_nonconsolidated", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "EPICID",                                          limit: 1, null: false
    t.integer "VisitSeq",                                        limit: 1, null: false
    t.integer "group_concat(concat(visittype,':',visitstatus))", limit: 1, null: false
    t.integer "Visit",                                           limit: 1, null: false
    t.integer "VisitStatus",                                     limit: 1, null: false
    t.integer "Status",                                          limit: 1, null: false
  end

  create_table "v_epic_visitdmt_horiz", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "EPICID",       limit: 1, null: false
    t.integer "AgeOfOnset",   limit: 1, null: false
    t.integer "Ever_Treated", limit: 1, null: false
    t.integer "BL DMT",       limit: 1, null: false
    t.integer "Y1 DMT",       limit: 1, null: false
    t.integer "Y2 DMT",       limit: 1, null: false
    t.integer "Y3 DMT",       limit: 1, null: false
    t.integer "Y4 DMT",       limit: 1, null: false
    t.integer "Y5 DMT",       limit: 1, null: false
    t.integer "Y6 DMT",       limit: 1, null: false
    t.integer "Y7 DMT",       limit: 1, null: false
    t.integer "Y8 DMT",       limit: 1, null: false
    t.integer "Y9 DMT",       limit: 1, null: false
    t.integer "Y10 DMT",      limit: 1, null: false
    t.integer "Y11 DMT",      limit: 1, null: false
    t.integer "Y12 DMT",      limit: 1, null: false
  end

  create_table "v_identifiers", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "MRN",        limit: 1, null: false
    t.integer "MSID (MRI)", limit: 1, null: false
    t.integer "EPICID",     limit: 1, null: false
    t.integer "Name",       limit: 1, null: false
  end

  create_table "v_last_visit_id", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "subjectid",   limit: 1, null: false
    t.integer "lastvisitid", limit: 1, null: false
  end

  create_table "v_last_visit_seq", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "SubjectID",    limit: 1, null: false
    t.integer "lastvisitseq", limit: 1, null: false
  end

  create_table "v_last_visit_status", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "EPICID",                limit: 1, null: false
    t.integer "SubjectID",             limit: 1, null: false
    t.integer "VisitID",               limit: 1, null: false
    t.integer "VisitSeq",              limit: 1, null: false
    t.integer "VisitType",             limit: 1, null: false
    t.integer "VisitStatus",           limit: 1, null: false
    t.integer "VisitStatusComment",    limit: 1, null: false
    t.integer "ExamDate",              limit: 1, null: false
    t.integer "DueDate",               limit: 1, null: false
    t.integer "Baseline_Date",         limit: 1, null: false
    t.integer "LastCompleteVisit",     limit: 1, null: false
    t.integer "LastCompleteVisitDate", limit: 1, null: false
  end

  create_table "v_lastcompletedvisitseq", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "subjectid", limit: 1, null: false
    t.integer "lastvisit", limit: 1, null: false
  end

  create_table "v_paper_10_11", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "EPICID", limit: 1, null: false
  end

  create_table "v_paper_8_9", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "EPICID", limit: 1, null: false
  end

  create_table "v_recent_attack", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "SubjectID",          limit: 1, null: false
    t.integer "VisitID",            limit: 1, null: false
    t.integer "Recent_Attack_Date", limit: 1, null: false
  end

  create_table "v_visits_grid", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "SubjectID", limit: 1, null: false
    t.integer "EPICID",    limit: 1, null: false
    t.integer "BL_ID",     limit: 1, null: false
    t.integer "BL",        limit: 1, null: false
    t.integer "BL_Date",   limit: 1, null: false
    t.integer "Y1_ID",     limit: 1, null: false
    t.integer "Y1",        limit: 1, null: false
    t.integer "Y1_Date",   limit: 1, null: false
    t.integer "Y2_ID",     limit: 1, null: false
    t.integer "Y2",        limit: 1, null: false
    t.integer "Y2_Date",   limit: 1, null: false
    t.integer "Y3_ID",     limit: 1, null: false
    t.integer "Y3",        limit: 1, null: false
    t.integer "Y3_Date",   limit: 1, null: false
    t.integer "Y4_ID",     limit: 1, null: false
    t.integer "Y4",        limit: 1, null: false
    t.integer "Y4_Date",   limit: 1, null: false
    t.integer "Y5_ID",     limit: 1, null: false
    t.integer "Y5",        limit: 1, null: false
    t.integer "Y5_Date",   limit: 1, null: false
    t.integer "Y6_ID",     limit: 1, null: false
    t.integer "Y6",        limit: 1, null: false
    t.integer "Y6_Date",   limit: 1, null: false
    t.integer "Y7_ID",     limit: 1, null: false
    t.integer "Y7",        limit: 1, null: false
    t.integer "Y7_Date",   limit: 1, null: false
    t.integer "Y8_ID",     limit: 1, null: false
    t.integer "Y8",        limit: 1, null: false
    t.integer "Y8_Date",   limit: 1, null: false
    t.integer "Y9_ID",     limit: 1, null: false
    t.integer "Y9",        limit: 1, null: false
    t.integer "Y9_Date",   limit: 1, null: false
    t.integer "Y10_ID",    limit: 1, null: false
    t.integer "Y10",       limit: 1, null: false
    t.integer "Y10_Date",  limit: 1, null: false
    t.integer "Y11_ID",    limit: 1, null: false
    t.integer "Y11",       limit: 1, null: false
    t.integer "Y11_Date",  limit: 1, null: false
    t.integer "Y12_ID",    limit: 1, null: false
    t.integer "Y12",       limit: 1, null: false
    t.integer "Y12_Date",  limit: 1, null: false
  end

  create_table "visit", primary_key: "VisitID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "SubjectID"
    t.integer "VisitSeq"
    t.date    "DateDCF"
    t.date    "ExamDate"
    t.date    "DueDate"
    t.string  "VisitStatus",                limit: 30
    t.text    "VisitStatusComment",         limit: 4294967295
    t.string  "VisitType",                  limit: 15
    t.integer "AgeAtExam"
    t.integer "DiseaseDuration"
    t.string  "DiseaseCourse",              limit: 3
    t.string  "ATM",                        limit: 6
    t.string  "OpticNeuritis",              limit: 8
    t.string  "INO",                        limit: 3
    t.string  "MotorWeakness",              limit: 3
    t.string  "SensoryDisturbance",         limit: 3
    t.string  "Ataxia",                     limit: 3
    t.string  "BladderDisturbance",         limit: 3
    t.string  "BowelDisturbance",           limit: 3
    t.string  "Myelopathy",                 limit: 3
    t.string  "CogDisturbance",             limit: 50
    t.string  "VisualLoss",                 limit: 3
    t.string  "MSCriteria1",                limit: 3
    t.string  "MSCriteria2",                limit: 3
    t.string  "MSCriteria3",                limit: 3
    t.string  "MSCriteria4",                limit: 3
    t.string  "MSCriteria5",                limit: 3
    t.string  "MSCriteria6",                limit: 3
    t.string  "DiagnosticCategory",         limit: 3
    t.decimal "MSSS",                                          precision: 4, scale: 2
    t.string  "Study",                      limit: 50
    t.string  "AmbulationIndex",            limit: 10
    t.decimal "Weight",                                        precision: 5, scale: 1
    t.integer "Height",                     limit: 2
    t.integer "Waist",                      limit: 2
    t.integer "SittingHeartRate",           limit: 2
    t.string  "SittingHeartRateRegularity", limit: 12
    t.string  "BloodPressure",              limit: 20
    t.string  "PregnancyTest",              limit: 3
    t.string  "Walk100MetersUnassisted",    limit: 3
    t.integer "Walk100MetersTime",          limit: 2
    t.string  "WalkRange",                  limit: 75
    t.integer "WalkActualDistance",         limit: 2
    t.string  "WalkAssistance",             limit: 75
    t.integer "AssistedWalkingDistance",    limit: 2
    t.string  "WalkingDetails"
    t.boolean "VisitDuringFlare"
    t.index ["DiseaseCourse"], name: "DiseaseCourse", using: :btree
    t.index ["DiseaseDuration"], name: "DiseaseDuration", using: :btree
    t.index ["ExamDate"], name: "ExamDate", using: :btree
    t.index ["SubjectID", "VisitSeq"], name: "SubjectID_2", unique: true, using: :btree
    t.index ["SubjectID"], name: "SubjectID", using: :btree
    t.index ["VisitStatus"], name: "VisitStatus", using: :btree
    t.index ["VisitType"], name: "VisitType", using: :btree
  end

  create_table "visit_biomarkers", primary_key: "visitid", id: :integer, default: 0, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "epicid"
    t.boolean "TOB1_Batch"
    t.float   "TOB1_Expression_Level", limit: 53
    t.date    "VitaminD_Date"
    t.float   "VitaminD_Level",        limit: 24
  end

  create_table "visitdmt", primary_key: "VisitDMTID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "VisitID",           null: false
    t.integer "TreatmentID",       null: false
    t.string  "LastInjectionDate"
    t.index ["TreatmentID"], name: "TreatmentVisitDMT", using: :btree
    t.index ["VisitID", "TreatmentID"], name: "ixvisittreatment", unique: true, using: :btree
    t.index ["VisitID"], name: "VisitDMTVisitID", using: :btree
  end

  create_table "whodas", primary_key: "WHODASID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "VisitId",                                null: false
    t.boolean  "u_c_concentrating"
    t.boolean  "u_c_remembering"
    t.boolean  "u_c_analyzing"
    t.boolean  "u_c_learning"
    t.boolean  "u_c_understanding"
    t.boolean  "u_c_conversation"
    t.boolean  "g_a_standing_long"
    t.boolean  "g_a_standing_from_sitting"
    t.boolean  "g_a_moving_in_home"
    t.boolean  "g_a_getting_out"
    t.boolean  "g_a_walking_long"
    t.boolean  "self_care_washing_body"
    t.boolean  "self_care_getting_dressed"
    t.boolean  "self_care_eating"
    t.boolean  "self_care_stay_alone"
    t.boolean  "getting_along_strangers"
    t.boolean  "getting_along_mntn_frndshp"
    t.boolean  "getting_along_close"
    t.boolean  "getting_along_new_frnds"
    t.boolean  "getting_along_sexual"
    t.boolean  "life_actv_household_resp"
    t.boolean  "life_actv_imp_tasks_well"
    t.boolean  "life_actv_house_work_done"
    t.boolean  "life_actv_house_work_quick"
    t.boolean  "work_school_y_n"
    t.boolean  "health_work_school"
    t.boolean  "health_work_school_well"
    t.boolean  "health_work_done"
    t.boolean  "health_work_quick"
    t.boolean  "particip_comm_actv"
    t.boolean  "particip_barriers_in_world"
    t.boolean  "particip_dignity_attitudes"
    t.boolean  "particip_time_condition"
    t.boolean  "particip_emo_affect"
    t.boolean  "particip_financial_drain"
    t.boolean  "particip_fam_prob"
    t.boolean  "particip_relax_pleasure"
    t.string   "days_difficulties_present",  limit: 100
    t.string   "days_unable_work",           limit: 100
    t.string   "days_reduce_activity",       limit: 100
    t.string   "Administrator",              limit: 30
    t.datetime "Survey_Timestamp"
    t.index ["VisitId"], name: "VisitId", unique: true, using: :btree
    t.index ["VisitId"], name: "ixvisitid", using: :btree
  end

  create_table "whodas2", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "WHODASID",                              default: 0, null: false
    t.integer  "VisitId",                                           null: false
    t.boolean  "u_c_concentrating"
    t.boolean  "u_c_remembering"
    t.boolean  "u_c_analyzing"
    t.boolean  "u_c_learning"
    t.boolean  "u_c_understanding"
    t.boolean  "u_c_conversation"
    t.boolean  "g_a_standing_long"
    t.boolean  "g_a_standing_from_sitting"
    t.boolean  "g_a_moving_in_home"
    t.boolean  "g_a_getting_out"
    t.boolean  "g_a_walking_long"
    t.boolean  "self_care_washing_body"
    t.boolean  "self_care_getting_dressed"
    t.boolean  "self_care_eating"
    t.boolean  "self_care_stay_alone"
    t.boolean  "getting_along_strangers"
    t.boolean  "getting_along_mntn_frndshp"
    t.boolean  "getting_along_close"
    t.boolean  "getting_along_new_frnds"
    t.boolean  "getting_along_sexual"
    t.boolean  "life_actv_household_resp"
    t.boolean  "life_actv_imp_tasks_well"
    t.boolean  "life_actv_house_work_done"
    t.boolean  "life_actv_house_work_quick"
    t.boolean  "work_school_y_n"
    t.boolean  "health_work_school"
    t.boolean  "health_work_school_well"
    t.boolean  "health_work_done"
    t.boolean  "health_work_quick"
    t.boolean  "particip_comm_actv"
    t.boolean  "particip_barriers_in_world"
    t.boolean  "particip_dignity_attitudes"
    t.boolean  "particip_time_condition"
    t.boolean  "particip_emo_affect"
    t.boolean  "particip_financial_drain"
    t.boolean  "particip_fam_prob"
    t.boolean  "particip_relax_pleasure"
    t.boolean  "days_difficulties_present"
    t.boolean  "days_unable_work"
    t.boolean  "days_reduce_actvty"
    t.string   "Administrator",              limit: 30
    t.datetime "Survey_Timestamp"
  end

  create_table "whodas_bkp", primary_key: "WHODASID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "VisitId",                                null: false
    t.boolean  "u_c_concentrating"
    t.boolean  "u_c_remembering"
    t.boolean  "u_c_analyzing"
    t.boolean  "u_c_learning"
    t.boolean  "u_c_understanding"
    t.boolean  "u_c_conversation"
    t.boolean  "g_a_standing_long"
    t.boolean  "g_a_standing_from_sitting"
    t.boolean  "g_a_moving_in_home"
    t.boolean  "g_a_getting_out"
    t.boolean  "g_a_walking_long"
    t.boolean  "self_care_washing_body"
    t.boolean  "self_care_getting_dressed"
    t.boolean  "self_care_eating"
    t.boolean  "self_care_stay_alone"
    t.boolean  "getting_along_strangers"
    t.boolean  "getting_along_mntn_frndshp"
    t.boolean  "getting_along_close"
    t.boolean  "getting_along_new_frnds"
    t.boolean  "getting_along_sexual"
    t.boolean  "life_actv_household_resp"
    t.boolean  "life_actv_imp_tasks_well"
    t.boolean  "life_actv_house_work_done"
    t.boolean  "life_actv_house_work_quick"
    t.boolean  "work_school_y_n"
    t.boolean  "health_work_school"
    t.boolean  "health_work_school_well"
    t.boolean  "health_work_done"
    t.boolean  "health_work_quick"
    t.boolean  "particip_comm_actv"
    t.boolean  "particip_barriers_in_world"
    t.boolean  "particip_dignity_attitudes"
    t.boolean  "particip_time_condition"
    t.boolean  "particip_emo_affect"
    t.boolean  "particip_financial_drain"
    t.boolean  "particip_fam_prob"
    t.boolean  "particip_relax_pleasure"
    t.string   "days_difficulties_present",  limit: 100
    t.string   "days_unable_work",           limit: 100
    t.string   "days_reduce_activity",       limit: 100
    t.string   "Administrator",              limit: 30
    t.datetime "Survey_Timestamp"
    t.index ["VisitId"], name: "VisitId", unique: true, using: :btree
    t.index ["VisitId"], name: "ixvisitid", using: :btree
  end

  create_table "whodas_fixed1", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=utf8" do |t|
    t.integer "participant_id"
    t.string  "EPICID",         limit: 7
    t.string  "VisitType",      limit: 9
  end

end
