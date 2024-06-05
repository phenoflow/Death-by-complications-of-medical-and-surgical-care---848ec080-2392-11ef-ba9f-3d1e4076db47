# John, A, McGregor, J., Jones, I., Lee, S. C., Walters, J. T. R., Owen, M. J., O'Donovan, M., DelPozo-Banos, M., Berridge, D., and Lloyd, K., 2024.

import sys, csv, re

codes = [{"code":"Y51","system":"icd10"},{"code":"Y53.7","system":"icd10"},{"code":"Y53.6","system":"icd10"},{"code":"Y51.8","system":"icd10"},{"code":"Y53.4","system":"icd10"},{"code":"Y53.1","system":"icd10"},{"code":"Y52.5","system":"icd10"},{"code":"Y51.9","system":"icd10"},{"code":"Y52.2","system":"icd10"},{"code":"Y52.9","system":"icd10"},{"code":"Y51.2","system":"icd10"},{"code":"Y48.1","system":"icd10"},{"code":"Y51.3","system":"icd10"},{"code":"Y52.0","system":"icd10"},{"code":"Y51.1","system":"icd10"},{"code":"Y53.3","system":"icd10"},{"code":"Y53.2","system":"icd10"},{"code":"Y48.3","system":"icd10"},{"code":"Y51.0","system":"icd10"},{"code":"Y52","system":"icd10"},{"code":"Y52.8","system":"icd10"},{"code":"Y48","system":"icd10"},{"code":"Y48.5","system":"icd10"},{"code":"Y53","system":"icd10"},{"code":"Y52.6","system":"icd10"},{"code":"Y53.9","system":"icd10"},{"code":"Y53.5","system":"icd10"},{"code":"Y52.1","system":"icd10"},{"code":"Y65.3","system":"icd10"},{"code":"Y48.0","system":"icd10"},{"code":"Y52.4","system":"icd10"},{"code":"Y53.8","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('death-by-complications-of-medical-and-surgical-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["anaesthetic-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["anaesthetic-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["anaesthetic-death-by-complications-of-medical-and-surgical-care-unnatural-cause---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
