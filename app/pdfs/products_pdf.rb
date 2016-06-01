require_relative 'form_content'

class ProductsPdf < Prawn::Document
  def initialize(products)
    super()
    @products = products
    first_page

    start_new_page(:margin => 0)
    second_page
  end

  def first_page
    stroke_axis

    bounding_box([0, 715], :width => 535, :height => 715) do

      text 'Know Your Client (KYC)', :size => 10, :style => :bold
      text 'Application Form (For Individuals Only)', :size => 10, :style => :bold
      stroke_horizontal_line 0, 200, :at => 690

      move_down 10
      text 'Please fill in ENGLISH and in BLOCK LETTERS', :size => 8

      move_down 10
      bounding_box([0, cursor], :width => 535, :height => 200) do
        stroke_bounds

        stroke_color 'b9baba'
        self.line_width = 10
        stroke_horizontal_line 0, 535, :at => cursor - 5

        move_down 2
        text 'A. Identity Details (please see guidelines overleaf)',
             :size => 8, :style => :bold

        gap = 10
        move_down 2
        bounding_box([10, cursor], :width => 525, :height => 700) do
          text "<b>1.Name of Applicant</b> (As appearing in supporting identification document)",
               :size => 8,:inline_format => true
          text "Name", :size => 8, :style => :bold

          #photograph box
          bounding_box([412, cursor + 10], :width => 110, :height => 130) do
            self.line_width = 1
            stroke_bounds

            move_down 10
            text 'PHOTOGRAPH', :size => 8, :align => :center, :style => :bold

            move_down 30
            text 'Please affix', :size => 8, :align => :center, :style => :bold
            text 'the recent passport', :size => 8, :align => :center, :style => :bold
            text 'size photograph and', :size => 8, :align => :center, :style => :bold
            text 'sign across it', :size => 8, :align => :center, :style => :bold
          end
        end
      end

      #second_box
      move_down 5
      stroke_color "000000"
      bounding_box([0, cursor], :width => 535, :height => 300) do
        stroke_bounds
      end

      #third box
      bounding_box([0, cursor], :width => 535, :height => 60) do
        y_co_ordinate = cursor

        #declaration box
        bounding_box([0, y_co_ordinate], :width => 350, :height => 60) do
          stroke_color 'b9baba'
          self.line_width = 15
          stroke_horizontal_line 0, 350, :at => y_co_ordinate - 10

          move_down 5
          text 'DECLARATION',
                :size => 10, :style => :bold, :align => :center

          move_down 2
          text "I hearby declare that the details furnished above are true and "+
               "correct to best of my/our knowledge and belief and I undertake "+
               "to inform you of any changes therein, immediately. In case of any "+
               "of the above information is found to be falseor untrue or "+
               "misleading or misrepresenting, I am/we are aware that I/we may "+
               "be held liable for it.",
               :size => 7, :align => :justify

          move_down 5
          y_position_inner = cursor

          text_box("Place", :size => 7, :at => [0, y_position_inner],:width => 20,:height => 10)
          text_box("Date", :size => 7, :at => [200, y_position_inner],:width => 20,:height => 10)
        end

        #SIGNATURE box
        bounding_box([355, y_co_ordinate], :width => 180, :height => 60) do
          stroke_color 'b9baba'
          self.line_width = 15
          stroke_horizontal_line 0, 180 , :at => y_co_ordinate - 10

          move_down 5
          text 'SIGNATURE OF APPLICANT',
               :size => 10, :style => :bold, :align => :center

          bounding_box([0, y_co_ordinate - 20], :width => 180, :height => 35) do
            self.line_width = 1
            stroke_bounds
          end
        end

        stroke_color '000000'
        stroke_horizontal_line 0, 535, :at => cursor
      end

      #fourth box
      move_down 5
      bounding_box([0, cursor], :width => 535, :height => 100) do

        y_co_ordinate = cursor

        bounding_box([0, y_co_ordinate], :width => 175, :height => 80) do
          stroke_color '000000'
          move_down 5
          text "AMC/Intermediary name <b>OR</b> code",
               :size => 8,:inline_format => true

          stroke_color 'b9baba'
          move_down 10
          stroke_horizontal_line 0, 170, :at => cursor

          stroke_color '000000'
          move_down 5
          text "(Originals Verified) Self Certified Document copies received",
               :size => 8

          move_down 5
          text "(Attested) True copies of documents received",
               :size => 8

        end

        bounding_box([180, y_co_ordinate], :width => 175, :height => 80) do
          stroke_color 'b9baba'
          self.line_width = 1
          stroke_bounds

          fill_color 'b9baba'
          move_down 5
          text "Seal/Stampof the intermediary should contain",
               :align => :center, :size => 8
          move_down 3
          text "Staff Name",:align => :center, :size => 8
          move_down 3
          text "Designation",:align => :center, :size => 8
          move_down 3
          text "Name of the Organization",:align => :center, :size => 8
          move_down 3
          text "Signature",:align => :center, :size => 8
          move_down 3
          text "Date",:align => :center, :size => 8

        end

        bounding_box([360, y_co_ordinate], :width => 175, :height => 80) do
          stroke_color 'b9baba'
          self.line_width = 1
          stroke_bounds

          fill_color 'b9baba'
          move_down 5
          text "Seal/Stampof the intermediary should contain",
                :align => :center, :size => 8
          move_down 3
          text "Staff Name",:align => :center, :size => 8
          move_down 3
          text "Designation",:align => :center, :size => 8
          move_down 3
          text "Name of the Organization",:align => :center, :size => 8
          move_down 3
          text "Signature",:align => :center, :size => 8
          move_down 3
          text "Date",:align => :center, :size => 8
        end
      end
    end
  end

  def second_page
    stroke_color 'b9baba'
    fill_color 'b9baba'

    #page-border
    self.line_width = 20
    stroke_rectangle [0, 785], 610, 780

    #header-highlight
    fill_rectangle [45, 745], 500, 18

    fill_color '4c4d4d'
    move_down 53
    text 'INSTRUCTIONS / CHECK LIST FOR FILLING KYC FORM', :align => :center,
          :size => 10, :style => :bold
    gap = 10

    #column 1
    bounding_box([45, 700], :width => 240, :height => 600) do
      #stroke_bounds
      #text 'A. IMPORTANT POINTS', :size => 10, :style => :bold
      pad_bottom(8) {
        bounding_box([0, cursor], :width => 240, :height => 10) do
          y_co_ordinate = cursor

          bounding_box([0, y_co_ordinate], :width => 10) do
            text 'A.', :size => 8, :style => :bold
          end

          bounding_box([gap, y_co_ordinate], :width => 230) do
            text FormContent.headline['A'], :size => 8, :style => :bold

            pad_bottom(8) {
              bounding_box([0, cursor], :width => 230, :height => 10) do
                y_co_ordinate = cursor

                bounding_box([0, y_co_ordinate], :width => 10) do
                  text '1.', :size => 8
                end

                bounding_box([gap, y_co_ordinate], :width => 220) do
                  text "Self attested copy of PAN card is mandatory for all clients.",
                       :size => 8, :align => :justify
                end
              end
            }

            pad_bottom(8) {
              bounding_box([0, cursor], :width => 230, :height => 60) do
                y_co_ordinate = cursor

                bounding_box([0, y_co_ordinate], :width => 10) do
                  text '2.', :size => 8
                end

                bounding_box([gap, y_co_ordinate], :width => 220) do
                  text "Copies of all document submitted by the applicant should be " +
                     "self-attested and accompanied by originals for verification. " +
                     "In case original of any document is not produced for " +
                     "verification, then the copies should be properly attested " +
                     "by entities authorized for attesting the documents, as per the" +
                     "below mentioned list.",
                     :size => 8, :align => :justify
                end
              end
            }

            pad_bottom(8) {
              bounding_box([0, cursor], :width => 230, :height => 20) do
                y_co_ordinate = cursor

                bounding_box([0, y_co_ordinate], :width => 10) do
                  text '3.', :size => 8
                end

                bounding_box([gap, y_co_ordinate], :width => 220) do
                  text "If any proof of identity or address is in a foreign language, "+
                       "then transaltion into English is required.",
                       :size => 8, :align => :justify
                end
              end
            }

            pad_bottom(8) {
              bounding_box([0, cursor], :width => 230, :height => 20) do
                y_co_ordinate = cursor

                bounding_box([0, y_co_ordinate], :width => 10) do
                  text '4.', :size => 8
                end

                bounding_box([gap, y_co_ordinate], :width => 220) do
                  text "Name & address of the applicant mentioned on the KYC form,"+
                       "should match with the documentary proof submitted.",
                       :size => 8, :align => :justify
                end
              end
            }

            pad_bottom(8) {
              bounding_box([0, cursor], :width => 230, :height => 20) do
                y_co_ordinate = cursor

                bounding_box([0, y_co_ordinate], :width => 10) do
                  text '5.', :size => 8
                end

                bounding_box([gap, y_co_ordinate], :width => 220) do
                  text "If correspondence & permanent address are different,then proofs"+
                       "for both have to be submitted.",
                       :size => 8, :align => :justify
                end
              end
            }

            pad_bottom(8) {
              bounding_box([0, cursor], :width => 230, :height => 20) do
                y_co_ordinate = cursor

                bounding_box([0, y_co_ordinate], :width => 10) do
                  text '6.', :size => 8
                end

                bounding_box([gap, y_co_ordinate], :width => 220) do
                  text "Sole proprietor must take the application in his individual "+
                        "name & capacity.",
                       :size => 8, :align => :justify
                end
              end
            }

            pad_bottom(8) {
              bounding_box([0, cursor], :width => 230, :height => 40) do
                y_co_ordinate = cursor

                bounding_box([0, y_co_ordinate], :width => 10) do
                  text '7.', :size => 8
                end

                bounding_box([gap, y_co_ordinate], :width => 220) do
                  text FormContent.headline_content['A7'],
                       :size => 8, :align => :justify
                end
              end
            }

            pad_bottom(8) {
              bounding_box([0, cursor], :width => 230, :height => 20) do
                y_co_ordinate = cursor

                bounding_box([0, y_co_ordinate], :width => 10) do
                  text '8.', :size => 8
                end

                bounding_box([gap, y_co_ordinate], :width => 220) do
                  text FormContent.headline_content['A8'],
                       :size => 8, :align => :justify
                end
              end
            }

            pad_bottom(8) {
              bounding_box([0, cursor], :width => 230, :height => 30) do
                y_co_ordinate = cursor

                bounding_box([0, y_co_ordinate], :width => 10) do
                  text '9.', :size => 8
                end

                bounding_box([gap, y_co_ordinate], :width => 220) do
                  text FormContent.headline_content['A9'],
                       :size => 8, :align => :justify
                end
              end
            }

            pad_bottom(8) {
              bounding_box([0, cursor], :width => 230, :height => 40) do
                y_co_ordinate = cursor

                bounding_box([0, y_co_ordinate], :width => 10) do
                  text '10.', :size => 8
                end

                bounding_box([gap, y_co_ordinate], :width => 220) do
                  text FormContent.headline_content['A10'],
                       :size => 8, :align => :justify
                end
              end
            }

            pad_bottom(8) {
              bounding_box([0, cursor], :width => 230, :height => 70) do
                y_co_ordinate = cursor
                bounding_box([0, y_co_ordinate], :width => 10) do
                  text '11.', :size => 8
                end

                bounding_box([gap, y_co_ordinate], :width => 220) do
                  text FormContent.headline_content['A11'],
                       :size => 8, :align => :justify
                end
              end
            }
          end
        end
      }
      ####



      move_down 440
      pad_bottom(8) {
        bounding_box([0, cursor], :width => 240, :height => 10) do
          y_co_ordinate = cursor

          bounding_box([0, y_co_ordinate], :width => 10) do
            text 'B.', :size => 8, :style => :bold
          end

          bounding_box([gap, y_co_ordinate], :width => 230) do
            text FormContent.headline['B'],
                 :size => 8, :style => :bold, :align => :justify

            pad_bottom(8) {
              bounding_box([0, cursor], :width => 230, :height => 30) do
                y_co_ordinate = cursor

                bounding_box([0, y_co_ordinate], :width => 10) do
                  text '1.', :size => 8
                end

                bounding_box([gap, y_co_ordinate], :width => 220) do
                  text FormContent.headline_content['B1'],
                       :size => 8, :align => :justify
                end
              end
            }

            pad_bottom(8) {
              bounding_box([0, cursor], :width => 230, :height => 20) do
                y_co_ordinate = cursor

                bounding_box([0, y_co_ordinate], :width => 10) do
                  text '2.', :size => 8
                end

                bounding_box([gap, y_co_ordinate], :width => 220) do
                  text FormContent.headline_content['B2'],
                     :size => 8, :align => :justify
                end
              end
            }

            pad_bottom(8) {
              bounding_box([0, cursor], :width => 230, :height => 70) do
                y_co_ordinate = cursor

                bounding_box([0, y_co_ordinate], :width => 10) do
                  text '3.', :size => 8
                end

                bounding_box([gap, y_co_ordinate], :width => 220) do
                  text FormContent.headline_content['B3'],
                       :size => 8, :align => :justify
                end
              end
            }
          end
        end
      }

      move_down 140
      pad_bottom(8) {
        bounding_box([0, cursor], :width => 240, :height => 10) do
          y_co_ordinate = cursor

          bounding_box([0, y_co_ordinate], :width => 10) do
            text 'C.', :size => 8, :style => :bold
          end

          bounding_box([gap, y_co_ordinate], :width => 230) do
            text FormContent.headline['C'],
                 :size => 8, :style => :bold, :align => :justify

            pad_bottom(8) {
              bounding_box([0, cursor], :width => 230, :height => 10) do
                y_co_ordinate = cursor

                bounding_box([0, y_co_ordinate], :width => 10) do
                  text '1.', :size => 8
                end

                bounding_box([gap, y_co_ordinate], :width => 220) do
                  text "Passport/Voters Identity Card/Ration Card/Registered Lease or Sale",
                       :size => 8, :align => :justify
                end
              end
            }
          end
        end
      }
    end

    #column 2
    bounding_box([300, 700], :width => 240) do
      #stroke_bounds
      pad_bottom(8) {
        bounding_box([0, cursor], :width => 240, :height => 10) do
          y_co_ordinate = cursor

          bounding_box([0, y_co_ordinate], :width => 10) do
            #purposely left blank
          end

          bounding_box([gap, y_co_ordinate], :width => 230) do


            pad_bottom(8) {
              bounding_box([0, cursor], :width => 230, :height => 20) do
                y_co_ordinate = cursor

                bounding_box([0, y_co_ordinate], :width => 10) do
                  #purposely left blank
                end

                bounding_box([gap, y_co_ordinate], :width => 220) do
                  text "Agreement of Residence/Driving Licence/Flat Maintenance bill/Insurance Copy.",
                       :size => 8, :align => :justify
                end
              end
            }

            pad_bottom(8) {
              bounding_box([0, cursor], :width => 230, :height => 20) do
                y_co_ordinate = cursor

                bounding_box([0, y_co_ordinate], :width => 10) do
                  text '2.', :size => 8
                end

                bounding_box([gap, y_co_ordinate], :width => 220) do
                  text FormContent.headline_content['C2'],
                     :size => 8, :align => :justify
                end
              end
            }

            pad_bottom(8) {
              bounding_box([0, cursor], :width => 230, :height => 20) do
                y_co_ordinate = cursor

                bounding_box([0, y_co_ordinate], :width => 10) do
                  text '3.', :size => 8
                end

                bounding_box([gap, y_co_ordinate], :width => 220) do
                  text FormContent.headline_content['C3'],
                       :size => 8, :align => :justify
                end
              end
            }

            pad_bottom(8) {
              bounding_box([0, cursor], :width => 230, :height => 20) do
                y_co_ordinate = cursor

                bounding_box([0, y_co_ordinate], :width => 10) do
                  text '4.', :size => 8
                end

                bounding_box([gap, y_co_ordinate], :width => 220) do
                  text FormContent.headline_content['C4'],
                       :size => 8, :align => :justify
                end
              end
            }

            pad_bottom(8) {
              bounding_box([0, cursor], :width => 230, :height => 60) do
                y_co_ordinate = cursor

                bounding_box([0, y_co_ordinate], :width => 10) do
                  text '5.', :size => 8
                end

                bounding_box([gap, y_co_ordinate], :width => 220) do
                  text FormContent.headline_content['C5'],
                       :size => 8, :align => :justify
                end
              end
            }

            pad_bottom(8) {
              bounding_box([0, cursor], :width => 230, :height => 60) do
                y_co_ordinate = cursor

                bounding_box([0, y_co_ordinate], :width => 10) do
                  text '6.', :size => 8
                end

                bounding_box([gap, y_co_ordinate], :width => 220) do
                  text FormContent.headline_content['C6'],
                       :size => 8, :align => :justify
                end
              end
            }

            pad_bottom(8) {
              bounding_box([0, cursor], :width => 230, :height => 40) do
                y_co_ordinate = cursor

                bounding_box([0, y_co_ordinate], :width => 10) do
                  text '7.', :size => 8
                end

                bounding_box([gap, y_co_ordinate], :width => 220) do
                  text FormContent.headline_content['C7'],
                       :size => 8, :align => :justify
                end
              end
            }

            pad_bottom(8) {
              bounding_box([0, cursor], :width => 230, :height => 20) do
                y_co_ordinate = cursor

                bounding_box([0, y_co_ordinate], :width => 10) do
                  text '8.', :size => 8
                end

                bounding_box([gap, y_co_ordinate], :width => 220) do
                  text FormContent.headline_content['C8'],
                       :size => 8, :align => :justify
                end
              end
            }
          end
        end
      }

      move_down 310
      pad_bottom(8) {
        bounding_box([0, cursor], :width => 240, :height => 10) do
          y_co_ordinate = cursor

          bounding_box([0, y_co_ordinate], :width => 10) do
            text 'D.', :size => 8, :style => :bold
          end

          bounding_box([gap, y_co_ordinate], :width => 230) do
            text FormContent.headline['D'],
                 :size => 8, :style => :bold, :align => :justify

            pad_bottom(8) {
              bounding_box([0, cursor], :width => 230, :height => 30) do
                y_co_ordinate = cursor

                bounding_box([0, y_co_ordinate], :width => 10) do
                  text '1.', :size => 8
                end

                bounding_box([gap, y_co_ordinate], :width => 220) do
                  text FormContent.headline_content['D1'],
                       :size => 8, :align => :justify
                end
              end
            }

            pad_bottom(8) {
              bounding_box([0, cursor], :width => 230, :height => 10) do
                y_co_ordinate = cursor

                bounding_box([0, y_co_ordinate], :width => 10) do
                  text '2.', :size => 8
                end

                bounding_box([gap, y_co_ordinate], :width => 220) do
                  text FormContent.headline_content['D2'],
                     :size => 8, :align => :justify
                end
              end
            }

            pad_bottom(8) {
              bounding_box([0, cursor], :width => 230, :height => 20) do
                y_co_ordinate = cursor

                bounding_box([0, y_co_ordinate], :width => 10) do
                  text '3.', :size => 8
                end

                bounding_box([gap, y_co_ordinate], :width => 220) do
                  text FormContent.headline_content['D3'],
                       :size => 8, :align => :justify
                end
              end
            }

            pad_bottom(8) {
              bounding_box([0, cursor], :width => 230, :height => 10) do
                y_co_ordinate = cursor

                bounding_box([0, y_co_ordinate], :width => 10) do
                  text '4.', :size => 8
                end

                bounding_box([gap, y_co_ordinate], :width => 220) do
                  text FormContent.headline_content['D4'],
                       :size => 8, :align => :justify
                end
              end
            }

            pad_bottom(8) {
              bounding_box([0, cursor], :width => 230, :height => 90) do
                y_co_ordinate = cursor

                bounding_box([0, y_co_ordinate], :width => 10) do
                  text '5.', :size => 8
                end

                bounding_box([gap, y_co_ordinate], :width => 220) do
                  text FormContent.headline_content['D5'],
                       :size => 8, :align => :justify
                end
              end
            }
          end
        end
      }

      move_down 200
      pad_bottom(8) {
        bounding_box([0, cursor], :width => 240, :height => 10) do
          y_co_ordinate = cursor

          bounding_box([0, y_co_ordinate], :width => 10) do
            text 'E.', :size => 8, :style => :bold
          end

          bounding_box([gap, y_co_ordinate], :width => 230) do
            text FormContent.headline['E'],
                 :size => 8, :style => :bold, :align => :justify

            pad_bottom(8) {
              bounding_box([0, cursor], :width => 230, :height => 30) do
                y_co_ordinate = cursor

                bounding_box([0, y_co_ordinate], :width => 10) do
                  text '1.', :size => 8
                end

                bounding_box([gap, y_co_ordinate], :width => 220) do
                  text FormContent.headline_content['E1'],
                       :size => 8, :align => :justify
                end
              end
            }

            pad_bottom(8) {
              bounding_box([0, cursor], :width => 230, :height => 10) do
                y_co_ordinate = cursor

                bounding_box([0, y_co_ordinate], :width => 10) do
                  text '2.', :size => 8
                end

                bounding_box([gap, y_co_ordinate], :width => 220) do
                  text FormContent.headline_content['E2'],
                     :size => 8, :align => :justify
                end
              end
            }
          end
        end
      }
    end
  end
end
