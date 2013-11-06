# encoding: UTF-8
require "./common"
require "engtagger"

def past_tense_verbs
	['VBN', 'VBD']
end

def verbs
	['MD','VB','VBD','VBG','VBN','VBP','VBZ']
end

def auxiliary_verbs
	["be", "am", "are", "is", "was", "were", "being", "can", "could", "dare", "does", "did", "has", "had", "having", "may", "might", "must", "need", "ought", "shall", "should", "will", "would", "got"]
end

def likely_auxiliary_verbs
	["is"]
end

def likely_passive_phrases
	["will be"]
end

def has_likely_active_auxiliary_verbs auxiliary_verbs_in_sentence
	likely_auxiliary_verbs - auxiliary_verbs_in_sentence == []
end

def has_auxiliary_verb tagged
	get_auxiliary_verbs(tagged).size > 0
end

def get_auxiliary_verbs tagged
	words_in(tagged).select { |word| auxiliary_verbs.include? tag_parts(word).first }.map {|word| tag_parts(word).first }
end

def has_past_tense tagged
	get_paste_tense_verbs(tagged).size > 0
end

def get_paste_tense_verbs tagged
	words_in(tagged).select { |word| past_tense_verbs.include? tag_parts(word).last }.map {|word| tag_parts(word).first}
end

def tag_parts tagged
	tagged.split("/")
end

def looks_passive? tagged
	has_auxiliary_verb(tagged) && has_past_tense(tagged)
end

def looks_likely_passive? sentence
	likely_passive_phrases.select {|phrase| sentence.downcase.include? phrase }.size > 0
end

def check_is_then_by_pattern sentence
	if sentence.include?("by")
		return :passive
	else
		return :likely_active
	end
end

def get_voice sentence
	tagger = EngTagger.new
	tagged = tagger.get_readable(sentence)

	if looks_passive?(tagged)
		if sentence.include?("is")
			return check_is_then_by_pattern(sentence)
		end

		return :passive
	end

	if looks_likely_passive?(sentence)
		return :likely_passive
	end
		
	return :active
end

def get_voice_for_passage passage
	sentence_voice = []

	sentences_in(passage).each do |sentence|
		sentence_voice[sentence] = get_voice sentence_voice
	end

 	sentence_voice
end