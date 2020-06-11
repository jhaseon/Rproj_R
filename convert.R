# project_dir <- dirname(getwd())
# csv <- "general_patient_info.CSV"
# # csv_location <- paste0(data_dir, csv)

# csv_location <- file.path(project_dir, "data", csv)
# print(csv_location)
# csv <- read.csv(file = csv_location)

# shiny_location <- file.path(project_dir, "r", "shiny", "general_patient_info.rds")
# print(shiny_location)
# saveRDS(csv, file = shiny_location)

### NExt step would be to do for all csvs in the folder

R_dir <- getwd()
project_dir <- dirname(getwd())

csv <- "general_patient_info.CSV"
csv <- read.csv(file = file.path(project_dir, "data", csv))

shiny_path <- file.path(R_dir, "shiny")

saveRDS(csv, file = file.path(shiny_path, "general_patient_info.rds"))