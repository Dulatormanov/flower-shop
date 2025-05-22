const { flowersData } = require('../data');
   
export default function handler(req, res) {
  res.json(flowersData);
}