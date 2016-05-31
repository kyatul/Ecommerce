class ProductsPdf < Prawn::Document
  def initialize(products)
    super()
    @products = products
    border
  end

  def border
    stroke_axis

    fill_color 'b9baba'
    fill_rectangle [20, 700], 500, 18

    fill_color '4c4d4d'
    move_down 25
    text 'INSTRUCTIONS / CHECK LIST FOR FILLING KYC FORM', :align => :center,
          :size => 10, :style => :bold

    gap = 10

    #column 1
    bounding_box([20, 670], :width => 240, :height => 600) do
      stroke_bounds
      text 'A. IMPORTANT POINTS', :size => 10, :style => :bold

      pad_bottom(8) {
        bounding_box([gap, cursor], :width => 230, :height => 10) do
          y_co_ordinate = cursor

          bounding_box([0, y_co_ordinate], :width => 10) do
            text '1.', :size => 8
          end

          bounding_box([gap, y_co_ordinate], :width => 210) do
            text "Self attested copy of PAN card is mandatory for all clients.",
                 :size => 8
          end
        end
      }

      pad_bottom(8) {
        bounding_box([gap, cursor], :width => 230, :height => 60) do
          y_co_ordinate = cursor

          bounding_box([0, y_co_ordinate], :width => 10) do
            text '2.', :size => 8
          end

          bounding_box([gap, y_co_ordinate], :width => 210) do
            text "Copies of all document submitted by the applicant should be " +
               "self-attested and accompanied by originals for verification. " +
               "In case original of any document is not produced for " +
               "verification, then the copies should be properly attested " +
               "by entities authorized for attesting the documents, as per the" +
               "below mentioned list.",
               :size => 8
          end
        end
      }

      pad_bottom(8) {
        bounding_box([gap, cursor], :width => 230, :height => 20) do
          y_co_ordinate = cursor

          bounding_box([0, y_co_ordinate], :width => 10) do
            text '3.', :size => 8
          end

          bounding_box([gap, y_co_ordinate], :width => 210) do
            text "If any proof of identity or address is in a foreign language, "+
                 "then transaltion into English is required.",
                 :size => 8
          end
        end
      }

      pad_bottom(8) {
        bounding_box([gap, cursor], :width => 230, :height => 20) do
          y_co_ordinate = cursor

          bounding_box([0, y_co_ordinate], :width => 10) do
            text '4.', :size => 8
          end

          bounding_box([gap, y_co_ordinate], :width => 210) do
            text "Name & address of the applicant mentioned on the KYC form,"+
                 "should match with the documentary proof submitted.",
                 :size => 8
          end
        end
      }

      pad_bottom(8) {
        bounding_box([gap, cursor], :width => 230, :height => 20) do
          y_co_ordinate = cursor

          bounding_box([0, y_co_ordinate], :width => 10) do
            text '5.', :size => 8
          end

          bounding_box([gap, y_co_ordinate], :width => 210) do
            text "If correspondence & permanent address are different,then proofs"+
                 "for both have to be submitted.",
                 :size => 8
          end
        end
      }

      pad_bottom(8) {
        bounding_box([gap, cursor], :width => 230, :height => 20) do
          y_co_ordinate = cursor

          bounding_box([0, y_co_ordinate], :width => 10) do
            text '6.', :size => 8
          end

          bounding_box([gap, y_co_ordinate], :width => 210) do
            text "Sole proprietor must take the application in his individual "+
                  "name & capacity.",
                 :size => 8
          end
        end
      }

      pad_bottom(8) {
        bounding_box([gap, cursor], :width => 230, :height => 40) do
          y_co_ordinate = cursor

          bounding_box([0, y_co_ordinate], :width => 10) do
            text '7.', :size => 8
          end

          bounding_box([gap, y_co_ordinate], :width => 210) do
            text "For non-residents and foreign nationals,(allowed to trade "+
                 "subject to RBI and FEMA guidelines), copy of passport/PIOCard/OCICard "+
                 "and overseas address proof is mandatory.",
                 :size => 8
          end
        end
      }

      pad_bottom(8) {
        bounding_box([gap, cursor], :width => 230, :height => 30) do
          y_co_ordinate = cursor

          bounding_box([0, y_co_ordinate], :width => 10) do
            text '8.', :size => 8
          end

          bounding_box([gap, y_co_ordinate], :width => 210) do
            text "For foreign entities, CIN is optional; and in the absence "+
                 "of DIN no. for the directors, their passport copy should be given.",
                 :size => 8
          end
        end
      }

      pad_bottom(8) {
        bounding_box([gap, cursor], :width => 230, :height => 30) do
          y_co_ordinate = cursor

          bounding_box([0, y_co_ordinate], :width => 10) do
            text '9.', :size => 8
          end

          bounding_box([gap, y_co_ordinate], :width => 210) do
            text "In case of Merchant Navy NRI’s Mariner’s declaration or "+
                 "certified copy of CDC (Continuous Discharge Certificate) is to be submitted.",
                 :size => 8
          end
        end
      }

      pad_bottom(8) {
        bounding_box([gap, cursor], :width => 230, :height => 40) do
          y_co_ordinate = cursor

          bounding_box([0, y_co_ordinate], :width => 10) do
            text '10.', :size => 8
          end

          bounding_box([gap, y_co_ordinate], :width => 210) do
            text "For opening an account with Depository participant or Mutual "+
                 "Fund, for a minor, photocopy of the School Leaving "+
                 "Certificate/Mark Sheet issued by Higher Secondary Board/Passport "+
                 "of Minor/Birth Certificate must be provided.",
                 :size => 8
          end
        end
      }

      pad_bottom(8) {
        bounding_box([gap, cursor], :width => 230, :height => 10) do
          y_co_ordinate = cursor

          bounding_box([0, y_co_ordinate], :width => 10) do
            text '11.', :size => 8
          end

          bounding_box([gap, y_co_ordinate], :width => 210) do
            text "Politically Exposed Persons (PEP) are defined as individuals "+
                 "who are or have been entrusted with prominent public functions "+
                 "in a foreign country, e.g., Heads of States of Governments, "+
                 "senior politicians, senior Government/judicial/military officers, "+
                 "senior executives of state owned corporations, important political party officials, etc.",
                 :size => 8
          end
        end
      }

      #text 'B. Proof of Identity( POI): List of documents admissible as Proof of Identity:',
      #     :size => 10, :style => :bold

    end

    #column 2
    bounding_box([280, 670], :width => 240) do
      stroke_bounds
    end
  end
end
