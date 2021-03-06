require 'test_helper'

module SalesEngine
  class SalesEngineTest < ::MiniTest::Unit::TestCase

    def test_it_loads_all_data_when_startup_called
      SalesEngine.startup
      assert_equal 100, Merchant.size
      assert_equal 4843, Invoice.size
      assert_equal 21687, InvoiceItem.size
      assert_equal 2483, Item.size
      assert_equal 1000, Customer.size
      assert_equal 5595, Transaction.size
    end
  end
end
