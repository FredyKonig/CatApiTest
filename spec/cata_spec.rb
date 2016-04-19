

describe "Cata" do

 # it "should open browser with image " do
 #   cata_command = %x(ruby cata.rb )
#Need to add capybara & selenium to test browser
 # end

  it "should save file on desktop " do
   system "rm /home/fredy/Desktop/cat.*" 
   cata_command = %x(ruby cata.rb file)
   file_list = %x(ls /home/fredy/Desktop/)   
   expect(file_list).to include("cat_image.")
  end

  it "should read API and display a fact " do
   cata_command = %x(ruby cata.rb fact)
   expect(cata_command).to end_with(".\n")  
  end


end 
