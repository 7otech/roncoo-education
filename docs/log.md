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


roncoo-course     | 2021-06-17 17:56:34.795 |-ERROR [pool-3-thread-9] com.roncoo.education.util.aliyun.AliyunUtil [124] -|   上传失败
roncoo-course     | java.lang.IllegalArgumentException: The bucket name "" is invalid. A bucket name must: 1) be comprised of lower-case characters, numbers or dash(-); 2) start with lower case or numbers; 3) be between 3-63 characters long.
roncoo-course     |     at com.aliyun.oss.internal.OSSUtils.ensureBucketNameValid(OSSUtils.java:73)
roncoo-course     |     at com.aliyun.oss.internal.OSSObjectOperation.writeObjectInternal(OSSObjectOperation.java:600)
roncoo-course     |     at com.aliyun.oss.internal.OSSObjectOperation.putObject(OSSObjectOperation.java:132)
roncoo-course     |     at com.aliyun.oss.OSSClient.putObject(OSSClient.java:528)
roncoo-course     |     at com.aliyun.oss.OSSClient.putObject(OSSClient.java:510)
roncoo-course     |     at com.roncoo.education.util.aliyun.AliyunUtil.putObjectForFile(AliyunUtil.java:243)
roncoo-course     |     at com.roncoo.education.util.aliyun.AliyunUtil.uploadVideo(AliyunUtil.java:121)
roncoo-course     |     at com.roncoo.education.course.service.api.biz.ApiUploadBiz$1.run(ApiUploadBiz.java:144)
roncoo-course     |     at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
roncoo-course     |     at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
roncoo-course     |     at java.lang.Thread.run(Thread.java:745)


roncoo-course     | 2021-06-17 17:59:47.402 |-WARN  [pool-3-thread-11] com.aliyun.oss [62] -|   [Server]Unable to execute HTTP request: You have no right to access this object because of bucket acl.
roncoo-course     | [ErrorCode]: AccessDenied
roncoo-course     | [RequestId]: 60CB8D925423BA3733A96089
roncoo-course     | [HostId]: roncoo-web.oss-cn-beijing.aliyuncs.com
roncoo-course     | [ResponseError]:
roncoo-course     | <?xml version="1.0" encoding="UTF-8"?>
roncoo-course     | <Error>
roncoo-course     |   <Code>AccessDenied</Code>
roncoo-course     |   <Message>You have no right to access this object because of bucket acl.</Message>
roncoo-course     |   <RequestId>60CB8D925423BA3733A96089</RequestId>
roncoo-course     |   <HostId>roncoo-web.oss-cn-beijing.aliyuncs.com</HostId>
roncoo-course     | </Error>
roncoo-course     |
roncoo-course     | 2021-06-17 17:59:47.402 |-ERROR [pool-3-thread-11] com.roncoo.education.util.aliyun.AliyunUtil [124] -|   上传失败
roncoo-course     | com.aliyun.oss.OSSException: You have no right to access this object because of bucket acl.
roncoo-course     | [ErrorCode]: AccessDenied
roncoo-course     | [RequestId]: 60CB8D925423BA3733A96089
roncoo-course     | [HostId]: roncoo-web.oss-cn-beijing.aliyuncs.com
roncoo-course     | [ResponseError]:
roncoo-course     | <?xml version="1.0" encoding="UTF-8"?>
roncoo-course     | <Error>
roncoo-course     |   <Code>AccessDenied</Code>
roncoo-course     |   <Message>You have no right to access this object because of bucket acl.</Message>
roncoo-course     |   <RequestId>60CB8D925423BA3733A96089</RequestId>
roncoo-course     |   <HostId>roncoo-web.oss-cn-beijing.aliyuncs.com</HostId>
roncoo-course     | </Error>
roncoo-course     |
roncoo-course     |     at com.aliyun.oss.common.utils.ExceptionFactory.createOSSException(ExceptionFactory.java:99)
roncoo-course     |     at com.aliyun.oss.internal.OSSErrorResponseHandler.handle(OSSErrorResponseHandler.java:72)
roncoo-course     |     at com.aliyun.oss.common.comm.ServiceClient.handleResponse(ServiceClient.java:242)
roncoo-course     |     at com.aliyun.oss.common.comm.ServiceClient.sendRequestImpl(ServiceClient.java:124)
roncoo-course     |     at com.aliyun.oss.common.comm.ServiceClient.sendRequest(ServiceClient.java:67)
roncoo-course     |     at com.aliyun.oss.internal.OSSOperation.send(OSSOperation.java:92)
roncoo-course     |     at com.aliyun.oss.internal.OSSOperation.doOperation(OSSOperation.java:140)
roncoo-course     |     at com.aliyun.oss.internal.OSSOperation.doOperation(OSSOperation.java:111)
roncoo-course     |     at com.aliyun.oss.internal.OSSObjectOperation.writeObjectInternal(OSSObjectOperation.java:665)
roncoo-course     |     at com.aliyun.oss.internal.OSSObjectOperation.putObject(OSSObjectOperation.java:132)
roncoo-course     |     at com.aliyun.oss.OSSClient.putObject(OSSClient.java:528)
roncoo-course     |     at com.aliyun.oss.OSSClient.putObject(OSSClient.java:510)
roncoo-course     |     at com.roncoo.education.util.aliyun.AliyunUtil.putObjectForFile(AliyunUtil.java:243)
roncoo-course     |     at com.roncoo.education.util.aliyun.AliyunUtil.uploadVideo(AliyunUtil.java:121)
roncoo-course     |     at com.roncoo.education.course.service.api.biz.ApiUploadBiz$1.run(ApiUploadBiz.java:144)
roncoo-course     |     at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
roncoo-course     |     at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
roncoo-course     |     at java.lang.Thread.run(Thread.java:745)


roncoo-course     | Exception in thread "pool-3-thread-13" java.lang.NullPointerException
roncoo-course     |     at com.roncoo.education.course.service.api.biz.ApiUploadBiz$1.run(ApiUploadBiz.java:154)
roncoo-course     |     at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
roncoo-course     |     at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
roncoo-course     |     at java.lang.Thread.run(Thread.java:745)
roncoo-job        | 2021-06-17 18:06:10.961 |-WARN  [scheduling-1] com.roncoo.education.app.job.OrderCrontab [36] -|   订单处理-定时任务开始
roncoo-course     | 2021-06-17 18:06:10.962 |-DEBUG [http-nio-5730-exec-8] com.roncoo.education.course.service.dao.impl.mapper.OrderInfoMapper.countByExample [159] -|   ==>  Preparing: select count(*) from order_info WHERE ( order_status = ? and gmt_create < ? )
roncoo-course     | 2021-06-17 18:06:10.963 |-DEBUG [http-nio-5730-exec-8] com.roncoo.education.course.service.dao.impl.mapper.OrderInfoMapper.countByExample [159] -|   ==> Parameters: 1(Integer), 2021-06-17 17:06:10.962(Timestamp)


roncoo-course     | 2021-06-17 18:30:55.087 |-DEBUG [pool-3-thread-1] com.roncoo.education.course.service.dao.impl.mapper.CourseVideoMapper.selectByExample [159] -|   <==      Total: 1
roncoo-course     | 2021-06-17 18:30:55.090 |-DEBUG [pool-3-thread-1] com.roncoo.education.course.service.api.biz.ApiUploadBiz [155] -|   video:{"id":1405593808665600002,"gmtCreate":1623954653000,"gmtModified":1623954653000,"statusId":1,"sort":1,"courseId":1085453180200448002,"chapterId":1249546933273939969,"videoName":"【把手当成手写板的智能手表⌚️：用触摸笔在手背上画画，在手表上实时显示。笔尖带有永磁体，手表内置磁力计会追踪笔尖相对位置，用比指尖电容屏输入精度更高】.mp4","videoNo":1405593808636239873,"videoStatus":2,"videoLength":"00:00:28","videoVid":"97a8ee5828c387bf1beca6a370b96f24_9","videoOasId":"roncoo-web.oss-cn-beijing.aliyuncs.comcourse/7f43c1b305214f90b678c18d14cd50b5.mp4"}
roncoo-course     | 2021-06-17 18:30:55.091 |-DEBUG [pool-3-thread-1] com.roncoo.education.course.service.api.biz.ApiUploadBiz [156] -|   courseVideo:null
roncoo-course     | Exception in thread "pool-3-thread-1" java.lang.NullPointerException
roncoo-course     |     at com.roncoo.education.course.service.api.biz.ApiUploadBiz$1.run(ApiUploadBiz.java:157)
roncoo-course     |     at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
roncoo-course     |     at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
roncoo-course     |     at java.lang.Thread.run(Thread.java:745)


roncoo-gateway    | 2021-06-17 19:43:20.014 |-ERROR [reactor-http-epoll-23] org.springframework.boot.autoconfigure.web.reactive.error.AbstractErrorWebExceptionHandler [122] -|   [5124f25e-31]  500 Server Error for HTTP POST "/system/pc/sys/update"
roncoo-gateway    | com.roncoo.education.util.base.BaseException: 没此权限，请联系管理员！
roncoo-gateway    |     at com.roncoo.education.app.gateway.filter.EduGlobalFilter.filter(EduGlobalFilter.java:79)
roncoo-gateway    |     Suppressed: reactor.core.publisher.FluxOnAssembly$OnAssemblyException:
roncoo-gateway    | Error has been observed at the following site(s):
roncoo-gateway    |     |_ checkpoint ⇢ org.springframework.cloud.gateway.filter.WeightCalculatorWebFilter [DefaultWebFilterChain]
roncoo-gateway    |     |_ checkpoint ⇢ com.alibaba.csp.sentinel.adapter.spring.webflux.SentinelWebFluxFilter [DefaultWebFilterChain]
roncoo-gateway    |     |_ checkpoint ⇢ org.springframework.boot.actuate.metrics.web.reactive.server.MetricsWebFilter [DefaultWebFilterChain]
roncoo-gateway    |     |_ checkpoint ⇢ HTTP POST "/system/pc/sys/update" [ExceptionHandlingWebHandler]
roncoo-gateway    | Stack trace:
roncoo-gateway    |             at com.roncoo.education.app.gateway.filter.EduGlobalFilter.filter(EduGlobalFilter.java:79)
roncoo-gateway    |             at org.springframework.cloud.gateway.handler.FilteringWebHandler$GatewayFilterAdapter.filter(FilteringWebHandler.java:138)
roncoo-gateway    |             at org.springframework.cloud.gateway.filter.OrderedGatewayFilter.filter(OrderedGatewayFilter.java:44)
roncoo-gateway    |             at org.springframework.cloud.gateway.handler.FilteringWebHandler$DefaultGatewayFilterChain.lambda$filter$0(FilteringWebHandler.java:118)
roncoo-gateway    |             at reactor.core.publisher.MonoDefer.subscribe(MonoDefer.java:44)
roncoo-gateway    |             at reactor.core.publisher.Mono.subscribe(Mono.java:4110)
roncoo-gateway    |             at reactor.core.publisher.MonoIgnoreThen$ThenIgnoreMain.drain(MonoIgnoreThen.java:172)
roncoo-gateway    |             at reactor.core.publisher.MonoIgnoreThen.subscribe(MonoIgnoreThen.java:56)
roncoo-gateway    |             at reactor.core.publisher.InternalMonoOperator.subscribe(InternalMonoOperator.java:55)
roncoo-gateway    |             at reactor.core.publisher.MonoDefer.subscribe(MonoDefer.java:52)
roncoo-gateway    |             at reactor.core.publisher.MonoDefer.subscribe(MonoDefer.java:52)
roncoo-gateway    |             at reactor.core.publisher.InternalMonoOperator.subscribe(InternalMonoOperator.java:55)
roncoo-gateway    |             at reactor.core.publisher.MonoDefer.subscribe(MonoDefer.java:52)
roncoo-gateway    |             at reactor.core.publisher.Mono.subscribe(Mono.java:4110)
roncoo-gateway    |             at reactor.core.publisher.MonoIgnoreThen$ThenIgnoreMain.drain(MonoIgnoreThen.java:172)
roncoo-gateway    |             at reactor.core.publisher.MonoIgnoreThen.subscribe(MonoIgnoreThen.java:56)
roncoo-gateway    |             at reactor.core.publisher.MonoFlatMap$FlatMapMain.onNext(MonoFlatMap.java:150)
roncoo-gateway    |             at reactor.core.publisher.FluxSwitchIfEmpty$SwitchIfEmptySubscriber.onNext(FluxSwitchIfEmpty.java:67)
roncoo-gateway    |             at reactor.core.publisher.MonoNext$NextSubscriber.onNext(MonoNext.java:76)
roncoo-gateway    |             at reactor.core.publisher.FluxConcatMap$ConcatMapImmediate.innerNext(FluxConcatMap.java:274)
roncoo-gateway    |             at reactor.core.publisher.FluxConcatMap$ConcatMapInner.onNext(FluxConcatMap.java:851)
roncoo-gateway    |             at reactor.core.publisher.FluxMap$MapSubscriber.onNext(FluxMap.java:114)
roncoo-gateway    |             at reactor.core.publisher.FluxSwitchIfEmpty$SwitchIfEmptySubscriber.onNext(FluxSwitchIfEmpty.java:67)
roncoo-gateway    |             at reactor.core.publisher.Operators$MonoSubscriber.complete(Operators.java:1705)
roncoo-gateway    |             at reactor.core.publisher.MonoFlatMap$FlatMapMain.onNext(MonoFlatMap.java:144)
roncoo-gateway    |             at reactor.core.publisher.FluxMap$MapSubscriber.onNext(FluxMap.java:114)
roncoo-gateway    |             at reactor.core.publisher.MonoNext$NextSubscriber.onNext(MonoNext.java:76)
roncoo-gateway    |             at reactor.core.publisher.FluxConcatMap$ConcatMapImmediate.innerNext(FluxConcatMap.java:274)
roncoo-gateway    |             at reactor.core.publisher.FluxConcatMap$ConcatMapInner.onNext(FluxConcatMap.java:851)
roncoo-gateway    |             at reactor.core.publisher.FluxOnErrorResume$ResumeSubscriber.onNext(FluxOnErrorResume.java:73)
roncoo-gateway    |             at reactor.core.publisher.MonoPeekTerminal$MonoTerminalPeekSubscriber.onNext(MonoPeekTerminal.java:173)
roncoo-gateway    |             at reactor.core.publisher.Operators$MonoSubscriber.complete(Operators.java:1705)
roncoo-gateway    |             at reactor.core.publisher.MonoFilterWhen$MonoFilterWhenMain.onNext(MonoFilterWhen.java:140)
roncoo-gateway    |             at reactor.core.publisher.Operators$ScalarSubscription.request(Operators.java:2267)
roncoo-gateway    |             at reactor.core.publisher.MonoFilterWhen$MonoFilterWhenMain.onSubscribe(MonoFilterWhen.java:103)
roncoo-gateway    |             at reactor.core.publisher.MonoJust.subscribe(MonoJust.java:54)
roncoo-gateway    |             at reactor.core.publisher.Mono.subscribe(Mono.java:4110)
roncoo-gateway    |             at reactor.core.publisher.FluxConcatMap$ConcatMapImmediate.drain(FluxConcatMap.java:441)
roncoo-gateway    |             at reactor.core.publisher.FluxConcatMap$ConcatMapImmediate.onNext(FluxConcatMap.java:243)
roncoo-gateway    |             at reactor.core.publisher.FluxDematerialize$DematerializeSubscriber.onNext(FluxDematerialize.java:91)
roncoo-gateway    |             at reactor.core.publisher.FluxDematerialize$DematerializeSubscriber.onNext(FluxDematerialize.java:38)
roncoo-gateway    |             at reactor.core.publisher.FluxIterable$IterableSubscription.slowPath(FluxIterable.java:267)
roncoo-gateway    |             at reactor.core.publisher.FluxIterable$IterableSubscription.request(FluxIterable.java:225)
roncoo-gateway    |             at reactor.core.publisher.FluxDematerialize$DematerializeSubscriber.request(FluxDematerialize.java:120)
roncoo-gateway    |             at reactor.core.publisher.FluxConcatMap$ConcatMapImmediate.onSubscribe(FluxConcatMap.java:228)
roncoo-gateway    |             at reactor.core.publisher.FluxDematerialize$DematerializeSubscriber.onSubscribe(FluxDematerialize.java:70)
roncoo-gateway    |             at reactor.core.publisher.FluxIterable.subscribe(FluxIterable.java:161)
roncoo-gateway    |             at reactor.core.publisher.FluxIterable.subscribe(FluxIterable.java:86)
roncoo-gateway    |             at reactor.core.publisher.InternalFluxOperator.subscribe(InternalFluxOperator.java:53)
roncoo-gateway    |             at reactor.core.publisher.FluxDefer.subscribe(FluxDefer.java:54)
roncoo-gateway    |             at reactor.core.publisher.Mono.subscribe(Mono.java:4110)
roncoo-gateway    |             at reactor.core.publisher.FluxConcatMap$ConcatMapImmediate.drain(FluxConcatMap.java:441)
roncoo-gateway    |             at reactor.core.publisher.FluxConcatMap$ConcatMapImmediate.onSubscribe(FluxConcatMap.java:211)
roncoo-gateway    |             at reactor.core.publisher.FluxIterable.subscribe(FluxIterable.java:161)
roncoo-gateway    |             at reactor.core.publisher.FluxIterable.subscribe(FluxIterable.java:86)
roncoo-gateway    |             at reactor.core.publisher.InternalMonoOperator.subscribe(InternalMonoOperator.java:55)
roncoo-gateway    |             at reactor.core.publisher.MonoDefer.subscribe(MonoDefer.java:52)
roncoo-gateway    |             at reactor.core.publisher.InternalMonoOperator.subscribe(InternalMonoOperator.java:55)
roncoo-gateway    |             at reactor.core.publisher.MonoDefer.subscribe(MonoDefer.java:52)
roncoo-gateway    |             at com.alibaba.csp.sentinel.adapter.reactor.MonoSentinelOperator.subscribe(MonoSentinelOperator.java:40)
roncoo-gateway    |             at reactor.core.publisher.InternalMonoOperator.subscribe(InternalMonoOperator.java:55)
roncoo-gateway    |             at reactor.core.publisher.MonoDefer.subscribe(MonoDefer.java:52)
roncoo-gateway    |             at reactor.core.publisher.InternalMonoOperator.subscribe(InternalMonoOperator.java:55)
roncoo-gateway    |             at reactor.core.publisher.MonoDefer.subscribe(MonoDefer.java:52)
roncoo-gateway    |             at reactor.core.publisher.InternalMonoOperator.subscribe(InternalMonoOperator.java:55)
roncoo-gateway    |             at reactor.core.publisher.MonoDefer.subscribe(MonoDefer.java:52)
roncoo-gateway    |             at reactor.core.publisher.Mono.subscribe(Mono.java:4110)
roncoo-gateway    |             at reactor.core.publisher.MonoIgnoreThen$ThenIgnoreMain.drain(MonoIgnoreThen.java:172)
roncoo-gateway    |             at reactor.core.publisher.MonoIgnoreThen.subscribe(MonoIgnoreThen.java:56)
roncoo-gateway    |             at reactor.core.publisher.InternalMonoOperator.subscribe(InternalMonoOperator.java:55)
roncoo-gateway    |             at reactor.netty.http.server.HttpServerHandle.onStateChange(HttpServerHandle.java:64)
roncoo-gateway    |             at reactor.netty.tcp.TcpServerBind$ChildObserver.onStateChange(TcpServerBind.java:228)
roncoo-gateway    |             at reactor.netty.http.server.HttpServerOperations.onInboundNext(HttpServerOperations.java:465)
roncoo-gateway    |             at reactor.netty.channel.ChannelOperationsHandler.channelRead(ChannelOperationsHandler.java:90)
roncoo-gateway    |             at io.netty.channel.AbstractChannelHandlerContext.invokeChannelRead(AbstractChannelHandlerContext.java:377)
roncoo-gateway    |             at io.netty.channel.AbstractChannelHandlerContext.invokeChannelRead(AbstractChannelHandlerContext.java:363)
roncoo-gateway    |             at io.netty.channel.AbstractChannelHandlerContext.fireChannelRead(AbstractChannelHandlerContext.java:355)
roncoo-gateway    |             at reactor.netty.http.server.HttpTrafficHandler.channelRead(HttpTrafficHandler.java:170)
roncoo-gateway    |             at io.netty.channel.AbstractChannelHandlerContext.invokeChannelRead(AbstractChannelHandlerContext.java:377)
roncoo-gateway    |             at io.netty.channel.AbstractChannelHandlerContext.invokeChannelRead(AbstractChannelHandlerContext.java:363)
roncoo-gateway    |             at io.netty.channel.AbstractChannelHandlerContext.fireChannelRead(AbstractChannelHandlerContext.java:355)
roncoo-gateway    |             at io.netty.channel.CombinedChannelDuplexHandler$DelegatingChannelHandlerContext.fireChannelRead(CombinedChannelDuplexHandler.java:436)
roncoo-gateway    |             at io.netty.handler.codec.ByteToMessageDecoder.fireChannelRead(ByteToMessageDecoder.java:321)
roncoo-gateway    |             at io.netty.handler.codec.ByteToMessageDecoder.fireChannelRead(ByteToMessageDecoder.java:308)
roncoo-gateway    |             at io.netty.handler.codec.ByteToMessageDecoder.callDecode(ByteToMessageDecoder.java:422)
roncoo-gateway    |             at io.netty.handler.codec.ByteToMessageDecoder.channelRead(ByteToMessageDecoder.java:276)
roncoo-gateway    |             at io.netty.channel.CombinedChannelDuplexHandler.channelRead(CombinedChannelDuplexHandler.java:251)
roncoo-gateway    |             at io.netty.channel.AbstractChannelHandlerContext.invokeChannelRead(AbstractChannelHandlerContext.java:377)
roncoo-gateway    |             at io.netty.channel.AbstractChannelHandlerContext.invokeChannelRead(AbstractChannelHandlerContext.java:363)
roncoo-gateway    |             at io.netty.channel.AbstractChannelHandlerContext.fireChannelRead(AbstractChannelHandlerContext.java:355)
roncoo-gateway    |             at io.netty.channel.DefaultChannelPipeline$HeadContext.channelRead(DefaultChannelPipeline.java:1410)
roncoo-gateway    |             at io.netty.channel.AbstractChannelHandlerContext.invokeChannelRead(AbstractChannelHandlerContext.java:377)
roncoo-gateway    |             at io.netty.channel.AbstractChannelHandlerContext.invokeChannelRead(AbstractChannelHandlerContext.java:363)
roncoo-gateway    |             at io.netty.channel.DefaultChannelPipeline.fireChannelRead(DefaultChannelPipeline.java:919)
roncoo-gateway    |             at io.netty.channel.epoll.AbstractEpollStreamChannel$EpollStreamUnsafe.epollInReady(AbstractEpollStreamChannel.java:792)
roncoo-gateway    |             at io.netty.channel.epoll.AbstractEpollChannel$AbstractEpollUnsafe$1.run(AbstractEpollChannel.java:387)
roncoo-gateway    |             at io.netty.util.concurrent.AbstractEventExecutor.safeExecute(AbstractEventExecutor.java:164)
roncoo-gateway    |             at io.netty.util.concurrent.SingleThreadEventExecutor.runAllTasks(SingleThreadEventExecutor.java:472)
roncoo-gateway    |             at io.netty.channel.epoll.EpollEventLoop.run(EpollEventLoop.java:384)
roncoo-gateway    |             at io.netty.util.concurrent.SingleThreadEventExecutor$4.run(SingleThreadEventExecutor.java:989)
roncoo-gateway    |             at io.netty.util.internal.ThreadExecutorMap$2.run(ThreadExecutorMap.java:74)
roncoo-gateway    |             at io.netty.util.concurrent.FastThreadLocalRunnable.run(FastThreadLocalRunnable.java:30)
roncoo-gateway    |             at java.lang.Thread.run(Thread.java:745)