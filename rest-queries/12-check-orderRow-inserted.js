// Note: Using assert test syntax
module.exports = ({ assert, response, store }) => ({
    path: 'order_row',
    method: 'get',
    test() {
      // check that we got the right number of order row
      assert.equal(response.length, store.mockOrderRow.length);
    
      // check that all order row where
      // inserted correctly with correct data
      assert.deepEqual(response, store.mockOrderRow);
    }
  });