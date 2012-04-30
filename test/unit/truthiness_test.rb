require 'truthiness'
require 'rubygems'
require 'test/unit'
require 'shoulda'
require 'turn'
require 'mocha'

class TruthinessTest < Test::Unit::TestCase
  subject { Object.new }

  should "respond to truthy methods" do
    %w[truthy? not_truthy? falsey? not_falsey?
       true? not_true? false? not_false?].each do |m|
      assert subject.respond_to?(m), "Not responding to ##{m}"
    end
  end

  context "#truthy?" do
    should "be true for string and integer representations of truth" do
      assert "true".truthy?
      assert "yes".truthy?
      assert 1.truthy?
      assert true.truthy?
    end
  end

  context "#falsey?" do
    should "be false for string and integer representations of false" do
      assert "false".falsey?
      assert "no".falsey?
      assert 0.falsey?
      assert false.falsey?
    end
  end

  context "#true?" do
    context "on true" do
      subject { true }

      should "return false" do
        assert subject.true?
      end
    end

    context "on anything other than true" do
      should "return false" do
        [nil, false, "string", [], {}, Object.new].each do |o|
          assert !o.true?
        end
      end
    end
  end

  context "#not_true?" do
    should "evaluate true? and return the opposite" do
      subject.expects(:true?).returns(mock)
      subject.not_true?
    end
  end

  context "#false?" do
    context "on false" do
      subject { false }

      should "return true" do
        assert subject.false?
      end
    end

    context "on anything other than false" do
      should "return false" do
        [nil, true, "string", [], {}, Object.new].each do |o|
          assert !o.false?
        end
      end
    end
  end

  context "#not_false?" do
    should "evaluate true? and return the opposite" do
      subject.expects(:true?).returns(mock)
      subject.not_true?
    end
  end

end
