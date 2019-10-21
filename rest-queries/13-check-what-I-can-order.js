// Note: Using assert test syntax
module.exports = ({ assert, response, store }) => ({
    path: 'allowtodesign',
    method: 'get',
    test() {

      let expected = store.mockOrderRow
        .filter(row => row.oktoshare === 1)
        .map(row => ({text: row.text, image: row.image}));

      // check that we got the right number of allow to design 
      // (intentionelly spelled length wrong to provoke a fail)
      assert.equal(response.length, expected.length);
    
      // check that all allow to design data where
      // inserted correctly with correct data
      assert.deepEqual(response, expected);
    },
  });