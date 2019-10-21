// Note: Using assert test syntax
module.exports = ({ assert, response, store }) => ({
    path: 'orders',
    method: 'get',
    test() {
     // Check that there are no orders in DB
     assert.deepEqual(response, []);
    },
    setup() {
      // Store the mockOrders in the db (setup for next step/query)
      store.mockOrders = require('./mock-orders.json');

      //Reuse the mockUsers ids when creating new orders
      store.mockOrders.forEach((order, index) => {    //order ny variable gt
        order.users_id = store.mockUsers[index].id;
      });
      console.log("BEFORE MAP store.mockUsers", store.mockUsers)
      console.log("AFTER MAP store.mockOrders", store.mockOrders); 
    }
  });