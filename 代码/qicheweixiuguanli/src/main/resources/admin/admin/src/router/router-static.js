import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'

     import users from '@/views/modules/users/list'
    import cheliang from '@/views/modules/cheliang/list'
    import dictionary from '@/views/modules/dictionary/list'
    import forum from '@/views/modules/forum/list'
    import news from '@/views/modules/news/list'
    import peijian from '@/views/modules/peijian/list'
    import peijianChuruInout from '@/views/modules/peijianChuruInout/list'
    import peijianChuruInoutList from '@/views/modules/peijianChuruInoutList/list'
    import weixiuxiangmu from '@/views/modules/weixiuxiangmu/list'
    import weixiuxiangmuLiuyan from '@/views/modules/weixiuxiangmuLiuyan/list'
    import weixiuxiangmuOrder from '@/views/modules/weixiuxiangmuOrder/list'
    import yonghu from '@/views/modules/yonghu/list'
    import yuangong from '@/views/modules/yuangong/list'
    import config from '@/views/modules/config/list'
    import dictionaryCheliang from '@/views/modules/dictionaryCheliang/list'
    import dictionaryForumState from '@/views/modules/dictionaryForumState/list'
    import dictionaryNews from '@/views/modules/dictionaryNews/list'
    import dictionaryPeijian from '@/views/modules/dictionaryPeijian/list'
    import dictionaryPeijianChuruInout from '@/views/modules/dictionaryPeijianChuruInout/list'
    import dictionarySex from '@/views/modules/dictionarySex/list'
    import dictionaryShangxia from '@/views/modules/dictionaryShangxia/list'
    import dictionaryShenfen from '@/views/modules/dictionaryShenfen/list'
    import dictionaryWeixiuxiangmu from '@/views/modules/dictionaryWeixiuxiangmu/list'
    import dictionaryWeixiuxiangmuOrder from '@/views/modules/dictionaryWeixiuxiangmuOrder/list'





//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    } ,{
        path: '/users',
        name: '管理信息',
        component: users
      }
    ,{
        path: '/dictionaryCheliang',
        name: '品牌',
        component: dictionaryCheliang
    }
    ,{
        path: '/dictionaryForumState',
        name: '帖子状态',
        component: dictionaryForumState
    }
    ,{
        path: '/dictionaryNews',
        name: '公告类型',
        component: dictionaryNews
    }
    ,{
        path: '/dictionaryPeijian',
        name: '配件类型',
        component: dictionaryPeijian
    }
    ,{
        path: '/dictionaryPeijianChuruInout',
        name: '出入库类型',
        component: dictionaryPeijianChuruInout
    }
    ,{
        path: '/dictionarySex',
        name: '性别',
        component: dictionarySex
    }
    ,{
        path: '/dictionaryShangxia',
        name: '上下架',
        component: dictionaryShangxia
    }
    ,{
        path: '/dictionaryShenfen',
        name: '身份',
        component: dictionaryShenfen
    }
    ,{
        path: '/dictionaryWeixiuxiangmu',
        name: '维修类型',
        component: dictionaryWeixiuxiangmu
    }
    ,{
        path: '/dictionaryWeixiuxiangmuOrder',
        name: '订单类型',
        component: dictionaryWeixiuxiangmuOrder
    }
    ,{
        path: '/config',
        name: '轮播图',
        component: config
    }


    ,{
        path: '/cheliang',
        name: '车辆信息',
        component: cheliang
      }
    ,{
        path: '/dictionary',
        name: '字典表',
        component: dictionary
      }
    ,{
        path: '/forum',
        name: '论坛信息',
        component: forum
      }
    ,{
        path: '/news',
        name: '公告信息',
        component: news
      }
    ,{
        path: '/peijian',
        name: '配件',
        component: peijian
      }
    ,{
        path: '/peijianChuruInout',
        name: '出入库',
        component: peijianChuruInout
      }
    ,{
        path: '/peijianChuruInoutList',
        name: '出入库详情',
        component: peijianChuruInoutList
      }
    ,{
        path: '/weixiuxiangmu',
        name: '维修项目',
        component: weixiuxiangmu
      }
    ,{
        path: '/weixiuxiangmuLiuyan',
        name: '维修项目评论',
        component: weixiuxiangmuLiuyan
      }
    ,{
        path: '/weixiuxiangmuOrder',
        name: '维修订单',
        component: weixiuxiangmuOrder
      }
    ,{
        path: '/yonghu',
        name: '用户',
        component: yonghu
      }
    ,{
        path: '/yuangong',
        name: '员工',
        component: yuangong
      }


    ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})

export default router;
