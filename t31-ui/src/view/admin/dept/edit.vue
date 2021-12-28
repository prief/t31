<template>

    <Form ref="form" :model="formData" :rules="ruleValidate" :label-width="80">
        <input type="hidden" v-model="formData.id"/>
        <input type="hidden" v-model="formData.parentId"/>

        <Row>
            <Col span="12">
            <FormItem label="名称" prop="title">
                <Input v-model="formData.title"></Input>
            </FormItem>
            </Col>
            <Col span="12">
            <FormItem label="排序" prop="sequence">
                <Input v-model="formData.sequence"></Input>
            </FormItem>
            </Col>
        </Row>
        <Row>
            <Col span="12">
            <FormItem label="电话" prop="tel">
                <Input v-model="formData.tel"></Input>
            </FormItem>
            </Col>
            <Col span="12">
            <FormItem label="是否展开" prop="expand">
                <Checkbox v-model="formData.expand"></Checkbox>
            </FormItem>
            </Col>
        </Row>

        <FormItem label="地址" prop="address">
            <Input v-model="formData.address"></Input>
        </FormItem>

        <FormItem label="描述" prop="comment">
            <Input type="textarea" :rows="10" v-model="formData.comment" ></Input>
        </FormItem>

        <FormItem>
            <Button type="primary" @click="handleSubmit('form')">保存</Button>
            <Button type="primary" @click="go2list()" style="margin-left: 8px">关闭</Button>
        </FormItem>

    </Form>

</template>

<script>

// import {baseEdit} from '@/libs/crud/base-edit'
import { baseTreeEdit } from '@/libs/crud/base-tree-edit'
import { validateTel } from '@/libs/validate/base-rule.js'

export default {
  mixins: [baseTreeEdit],
  data () {
    return {
      formData: {
        id: '',
        parentId: '',
        title: '',
        sequence: '',
        tel: '',
        address: '',
        comment: '',
        expand: false
      },
      ruleValidate: {
        title: [
          { required: true, message: '名称不能为空', trigger: 'blur' }
        ],
        tel: [
          { required: true, message: '电话不能为空', trigger: 'blur' },
          { validator: validateTel, trigger: 'blur' }
        ]
      }
    }
  }
}
</script>
