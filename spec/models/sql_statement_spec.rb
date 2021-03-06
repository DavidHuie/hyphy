require "spec_helper"

describe Hyphy::SQLStatement do

  let(:statement) { '  select * from table   ' }
  let(:sql_statement) { Hyphy::SQLStatement.new(:statement => statement,
                                                :start_time => 2,
                                                :end_time => 3.001,
                                                :trace => ["hello!"],
                                                :metadata => { "hello!" => "hi!" }) }

  describe "#duration" do

    it "returns the duration of the statement" do
      sql_statement.duration.should == 1.001
    end

  end

  describe "#stripped_description" do

    it 'strips leading and trailing whitespace' do
      sql_statement.stripped_statement.should == 'select * from table'
    end

  end

  describe "#digitless" do

    let(:statement) { 'select * from table where id = 44444' }
    let(:sql_statement) { Hyphy::SQLStatement.new(:statement => statement,
                                                  :start_time => 2,
                                                  :end_time => 3.001) }

    it 'replaces numbers with a marker' do
      sql_statement.digitless.should == 'select * from table where id = <digit>'
    end

  end

  describe "#trace" do

    it 'should return the decoded json stored in the trace_json attribute' do
      sql_statement.trace.should == ["hello!"]
    end

  end

  describe "#application_trace" do

    it "returns the trace lines that are related to the running application" do
      sql_statement.stub(:trace).and_return(['/1', '/2', '/3'])
      Dir.stub(:pwd).and_return('/1')

      sql_statement.application_trace.should == ['/1']
    end

  end

  describe "#metadata" do

    it 'should return the decoded json from the metadata_json attribute' do
      sql_statement.metadata.should == { "hello!" => "hi!" }
    end

  end

  describe "#add_metadata" do

    it "should store the key, value pair in the metadata" do
      sql_statement.metadata["key"] = "value"

      sql_statement.metadata["key"].should == "value"
    end

  end

  describe "statement methods" do

    let(:sql_statement1) { Hyphy::SQLStatement.new(:statement => "select * from table") }
    let(:sql_statement2) { Hyphy::SQLStatement.new(:statement => "insert into table values 1, 2, 3") }

    describe "#select?" do

      it "is true for a select statement" do
        sql_statement1.select?.should be_true
        sql_statement2.select?.should be_false
      end

    end

    describe "#insert?" do

      it "is true for a insert statement" do
        sql_statement1.insert?.should be_false
        sql_statement2.insert?.should be_true
      end

    end

  end

end
