// Note: Using assert test syntax
module.exports = ({ assert, response, store }) => ({
    path: 'allowtodesign',
    method: 'get',
    test() {
      // check that we got the right number of allow to design 
      // (intentionelly spelled length wrong to provoke a fail)
      assert.equal(response.length, store.mockAllowDesign.length);
    
      // check that all allow to design data where
      // inserted correctly with correct data
      assert.deepEqual(response, store.mockAllowDesign);
    },
    setup() {
        // Store the mockusers in the db (setup for next step/query)
        store.mockAllowDesign = require('./mock-allow-to-design.json');
      }
  });