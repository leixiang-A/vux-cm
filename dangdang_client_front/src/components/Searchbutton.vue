<template>
  <div class="topnav">
    <!-- <img src="https://img.zcool.cn/community/015aaa5c413fe9a801213f26cf3340.jpg@260w_195h_1c_1e_1o_100sh.jpg" width="200px" height="80px" alt /> -->
<h1 style="display:inline;margin-left:50px;margin-top:10px;color:red;font-size:40px">书城--你值得拥有</h1>
    <div class="right">
      <el-input v-model="input" placeholder="请输入内容" class="myinput"></el-input>
      <div class="select" style="width:110px;background-color:#F5F5F5">
        <el-select v-model="value" placeholder="全部分类" style="background-color:#F5F5F5">
          <el-option
            v-for="item in options"
            :key="item.value"
            :label="item.label"
            :value="item.value"
          ></el-option>
        </el-select>
      </div>
      <el-button
        icon="el-icon-search"
        style="background-color:#ff2832;"
        class="search"
        @click="searchbook"
      ></el-button>
    </div>
    <div class="rightcar">
      <el-button type="danger" icon="el-icon-shopping-cart-full" class="mycar" @click="gotocar">购物车</el-button>
      <el-button type="info" class="mycar" @click="gotoorder">个人中心</el-button>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      
      options: [
        {
          value: "选项1",
          label: "书城"
        },
        {
          value: "选项2",
          label: "电子书"
        },
        {
          value: "选项3",
          label: "音像"
        },
        {
          value: "选项4",
          label: "时尚美妆"
        },
        {
          value: "选项5",
          label: "母婴用品"
        }
      ],
      value: ""
    };
  },
  computed:{
    input:{
      get(){
        return this.$store.state.navInput
      },
      set(val){
        this.$store.commit("navChangeInput",val)
      }

    }
  },
  methods: {
    gotocar() {
      console.log("去购物车");
      this.$router.push({ path: "/car" });
    },
    gotoorder() {
      console.log("去订单");
      this.$router.push({ path: "/my" });
    },
    searchbook() {
      this.$router.push({ path: "/searchpage" });
      this.$emit("woclick", this.input);

      this.$store.commit("navChangeInput",this.input)


    }
  },
  mounted() {}
};
</script>
<style scoped>
.topnav {
  display: flex;
  position: relative;
}
.topnav h1 {
  font-family: "Helvetica Neue",Helvetica,"PingFang SC","Hiragino Sans GB","Microsoft YaHei","微软雅黑",Helvetica Neue,sans-serif;
}
.right {
  width: 700px;
  display: flex;
  margin: 20px auto;
}
.right .myinput {
  width: 400px;
}
.right .search {
  height: 40px;
}
.right .select {
  position: absolute;
  right: 626px;
}
.mycar {
  font-size: 16px;
  width: 107px;
  height: 36px;
  text-align: center;
  margin-top: 20px;
}
.rightcar {
  margin-right: 20px;
  margin-top: 6px;
}
</style>
