<template>
  <div class="lunbo">
    <el-carousel indicator-position="outside">
      <el-carousel-item v-for="(item,index) in imgs" :key="index">
        <img :src="item" alt />
      </el-carousel-item>
    </el-carousel>
  </div>
</template>
<script>
import { Carousel, CarouselItem } from "element-ui";
export default {
  name: "Lunbo",
  data() {
    return {
      imgs: [
        "https://img.zcool.cn/community/01f1875f291edda80120a8210f1706.jpg@260w_195h_1c_1e_1o_100sh.jpg",
        "https://img.zcool.cn/community/0149495f2417dda801215aa075cc3b.jpg@260w_195h_1c_1e_1o_100sh.jpg",
        "https://img.zcool.cn/community/01c2ef5f23d1bda801215aa01a65a9.jpg@260w_195h_1c_1e_1o_100sh.jpg",
        "https://img.zcool.cn/community/0120ed5f217167a80120a8210d62c1.jpg@260w_195h_1c_1e_1o_100sh.jpg",
        "https://img.zcool.cn/community/01c2ae5f2772a9a801215aa0ef92d1.jpg",
        "https://img.zcool.cn/community/01917c5f20de05a801215aa0d82122.jpg@260w_195h_1c_1e_1o_100sh.jpg",
        "https://img.zcool.cn/community/01e6c45f1ec9eda80120a8210c5db7.jpg@260w_195h_1c_1e_1o_100sh.jpg",
        "https://img.zcool.cn/community/01e95a5f1a8cf3a801206621eee834.jpg@260w_195h_1c_1e_1o_100sh.jpg",
      ]
    };
  }
};
</script>
<style  scoped>
.el-carousel__item h3 {
  color: #475669;
  font-size: 18px;
  opacity: 0.75;
  line-height: 300px;
  margin: 0;
}

.el-carousel__item:nth-child(2n) {
  background-color: #99a9bf;
}

.el-carousel__item:nth-child(2n + 1) {
  background-color: #d3dce6;
}
.lunbo {
  width: 100%;
  height: 300px;
}
.lunbo img {
  width: 100%;
  height: 300px;
}
</style>