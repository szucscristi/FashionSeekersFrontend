// import { createApp } from 'vue'
// import * as VueRouter from 'vue-router';
import Homepage from '../components/Homepage.vue'
import LoginPage from '../components/LoginPage.vue'
import Products from '../components/Products.vue'
import RegisterPage from '../components/RegisterPage.vue'
import ShoppingCart from '../components/ShoppingCart.vue'
import Form from '../components/Form.vue'
import UserHistory from '../components/UserHistory.vue'
import CRUD from '../components/CRUD.vue'
import {createRouter, createWebHistory} from 'vue-router';

const routes= [
    {
        
        path: '/asdf',
        name: 'products',
        component: Products

    },
    {
        path: '/',
        name: 'homepage',
        component: Homepage
    },
    {
        
        path: '/coscumparaturi',
        name: 'shoppingCart',
        component: ShoppingCart

    },
    {
        
        path: '/forms',
        name: 'form',
        component: Form

    },
    {
        
        path: '/register',
        name: 'register',
        component: RegisterPage

    },
    {
        
        path: '/login',
        name: 'login',
        component: LoginPage

    },
    {
        
        path: '/user-history',
        name: 'userHistory',
        component: UserHistory

    },
    {
        
        path: '/crud',
        name: 'userCrud',
        component: CRUD

    },
]
const router = createRouter({
    history: createWebHistory(),
    routes,
  });
export default router;
