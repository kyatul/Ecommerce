class FormContent
  class << self
    attr_accessor :headline, :headline_content
  end

  @headline = {'A' => "IMPORTANT POINTS:",
              'B' => "Proof of Identity( POI): List of documents admissible as Proof of Identity:",
              'C' => "Proof of Address (POA): List of documents admissible as Proof "+
                     "of Address: (*Documents having an expiry date should be valid on the date of submission.)",
              'D' => "Exemptions/clarifications to PAN (*Sufficient documentary "+
                     "evidence in support of such claims to be collected.)",
              'E' => "List of people authorised to attest the documents:"
            }

  @headline_content = {'A1' => "",
                      'A2' => "",
                      'A3' => "",
                      'A4' => "",
                      'A5' => "",
                      'A6' => "",
                      'A7' => "For non-residents and foreign nationals,(allowed to trade subject to RBI and FEMA guidelines), copy of passport/PIOCard/OCICard and overseas address proof is mandatory.",
                      'A8' => "For foreign entities, CIN is optional; and in the absence of DIN no. for the directors, their passport copy should be given.",
                      'A9' => "In case of Merchant Navy NRI’s Mariner’s declaration or certified copy of CDC (Continuous Discharge Certificate) is to be submitted.",
                      'A10' => "For opening an account with Depository participant or Mutual Fund, for a minor, photocopy of the School Leaving Certificate/Mark Sheet issued by Higher Secondary Board/Passport of Minor/Birth Certificate must be provided.",
                      'A11' => "Politically Exposed Persons (PEP) are defined as individuals who are or have been entrusted with prominent public functions in a foreign country, e.g., Heads of States of Governments, senior politicians, senior Government/judicial/military officers, senior executives of state owned corporations, important political party officials, etc.",

                      'B1' => "PAN card with photograph. This is mandatory requirement for all applicants except those who are specifically exempt from obtaining PAN (listed in Section D).",
                      'B2' => "Unique Identification Number (UID) (Aadhaar) / Passport / Voter ID card / Driving licence.",
                      'B3' => "Identity card/ document with applicant’s Photo, issued by any of the following: Central/State Government and its Departments, Statutory/Regulatory Authorities, Public Financial Institutions, Colleges affiliated to Universities, Professional Bodies such as ICAI, ICWAI, ICSI, Bar Council etc., to their Members; and Credit cards/Debit cards issued by Banks.",

                      'C1' => "Passport/Voters Identity Card/Ration Card/Registered Lease or Sale Agreement of Residence/Driving Licence/Flat Maintenance bill/Insurance Copy.",
                      'C2' => "Utility bills like Telephone Bill (only land line), Electricity bill or Gas bill Not more than 3 months old.",
                      'C3' => "Bank Account Statement/Passbook - Not more than 3 months old.",
                      'C4' => "Self-declaration by High Court and Supreme Court judges, giving the new address in respect of their own accounts.",
                      'C5' => "Proof of address issued by any of the following: Bank Managers of Scheduled Commercial Banks/Scheduled Co-Operative Bank/Multinational Foreign Banks/Gazetted Officer/Notary public/Elected representatives to the Legislative Assembly/Parliament/Documents issued by any Govt. or Statutory Authority.",
                      'C6' => "Identity card/document with address issued by any of the following: Central/State Government and its Departments,Statutory/Regulatory Authorities, Public Sector Undertakings, Scheduled Commercial Banks, Public Financial Institutions,Colleges affiliated to Universities and Professional Bodies such as ICAI, ICWAI,ICSI,Bar Council etc.,to their Members.",
                      'C7' => "For FII/sub account, Power of Attorney given by FII/sub-account to the Custodians (which are duly notarised and/or apostles or consularised) that gives the registered address should be taken.",
                      'C8' => "The proof of address in the name of the spouse may be accepted.",

                      'D1' => "In case of transactions undertaken on behalf of Central Government and/or State Government and by officials appointed by Courts e.g. Official liquidator, Court receiver etc.",
                      'D2' => "Investors residing in the state of Sikkim.",
                      'D3' => "UN entities/multilateral agencies exempt from paying taxes/filling tax returns in India.",
                      'D4' => "SIP of Mutual Funds upto Rs 50,000/- p.a.",
                      'D5' => "In case of institutional clients, namely, FIIs, Mfs, VCFs, FVCIs, Scheduled Commercial Banks, Multilateral and Bilateral Development Financial Institutions, State Industrial Development Corporations, Insurance Companies registered with IRDA and Public Financial Institution as defined under section 4A of the Companies Act, 1956, Custodians shall verify the PAN card details with the original PAN card and provide duly certified copies of such verified PAN details to the intermediary.",

                      'E1' => "Notary Public, Gazetted Officer, Manager of a Scheduled Commercial/Co-operative Bank or Multinational Foreign Banks(Name,Designation & Seal should be affixed on the copy)",
                      'E2' => "In case of NRIs, authorised officials of oversea branches of Scheduled Commercial Banks registered in India, Notary Public,Court Magistrate, Judge, Indian Embassy/Consulate General  in the country where the client resides are permitted to attest the documents."}
end
