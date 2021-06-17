roncoo-course     | 2021-06-17 03:30:02.593 |-ERROR [pool-3-thread-2] com.roncoo.education.util.polyv.PolyvUtil [181] -|   保利威视，上传视频失败，原因={"error":"2"}

http://dev.polyv.net/2014/videoproduct/v-api/v-api-upload/uploadfile/

roncoo-course     | 2021-06-17 11:03:36.411 |-DEBUG [pool-3-thread-5] com.roncoo.education.course.service.dao.impl.mapper.CourseVideoMapper.updateByPrimaryKeySelective [159] -|   <==    Updates: 1
roncoo-course     | 2021-06-17 11:03:36.475 |-ERROR [pool-3-thread-5] com.roncoo.education.util.aliyun.AliyunUtil [124] -|   上传失败
roncoo-course     | java.lang.NullPointerException: null
roncoo-course     |     at com.aliyun.oss.OSSClient.toURI(OSSClient.java:323)
roncoo-course     |     at com.aliyun.oss.OSSClient.setEndpoint(OSSClient.java:286)
roncoo-course     |     at com.aliyun.oss.OSSClient.<init>(OSSClient.java:270)
roncoo-course     |     at com.aliyun.oss.OSSClient.<init>(OSSClient.java:193)
roncoo-course     |     at com.roncoo.education.util.aliyun.AliyunUtil.getOssClient(AliyunUtil.java:251)
roncoo-course     |     at com.roncoo.education.util.aliyun.AliyunUtil.putObjectForFile(AliyunUtil.java:237)
roncoo-course     |     at com.roncoo.education.util.aliyun.AliyunUtil.uploadVideo(AliyunUtil.java:121)
roncoo-course     |     at com.roncoo.education.course.service.api.biz.ApiUploadBiz$1.run(ApiUploadBiz.java:144)
roncoo-course     |     at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
roncoo-course     |     at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
roncoo-course     |     at java.lang.Thread.run(Thread.java:745)