# Simple precompile commands - run these in R console

# Method A: Compile a specific file
rmarkdown::render("index.Rmd", output_file = "index.html")

# Method B: Compile all .Rmd files in current directory
rmd_files <- list.files(pattern = "\\.Rmd$")
for(file in rmd_files) {
  cat("Compiling:", file, "\n")
  rmarkdown::render(file)
}

# Method C: Compile with specific output directory
dir.create("compiled", showWarnings = FALSE)
for(file in list.files(pattern = "\\.Rmd$")) {
  output_name <- paste0("compiled/", gsub("\\.Rmd$", ".html", file))
  rmarkdown::render(file, output_file = output_name)
}