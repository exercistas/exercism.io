require_relative '../../test_helper'
require 'app/presenters/problems'

class PresentersProblemsTest < Minitest::Test
	include Rack::Test::Methods

	def test_knows_its_track_id
		track = ExercismWeb::Presenters::Special::Problems.new("ruby")
		assert_equal "ruby", track.track_id
	end

  def app
    ExercismWeb::App
  end

	def all_problems_json
    File.read("./test/fixtures/approvals/api_all_problems.approved.json")
  end

	def test_can_return_all_problems_for_one_track
  	Xapi.stub(:get, [200, all_problems_json]) do
  		get '/languages/ruby'
  	  problems = ExercismWeb::Presenters::Special::Problems.new('ruby')
  	  assert_includes problems.track_problems.to_s, "Write a program that implements a binary search algorithm."
  	end
  end

  def test_only_returns_problems_for_this_track
  	Xapi.stub(:get, [200, all_problems_json]) do
  		get '/languages/ruby'
  	  problems = ExercismWeb::Presenters::Special::Problems.new('ruby')
			refute_includes problems.track_problems.to_s, "Compute the result for a game of Hex / Polygon"  	
		end
  end
end