const router = require("express").Router();
import {
  addOneProduct,
  addOrDeleteOneProduct,
  getAllProducts,
  getOneProduct,
  softDeleteOneProduct,
} from "../Middleware/productController";

router.get("/allproducts", getAllProducts);
router.get("/oneproduct/:id", getOneProduct);
router.post("", addOneProduct);
router.put("/oneproduct/:id", addOrDeleteOneProduct);
router.delete("/oneproduct/:id", softDeleteOneProduct);

module.exports = {
  router,
};
