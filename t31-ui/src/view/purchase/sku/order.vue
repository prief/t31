<template>

  <Form ref="form" :model="formData" :rules="ruleValidate" :label-width="80">
    <input type="hidden" v-model="formData.id"/>
    <input type="hidden" v-model="formData.trainDate"/>

    <Row>
      <Col span="12">
        <FormItem label="乘车人" prop="passengerId">
          <select-passenger v-model="formData.passengerId"></select-passenger>
        </FormItem>
      </Col>
      <Col span="12">
        <FormItem label="车次" prop="trainNumber">
          <Input v-model="formData.trainNumber"></Input>
        </FormItem>
      </Col>
    </Row>
    <Row>
      <Col span="12">
        <FormItem label="出发站" prop="startStationName">
          <Input v-model="formData.startStationName"></Input>
        </FormItem>
      </Col>
      <Col span="12">
        <FormItem label="到达站" prop="endStationName">
          <Input v-model="formData.endStationName"></Input>
        </FormItem>
      </Col>
    </Row>
    <Row>
      <Col span="12">
        <FormItem label="选择座位" prop="seatType">
          <Select v-model="formData.seatType" @on-change="seatTypeChange">
            <Option v-for="item in seatTypeList" :value="item.type" :key="item.type">{{ item.type }}</Option>
          </Select>
        </FormItem>
      </Col>
      <Col span="12">
        <FormItem label="价格" prop="money">
          <Input v-model="formData.money"></Input>
        </FormItem>
      </Col>
    </Row>
    <FormItem label="备注" prop="desc">
      <Input type="textarea" :rows="10" v-model="formData.desc"></Input>
    </FormItem>

    <FormItem>
      <Button type="primary" @click="handleOrder('form')">提交订单</Button>
      <Button type="primary" @click="go2list()" style="margin-left: 8px">关闭</Button>
    </FormItem>

  </Form>

</template>

<script>
import { baseEdit } from '@/libs/crud/base-edit'
import selectPassenger from '_c/select/selectPassenger.vue'
import instance from '@/libs/api'
import Qs from 'qs'

export default {
  components: { selectPassenger },
  mixins: [baseEdit],
  data () {
    return {
      seatTypeList: [],
      formData: {
        id: '',
        skuId: '',
        trainDate: '',
        startTime: '',
        passengerId: '',
        trainNumber: '',
        startStationName: '',
        endStationName: '',
        seatType: '',
        money: '',
        desc: ''
      },
      ruleValidate: {
        trainNumber: [
          { required: true, message: '车次不能为空', trigger: 'blur' }
        ],
        seatType: [
          { required: true, message: '选择座位不能为空', trigger: 'blur' }
        ]
      },
      rawHtml: ''
    }
  },
  created () {
    this.formData.skuId = this.$route.query.skuId
    this.formData.trainNumber = this.$route.query.trainNumber
    this.formData.startStationName = this.$route.query.fromStation
    this.formData.endStationName = this.$route.query.toStation
    this.formData.trainDate = this.$route.query.trainDate
    this.formData.startTime = this.$route.query.startTime

    instance.get(`/order/order/list-seat-type/${this.$route.query.numberId}`).then(response => {
      this.seatTypeList = response.data
    }).catch(error => {
      console.log(error)
    })
  },
  methods: {
    // 保存规格参数
    handleOrder (name) {
      this.$refs[name].validate((valid) => {
        if (valid) {
          instance.post(`/order/order/save`, JSON.stringify(this.formData, { arrayFormat: 'repeat' })).then(response => {
            if (response.data.code == 1) {
              instance.post(`/order/ali-pay/website-pay`,
                {
                  'skuId': this.formData.skuId,
                  'outTradeNo': response.data.data.id,
                  'totalAmount': this.formData.money,
                  'subject': '车票订单',
                  'seatType': this.formData.seatType,
                  'body': response.data.data.startStationName + '-' + response.data.data.endStationName
                }, {
                  headers: {
                    'Content-Type': 'application/json;charset=UTF-8'
                  }
                }).then(response => {
                if (response.data.code == 1) {
                  document.writeln(response.data.data)
                } else {
                  this.$Message.error(response.data.msg)
                }
              })
            } else {
              this.$Message.error(response.data.msg)
            }
          })
        } else {
          this.$Message.error('Fail')
        }
      })
    },

    seatTypeChange (value) {
      this.formData.money = this.seatTypeList.find(item => {
        return item.type == value
      }).price
    }
  }
}
</script>
