const { bouquetsData } = require('../data');
   
export default function handler(req, res) {
  res.json(bouquetsData);
}