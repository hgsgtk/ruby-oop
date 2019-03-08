module PreparerInterfaceTest
  # このモジュールが証明するもの
  # `@object` が prepare_tripへ応答すること
  def test_implements_the_preparer_interface
    assert_respond_to(@object, :prepare_trip)
  end
end
