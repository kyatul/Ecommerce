class KycController < ApplicationController
  def index
    @investor = OpenStruct.new(
                              name: 'KIFER SUTHERLAND AKA JACK BAUER',
                              father_name: 'KIFER SUTHERLAND',
                              gender: 'male',
                              marital_status: 'single',
                              nationality: 'India',
                              status: 'Foreign National',
                              aadhaar: 'ABCD1234',
                              proof_identity: 'UID',
                              dob: '20101960',
                              pan: 'AKGBH1234A',
                              place: 'Bangalore',
                              date: '10102016',
                              ipv_status: 'Done',
                              ipv_date: '10102016',
                              email: "abcdkyc.com",

                              telephone_office: '9876543210',
                              telephone_residence: '1234567890',
                              fax: '5432112345',
                              mobile: '1234512345',

                              current_address: {
                                address: 'CYBRILLA TECHNOLOGIES, HSR LAYOUT 27TH MAIN ROAD',
                                pincode: '222001',
                                city: 'BANGALORE',
                                state: 'KARNATAKA',
                                country: 'INDIA',
                                proof: 'Passport',
                                proof_expiry_date: '10102015'
                              },

                              permanent_address: {
                                address: 'RED COTTON BUILDING NO. 10 OFF HUALEI ROAD',
                                pincode: '222001',
                                city: 'GUANGHZOU',
                                state: 'SOUTH CHINA',
                                country: 'CHINA',
                                proof: 'Passport',
                                proof_expiry_date: '10102015'
                              },

                              original_verified: 'Done',
                              original_attested: 'Done')

   respond_to do |format|
     format.html
     format.pdf do
       render pdf: "kyc",         # file name
              template: 'kyc/index.html.erb'
       end
     end
   end
end
