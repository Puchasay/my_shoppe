// Note: Using assert test syntax
module.exports = ({ assert, response, store }) => ({
    path: 'order_row',
    method: 'get',
    test() {
     // Check that there are no order row in DB
     assert.deepEqual(response, []);
    },
    setup() {
      // Store the mockOrderRow in the db (setup for next step/query)
      store.mockOrderRow = require('./mock-order-row.json');

      //Reuse the mockOrders ids when creating new order row
      store.mockOrderRow.forEach((orderrow, index) => {
        orderrow.orders_id = store.mockOrders[index].id;
      });
      console.log("BEFORE MAP store.mockOrders", store.mockOrders)
    }
  });