# encoding: UTF-8
require './active_voice'

describe "active voice" do
	it "should correctly detect the voice in the sample set" do
		expect(get_voice "Every night the office is vacuumed and dusted by the cleaning crew").to equal :passive
		expect(get_voice "Sugar cane is raised by some people in Hawaii").to equal :passive
		expect(get_voice "That piece is really enjoyed by the choir").to equal :passive
		expect(get_voice "The Grand Canyon is viewed by thousands of tourists every year").to equal :passive
		expect(get_voice "The savannah is roamed by beautiful giraffes").to equal :passive
		expect(get_voice "There is a considerable range of expertise demonstrated by the spam senders").to equal :passive
		expect(get_voice "The staff is required to watch a safety video every year").to equal :likely_active
		expect(get_voice "A movie is going to be watched by us tonight").to equal :passive
		expect(get_voice "A safety video will be watched by the staff every year").to equal :passive
		expect(get_voice "A scathing review was written by the critic").to equal :passive
		expect(get_voice "Alex posted the video on Facebook").to equal :active
		expect(get_voice "All men are created equal").to equal :passive
		expect(get_voice "All the reservations will be made by the wedding planner").to equal :passive
		expect(get_voice "At dinner, six shrimp were eaten by Harry").to equal :passive
		expect(get_voice "Beautiful giraffes roam the savannah").to equal :active
		expect(get_voice "By whom were you taught to ski").to equal :passive
		expect(get_voice "For the bake sale, two dozen cookies will be baked by Susan").to equal :likely_passive
		expect(get_voice "Groups help participants realize that most of their problems and secrets are shared by others in the group").to equal :passive
		expect(get_voice "Harry ate six shrimp at dinner").to equal :active
		expect(get_voice "I ran the obstacle course in record time").to equal :active
		expect(get_voice "I will clean the house every Saturday").to equal :active
		expect(get_voice "In this way, the old religion was able to survive the onslaught of new ideas until the old gods were finally displaced by Christianity").to equal :passive
		expect(get_voice "Instructions will be given to you by the director").to equal :passive
		expect(get_voice "It was determined by the committee that the report was inconclusive").to equal :passive
		expect(get_voice "Larry generously donated money to the homeless shelter").to equal :active
		expect(get_voice "Minor keys, modal movement, and arpeggios are shared by both musical traditions").to equal :passive
		expect(get_voice "Mom read the novel in one day").to equal :active
		expect(get_voice "Money was generously donated to the homeless shelter by Larry").to equal :passive
		expect(get_voice "My sales ad was not responded to by anyone").to equal :passive
		expect(get_voice "No one responded to my sales ad").to equal :active
		expect(get_voice "She faxed her application for a new job").to equal :active
		expect(get_voice "Some people raise sugar cane in Hawaii").to equal :active
		expect(get_voice "Sue changed the flat tire").to equal :active
		expect(get_voice "Susan will bake two dozen cupcakes for the bake sale").to equal :active
		expect(get_voice "The application for a new job was faxed by her").to equal :passive
		expect(get_voice "The baby was carried by the kangaroo in her pouch").to equal :passive
		expect(get_voice "The choir really enjoys that piece").to equal :active
		expect(get_voice "The cleaning crew vacuums and dusts the office every night").to equal :active
		expect(get_voice "The comet was viewed by the science class").to equal :passive
		expect(get_voice "The crew paved the entire stretch of highway").to equal :active
		expect(get_voice "The critic wrote a scathing review").to equal :active
		expect(get_voice "The director will give you instructions").to equal :active
		expect(get_voice "The entire house was planted by Tom").to equal :passive
		expect(get_voice "The entire stretch of highway was paved by the crew").to equal :passive
		expect(get_voice "The flat tire was changed by Sue").to equal :passive
		expect(get_voice "The forest fire destroyed the whole suburb").to equal :active
		expect(get_voice "The homeowners remodeled the house to help it sell").to equal :active
		expect(get_voice "The house was remodeled by the homeowners to help it sell").to equal :passive
		expect(get_voice "The house will be cleaned by me every Saturday").to equal :passive
		expect(get_voice "The kangaroo carried her baby in her pouch").to equal :active
		expect(get_voice "The last cookie was eaten by whom").to equal :passive
		expect(get_voice "The metal beams were eventually corroded by the saltwater").to equal :passive
		expect(get_voice "The money was donated to the school").to equal :passive
		expect(get_voice "The novel was read by Mom in one day").to equal :passive
		expect(get_voice "The obstacle course was run by me in record time").to equal :passive
		expect(get_voice "The paper was marked by Mr. Tan").to equal :passive
		expect(get_voice "The paper was marked").to equal :passive
		expect(get_voice "The proposed initiative will be bitterly opposed by abortion rights groups").to equal :passive
		expect(get_voice "The saltwater eventually corroded the metal beams").to equal :active
		expect(get_voice "The science class viewed the comet").to equal :active
		expect(get_voice "The students' questions are always answered by the teacher").to equal :passive
		expect(get_voice "The teacher always answers the students’ questions").to equal :active
		expect(get_voice "The team will celebrate their victory tomorrow").to equal :active
		expect(get_voice "The treaty is being signed by the two kings").to equal :passive
		expect(get_voice "The two kings are signing the treaty").to equal :active
		expect(get_voice "The vase got broken during the fight").to equal :passive
		expect(get_voice "The victory will be celebrated by the team tomorrow").to equal :likely_passive
		expect(get_voice "The video was posted on Facebook by Alex").to equal :passive
		expect(get_voice "The wedding planner is making all the reservations").to equal :active
		expect(get_voice "The whole suburb was destroyed by the forest fire").to equal :passive
		expect(get_voice "Thousands of tourists view the Grand Canyon every year").to equal :active
		expect(get_voice "Tim was operated on yesterday").to equal :passive
		expect(get_voice "Tom painted the entire house").to equal :active
		expect(get_voice "We are going to watch a movie tonight").to equal :active
		expect(get_voice "We were given tickets").to equal :passive
		expect(get_voice "We were invited by our neighbors to attend their party").to equal :passive
		expect(get_voice "Who ate the last cookie").to equal :active
		expect(get_voice "Who taught you to ski").to equal :active
	end
end
