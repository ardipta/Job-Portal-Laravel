<template>
    <div>
        <button v-if="show" @click="unsave()" class="btn btn-dark">Unsave</button>
        <div v-else class="alert alert-success">Unsaved Successfully</div>
        <button v-if="!show" @click="save()" class="btn btn-success">Save</button>
        <div v-else class="alert alert-success">Saved Successfully</div>
    </div>
</template>

<script>
    export default {
        props:['jobid','favourited'],
        mounted() {
            this.show = this.favourited ? true:false
        },
        data(){
            return{
                'show':true
            }
        },
        methods:{
            save(){
                axios.post('/save/'+this.jobid)
                    .then(response=>this.show=true)
                    .catch(error=>alert('Error Generate'))
            },
            unsave(){
                axios.post('/unsave/'+this.jobid)
                    .then(response=>this.show=false)
                    .catch(error=>alert('Error Generate'))
            }
        }
    }
</script>
