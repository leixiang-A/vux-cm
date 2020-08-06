<template>
  <div class="detail">
    <div class="img">
      <img
        class="mimg"
        src="http://img63.ddimg.cn/upload_img/00822/cxtc/1200x65-1596421879.jpg"
        alt
      />
    </div>
    <div class="content">
      <div class="wenzi">
        <span>
          <h4>图书</h4>
        </span>>
        <span>绽放真我</span>>
        <span>超越个人</span>>
        <span>如果你对世界有无穷好奇心，此本书必读</span>:
        <span>完成从不善言谈到极富魅力的奇迹蜕变</span>
      </div>
      <div class="middle">
        <div class="leftmi">
          <img class="imgsrc" :src="goodstail.imgsrc" alt />
        </div>
        <div class="rightmi">
          <div class="keywods">
            <h2>{{goodstail.goodsname}}</h2>
            <p>
              {{goodstail.keywords}}
              <a href>每满100减50</a>
              >>
            </p>
          </div>
          <div class="authopj">
        
            <el-tag type="danger">
              <p>作者：{{goodstail.author}}</p>
            </el-tag>
            <el-tag type="danger">
              <p>{{goodstail.pjnumber}}条评论</p>
            </el-tag>
          </div>
          <div class="priceopj">
              <span>满意度:</span>  <el-progress :percentage="80"></el-progress>
            <span>回头率:</span><el-progress :percentage="50"></el-progress>
              <h2 style="display: inline-block;">降价通知</h2>
              <h1 style="color: red;">￥{{goodstail.price}}</h1>
           
          </div>

          <div class="buttom">
            <div class="buttinmm" style="display: inline-block;">
              <!-- 	el-icon-shopping-cart-2 -->
              <!-- *********************点击加入购物车*************************** -->
              <div class="nirbut" @click="tocar">
                <i class="el-icon-shopping-cart-2"></i>
                加入购物车
              </div>
            </div>
            <el-input-number id="inputm" v-model="num" :min="1" :max="10" size="large"></el-input-number>
          </div>
        </div>
      </div>
    </div>
    <div class="btnin">
      <div class="lefnau">
        <img src="http://img3m5.ddimg.cn/37/6/28983475-1_l_9.jpg" />
        <img src="http://img3m7.ddimg.cn/64/34/28969147-1_l_3.jpg" />
        <img src="http://img3m6.ddimg.cn/41/23/1901227226-1_l_1.jpg" />
      </div>
      <div class="nautop">
        <el-tabs v-model="activeName" type="card" @tab-click="handleClick">
          <el-tab-pane label="经常一起购买的商品" name="first" id="teshu">
            <img src="http://img3m5.ddimg.cn/37/6/28983475-1_l_9.jpg" />
            <img src="http://img3m7.ddimg.cn/64/34/28969147-1_l_3.jpg" />
            <img src="http://img3m6.ddimg.cn/41/23/1901227226-1_l_1.jpg" />
            <img src="http://img3m7.ddimg.cn/64/34/28969147-1_l_3.jpg" />
            <img src="http://img3m6.ddimg.cn/41/23/1901227226-1_l_1.jpg" />
            <img src="http://img3m2.ddimg.cn/45/11/28543032-1_l_3.jpg" />
            <img src="http://img3m0.ddimg.cn/66/8/410275470-1_l_2.jpg" />
            <img src="http://img3m6.ddimg.cn/41/23/1901227226-1_l_1.jpg" />
            <img src="http://img3m0.ddimg.cn/66/8/410275470-1_l_2.jpg" />
            <img src="http://img3m6.ddimg.cn/41/23/1901227226-1_l_1.jpg" />
            <img src="http://img3m0.ddimg.cn/66/8/410275470-1_l_2.jpg" />
            <img src="http://img3m6.ddimg.cn/41/23/1901227226-1_l_1.jpg" />
          </el-tab-pane>
        </el-tabs>
        <!-- <div class="navtopnav">
					<div class="nautop">
						<el-tabs v-model="activeName" type="card" @tab-click="handleClick">
						
						</el-tabs>
					</div>
        </div>-->
        <div class="navtopnav">
          <div class="nautopbtn">
            <h4>价格说明</h4>当当价：为商品的销售价，具体的成交价可能因会员使用优惠券、银铃铛等发生变化，最终以订单结算页价格为准。
            划线价：划线价格可能是图书封底定价、商品吊牌价、品牌专柜价或由品牌供应商提供的正品零售价（如厂商指导价、建议零售价等）或该商品曾经展示过的销售价等，由于地区、时间的差异化和市场行情波动，商品吊牌价、品牌专柜价等可能会与您购物时展示的不一致，该价格仅供您参考。
            折扣：折扣指在划线价（图书定价、商品吊牌价、品牌专柜价、厂商指导价等）某一价格基础上计算出的优惠比例或优惠金额。如有疑问，您可在购买前联系客服咨询。
            异常问题：如您发现活动商品销售价或促销信息有异常，请立即联系我们补正，以便您能顺利购物。
          </div>

          <!--评论*****************************************************************************************************************-->
          <div class="pinlinxinxi" v-if="flag">
            <div>
              <!-- 评论框的信息 -->
              <div class="pltopone">
                <div class="pltwo">短评</div>
                <div class="pltwo">长评</div>
              </div>

              <div class="pltoponebtn">
                <p>我对本书的评价是</p>
                <!-- <el-rate v-model="value" show-text>
                </el-rate>-->

                <el-rate v-model="value" show-score text-color="#ff9900" score-template="{value}"></el-rate>
              </div>

              <div class="inputexar">
                <textarea
                  type="text"
                  @input="inpy()"
                  v-model="msg"
                  placeholder="这本书的内容/作者/文笔....给你留下了怎么样的印象？是否值得推荐给其他书友？写下你的评论吧~"
                ></textarea>
              </div>
              <div>
                <el-upload
                  class="upload-demo"
                  action="http://localhost:7001/uploadImg"
                  :on-preview="handlePreview"
                  :on-remove="handleRemove"
                  :on-success="uploadimg"
                  multiple
                  :limit="3"
                  :on-exceed="handleExceed"
                  :file-list="fileList"
                >
                  <el-button size="small" type="primary">点击上传</el-button>
                  <div slot="tip" class="el-upload__tip">只能上传jpg/png文件，且不超过500kb</div>
                </el-upload>
              </div>
              <button @click="tijao">提交</button>
            </div>
          </div>
          <div class="divider">
            <el-divider></el-divider>
            <div class="divvi">
              <span>短评（4）</span>

              <!-- <div @click="vshow" style="background-color: red;" else="flag">写短评，赚银铃铛</div> -->
              <el-row>
                <el-button class="divvier" @click="vshow" type="danger" round>写短评，赚银铃铛</el-button>
              </el-row>
            </div>
          </div>
          <!-- 好评率************ -->
          <div class="pingluntu">
            <div class="hapinbox">
              <div class="haopinboxmin">
                <div class="haopinzui">
                  <div class="boxnei">好评率100%</div>
                </div>
              </div>
            </div>
            <div class="maiguo">
              <p>买过的人知道</p>
              <br />
              <el-button type="warning">内容丰富（1）</el-button>
              <el-button type="warning">实用（1）</el-button>
              <el-button type="warning">必备（1）</el-button>
              <el-button type="warning">必读（1）</el-button>
            </div>
            <!-- 全部评论 **************************************************************************************************************-->
            <div class="tianzhuan">
              <el-tabs type="border-card">
                <!-- 将评论的信息全部显示出来************************************************************************************************************ -->
                <el-tab-pane label="全部">
                  <div v-for="(item,index) in arr" :key="index" :goodsObj="item">
                    <div class="pjstyle">{{item.comments}}</div>
                    <img :src="item.pjimg" style="width:100px;height:50px" v-if="item.pjimg" />
                  </div>
                </el-tab-pane>
              </el-tabs>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import axios from "axios";
export default {
  name: "detail",
  data() {
    return {
      fileList: [],
      value1: null,
      value: null,
      goodstail: {},
      num: 1,
      gid: "",
      activeName: "first",
      flag: false,
      // flag1:"false"
      msg: "",
      img: "",
      arr: [],
      arguments: ""
    };
  },
  mounted() {
    var gid = this.$route.query.gid;
    var url = `http://localhost:7001/addDetail?gid=${gid}`;
    axios
      .get(url, {
        withCredentials: true
      })
      .then(res => {
        this.goodstail = res.data[0];
      });
    //评论
    axios
      .post(
        "http://localhost:7001/showpl",
        { gid1: gid },
        {
          withCredentials: true
        }
      )
      .then(res => {
        // console.log(res)
        this.arr = res.data.data;
        console.log(res.data.data);
      });
  },
  methods: {
    handleRemove(file, fileList) {
      console.log(file, fileList);
    },
    handlePreview(file) {
      console.log(file);
    },
    handleExceed(files, fileList) {
      this.$message.warning(
        `当前限制选择 3 个文件，本次选择了 ${
          files.length
        } 个文件，共选择了 ${files.length + fileList.length} 个文件`
      );
    },
      format(percentage) {
        return percentage === 100 ? '满' : `${percentage}%`;},
    uploadimg() {
      console.log("success");
      console.log(arguments);
      this.arguments = arguments[0].data.src;
    },
    vshow() {
      // this.flag = true
      this.flag = !this.flag;
    },
    tijao() {
      var gid = this.$route.query.gid;
      console.log(this.value);
      this.flag = false;
      // console.log(arguments[0].data.src)
      var url3 = `http://localhost:7001/detailpl`;
      console.log(this.arguments);
      axios
        .post(
          url3,
          {
            img: this.arguments,
            score: this.value,
            gid: gid,
            comments: this.msg
          },
          {
            withCredentials: true
          }
        )
        .then(res => {
          console.log(res);
          // console.log(res.data)
          if (res.data.code == 200) {
            alert("添加成功！");
            this.$router.go(0);
            // this.$router.push({
            // 	path: `/login?from:this.$route.path`,

            // })
          } else if (res.data.code == 300) {
            alert("添加失败！");
          }
        });

      console.log(this.$route.path);
    },
    handleClick(tab, event) {
      console.log(tab, event);
    },
    jia() {
      this.num++;
    },
    inpy() {
      console.log(this.msg);
    },
    jian() {
      this.num--;
      if (this.num < 0) {
        this.num = 0;
      }
    },
    tocar() {
      var num = this.num;
      var gid = this.$route.query.gid;
      var url1 = `http://localhost:7001/tocar`;
      axios
        .post(
          url1,
          {
            num: num,
            gid: gid
          },
          {
            withCredentials: true
          }
        )
        .then(res => {
          if (res.data.code == 4000) {
            alert("没有登录，请登录！");
          }else{
               this.$router.push({
              path: "/car"
            });
          }
        });
    }
  },

  components: {}
};
</script>
<style>
.pjstyle {
  overflow: hidden;
  height: 150px;
  margin-top: 10px;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.12), 0 0 6px rgba(0, 0, 0, 0.04);
}
body {
  background: linear-gradient(91deg, #f1eefc, #9dc6ff 70%, #a5bcff);
}
.detail {
  font-size: 20px;
  width: 1400px;
  height: auto;
  /* border: 1px solid red; */
  margin: 0 auto;
  /* background-image: linear-gradient(skyblue, #85d8ca); */
}
.wenzi span {
  font-size: 24px;
}
.wenzi h4 {
  display: inline;
  font-size: 30px;
}

.img,
.mimg {
  width: 1400px;
  height: 100px;
  /* margin: 0 auto; */
}

.content {
  width: 1400px;
  height: 500px;
  margin: 0 auto;
  /* border-bottom: 2px dashed grey; */
  /* background:rgba(21, 22, 22, 0.5); */
  background: linear-gradient(
    to right,
    #bb313e25,
    #bb313e25,
    #d7222925,
    #dd4a1625,
    #e4761525,
    #f5c50025,
    #f0e92725,
    #b1ce2425,
    #48a93525,
    #03944525,
    #157c4f25,
    #176a5825,
    #1b556325,
    #1d386f25,
    #1d386f25,
    #20277825,
    #52266325,
    #8a244b25
  );
}

/* 书本放大与信息详情 */
.middle {
  width: 1400px;
  /* border: 1px solid forestgreen; */
  margin: 0 auto;
  height: 600px;
  /* display: flex;
  justify-content: flex-start; */
}
.el-input__inner {
  height: 50px;
}
.leftmi {
  width: 400px;
  height: 600px;
  vertical-align: top;
  /* float: left; */
  margin: 10px 30px;
}

.imgsrc {
  width: 100%;
  height: 400px;
  border: 1px solid #606266;
}

.imgtable tr td {
  width: 100px;
  height: 80px;
  border: 1px solid #000000;
}

.rightmi {
  width: 900px;
  height: 400px;
}

.leftmi,
.rightmi {
  display: inline-block;
  /* float: left; */
}

/* 右边框内部 */
.keywods {
  width: 100%;
  height: 100px;
  border-bottom: 1px dashed grey;
}
.pspan p {
  line-height: 200px;
}
.authopj {
  width: 100%;
  height: 50px;
  /* border: 1px solid gray; */
  font-size: 30px;
}
.authopj p {
  display: inline;
  margin-left: 20px;
}
.priceopj {
  width: 938px;
  height: 200px;
  border: 1px solid grey;
  position: relative;
  background: rgba(10, 10, 10, 0.5);
}

.priceopjimg img {
  width: 200px;
  height: 200px;
  display: inline-block;
  position: absolute;
  top: 0;
  right: 0px;
}

.priceopj h1 {
  display: inline-block;
}

.xiangqing {
  width: 100%;
  height: 200px;
  border-bottom: 1px dashed grey;
  padding-bottom: 40px;
}

.authopjm {
  width: 940px;
  background-color: rgba(18, 177, 240, 0.5);
  display: flex;
  margin-bottom: -5px;
}

.box {
  display: flex;
  justify-content: space-around;
}

.boxl {
  width: 300px;
  height: 70px;
  border: 2px dashed grey;
}

.boxr {
  width: 300px;
  height: 70px;
  border: 2px dashed grey;
}

.boxlnei {
  display: flex;
}

.boxrnei {
  display: flex;
}

.table tr td span {
  border: 1px solid grey;
  padding: 0;
  margin: 0;
}

.table tr td:first-child {
  width: 70px;
}

.butlef {
  display: inline-block;
}

.buttonmm {
  width: 100px;
  height: 49px;
  background-color: grey;
  position: relative;
}
.btnin {
  /* background:rgba(21, 22, 22, 0.5); */
  background: linear-gradient(
    to right,
    #bb313e25,
    #bb313e25,
    #d7222925,
    #dd4a1625,
    #e4761525,
    #f5c50025,
    #f0e92725,
    #b1ce2425,
    #48a93525,
    #03944525,
    #157c4f25,
    #176a5825,
    #1b556325,
    #1d386f25,
    #1d386f25,
    #20277825,
    #52266325,
    #8a244b25
  );
}
.buttonmm button {
  height: 24px;
  width: 50px;
  position: relative;
  top: 0;
  right: -38px;
}

.buttinmm {
  width: 200px;
  height: 48px;
  border: 1px solid red;
  vertical-align: top;
  background-color: #ff0000;
  color: white;
  font-size: 26px;
}

[class*=" el-icon-"],
[class^="el-icon-"] {
  width: 30px;
  height: 30px;
  font-size: 34px;
  line-height: 44px;
}

.lefnau {
  width: 330px;

  border: #606266;
  display: inline-block;
}

.lefnau img {
  width: 300px;
  height: 400px;
  margin-top: 20px;
}

.nautop {
  display: inline-block;
  vertical-align: top;
  width: 1070px;
  /* display: flex;
  justify-content: space-around; */
}

.nautop p {
  font-size: 20px;
}

.el-tabs__item {
  color: #000000;
  font-size: 26px;
}

#pane-first {
  width: 800px;
  height: 500px;
}

.navtopnav {
  height: 600px;
}

#teshu {
  width: 1000px;
  height: 820px;
  display: flex;
  flex-wrap: wrap;
}
#teshu img {
  width: 200px;
  height: 210px;
  margin: 20px;
  overflow: hidden;
}
.nautopbtn {
  background-color: darkgrey;
  width: 950px;
}

.divider {
  background-color: #cccccc;
  height: 50px;
  border-radius: 15px;
  text-indent: 20px;
  font-size: 20px;
}

.el-divider--horizontal {
  margin: 0;
}

/* .divvi div {
  height: 50px;
  
  display: inline-block;
  font-size: 20px;
  border-radius: 15px;
} */
.divvi .divvier {
  height: 50px;
}
.hapinbox {
  width: 200px;
  height: 200px;
  background-color: red;
  border: 1px green solid;
  border-radius: 50%;
  display: inline-block;
}

.haopinboxmin {
  width: 180px;
  height: 180px;
  margin: 10px auto;
  background-color: white;
  border: 1px white solid;
  border-radius: 50%;
}

.haopinzui {
  width: 150px;
  height: 150px;
  margin: 14px auto;
  background-color: peru;
  border: 1px peru solid;
  border-radius: 50%;
}

.haopinzui p {
  margin: auto;
}

.boxnei {
  width: 80px;
  height: 80px;
  margin: 50px 50px;
}

.divider {
  margin-bottom: 40px;
  width: 950px;
  margin: 50px 0;
}

.divvi {
  display: flex;
  justify-content: space-between;
  width: 950px;
}

.maiguo {
  display: inline-block;
  height: 180px;
  width: 500px;
  vertical-align: top;
  margin-left: 30px;
}

.tianzhuan {
  margin-top: 40px;
}

.pinlinxinxi {
  width: 800px;
  height: 600px;
  position: absolute;
  z-index: 222;
  background: rgb(215, 224, 230);
  margin-top: 100px;
  color: rgb(5, 5, 5);
}

.pltopone {
  font-size: 26px;
  display: flex;
  justify-content: space-around;
  margin: 50px;
}

.pltoponebtn {
  margin-left: 50px;
}

.inputexar {
  width: 800px;
  margin-top: 50px;
}

.inputexar textarea {
  width: 600px;
  height: 140px;
  background-color: beige;
  margin: 0 100px;
}
</style>
