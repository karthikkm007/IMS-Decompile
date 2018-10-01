.class Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;
.super Landroid/os/Handler;
.source "ImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsUtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsUtImplHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsUtImpl;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsUtImpl;)V
    .locals 0

    iput-object p1, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private handleCFUTResponse(Landroid/os/AsyncResult;Landroid/os/Message;)V
    .locals 12

    const/16 v11, 0x324

    const/4 v8, 0x1

    const/4 v10, 0x0

    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    array-length v6, v4

    if-ge v6, v8, :cond_0

    const-string/jumbo v6, "ImsCallForwardTimerInfo[] has no elements!"

    invoke-static {p0, v6}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v6}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v7

    iget-object v6, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Lcom/android/ims/internal/IImsUt;

    iget v8, p2, Landroid/os/Message;->arg1:I

    new-instance v9, Lcom/android/ims/ImsReasonInfo;

    invoke-direct {v9, v11, v10}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {v7, v6, v8, v9}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    array-length v6, v4

    new-array v2, v6, [Lcom/android/ims/ImsCallForwardInfo;

    const/4 v5, 0x0

    :goto_0
    array-length v6, v4

    if-ge v5, v6, :cond_5

    aget-object v3, v4, v5

    new-instance v1, Lcom/android/ims/ImsCallForwardInfo;

    invoke-direct {v1}, Lcom/android/ims/ImsCallForwardInfo;-><init>()V

    iget v6, v3, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->status:I

    if-ne v6, v8, :cond_1

    iput v8, v1, Lcom/android/ims/ImsCallForwardInfo;->mStatus:I

    :goto_1
    iget v6, v3, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->reason:I

    if-nez v6, :cond_3

    iput v10, v1, Lcom/android/ims/ImsCallForwardInfo;->mCondition:I

    :goto_2
    if-eqz v0, :cond_4

    iget-object v6, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v6}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v7

    iget-object v6, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Lcom/android/ims/internal/IImsUt;

    iget v8, p2, Landroid/os/Message;->arg1:I

    new-instance v9, Lcom/android/ims/ImsReasonInfo;

    invoke-direct {v9, v11, v10}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {v7, v6, v8, v9}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    return-void

    :cond_1
    iget v6, v3, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->status:I

    if-nez v6, :cond_2

    iput v10, v1, Lcom/android/ims/ImsCallForwardInfo;->mStatus:I

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    const-string/jumbo v6, "Bad status in Query CFUT response."

    invoke-static {p0, v6}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    const-string/jumbo v6, "Bad reason in Query CFUT response."

    invoke-static {p0, v6}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    new-instance v6, Ljava/lang/String;

    iget-object v7, v3, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->number:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v6, v1, Lcom/android/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    aput-object v1, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    iget-object v6, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v6}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v7

    iget-object v6, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Lcom/android/ims/internal/IImsUt;

    iget v8, p2, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v6, v8, v2}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationCallForwardQueried(Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsCallForwardInfo;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 37

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Message received: what = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v31, v0

    packed-switch v31, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    if-gez v31, :cond_1

    const-string/jumbo v31, "Invalid message id received in handleMessage."

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    if-eqz v31, :cond_2

    const-string/jumbo v31, "Query CB error"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Lorg/codeaurora/ims/ImsUtImpl;->-wrap0(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Lcom/android/ims/ImsReasonInfo;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    goto :goto_0

    :cond_2
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v31, v0

    if-eqz v31, :cond_a

    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasErrorDetails()Z

    move-result v31

    if-eqz v31, :cond_3

    const-string/jumbo v31, "SuppSvcResponse has failure for CB query."

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    const/16 v34, 0x324

    move-object/from16 v0, v26

    move/from16 v1, v34

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsCallUtils;->getImsReasonInfo(Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;I)Lcom/android/ims/ImsReasonInfo;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    return-void

    :cond_3
    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasStatus()Z

    move-result v31

    if-nez v31, :cond_4

    const-string/jumbo v31, "No service status info in response for CB query."

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    new-instance v34, Lcom/android/ims/ImsReasonInfo;

    const/16 v35, 0x324

    const/16 v36, 0x0

    invoke-direct/range {v34 .. v36}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getCbNumListTypeCount()I

    move-result v19

    if-lez v19, :cond_7

    const/16 v29, 0x0

    const/16 v21, 0x0

    :goto_1
    move/from16 v0, v21

    move/from16 v1, v19

    if-ge v0, v1, :cond_6

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getCbNumListType(I)Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    move-result-object v11

    invoke-virtual {v11}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->getCbNumListCount()I

    move-result v27

    move/from16 v0, v27

    new-array v0, v0, [Lcom/android/ims/ImsSsInfo;

    move-object/from16 v29, v0

    invoke-virtual {v11}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->hasServiceClass()Z

    move-result v31

    if-eqz v31, :cond_5

    invoke-virtual {v11}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->getServiceClass()Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->getServiceClass()I

    move-result v25

    if-eqz v27, :cond_5

    const/16 v22, 0x0

    :goto_2
    move/from16 v0, v22

    move/from16 v1, v27

    if-ge v0, v1, :cond_5

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->getCbNumList(I)Lorg/codeaurora/ims/ImsQmiIF$CbNumList;

    move-result-object v10

    new-instance v28, Lcom/android/ims/ImsSsInfo;

    invoke-direct/range {v28 .. v28}, Lcom/android/ims/ImsSsInfo;-><init>()V

    invoke-virtual {v10}, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;->getStatus()I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/ims/ImsSsInfo;->mStatus:I

    aput-object v28, v29, v22

    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationCallBarringQueried(Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsSsInfo;)V

    goto/16 :goto_0

    :cond_7
    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Lcom/android/ims/ImsSsInfo;

    move-object/from16 v30, v0

    new-instance v28, Lcom/android/ims/ImsSsInfo;

    invoke-direct/range {v28 .. v28}, Lcom/android/ims/ImsSsInfo;-><init>()V

    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getStatus()I

    move-result v31

    if-nez v31, :cond_9

    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/ims/ImsSsInfo;->mStatus:I

    :cond_8
    :goto_3
    const/16 v31, 0x0

    aput-object v28, v30, v31

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "success callback Query Anonymous CB, status= "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/ims/ImsSsInfo;->mStatus:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationCallBarringQueried(Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsSsInfo;)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getStatus()I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_8

    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/ims/ImsSsInfo;->mStatus:I

    goto :goto_3

    :cond_a
    const-string/jumbo v31, "Null response received for Query CB!"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    new-instance v34, Lcom/android/ims/ImsReasonInfo;

    const/16 v35, 0x324

    const/16 v36, 0x0

    invoke-direct/range {v34 .. v36}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    :pswitch_1
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    if-gez v31, :cond_b

    const-string/jumbo v31, "Invalid message id received in handleMessage."

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_b
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    if-eqz v31, :cond_c

    const-string/jumbo v31, "Update CB error"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Lorg/codeaurora/ims/ImsUtImpl;->-wrap0(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Lcom/android/ims/ImsReasonInfo;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v31, v0

    if-eqz v31, :cond_e

    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasErrorDetails()Z

    move-result v31

    if-eqz v31, :cond_d

    const-string/jumbo v31, "SuppSvcResponse has failure for CB update."

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    const/16 v34, 0x324

    move-object/from16 v0, v26

    move/from16 v1, v34

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsCallUtils;->getImsReasonInfo(Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;I)Lcom/android/ims/ImsReasonInfo;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    return-void

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    if-gez v31, :cond_f

    const-string/jumbo v31, "Invalid message id received in handleMessage."

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_f
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    if-eqz v31, :cond_13

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v31, v0

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_11

    const-string/jumbo v31, "Update CF error"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_10
    :goto_4
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v31, v0

    if-eqz v31, :cond_12

    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasErrorDetails()Z

    move-result v31

    if-eqz v31, :cond_0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "SuppSvcResponse has failure for msg.what= "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    const/16 v34, 0x324

    move-object/from16 v0, v26

    move/from16 v1, v34

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsCallUtils;->getImsReasonInfo(Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;I)Lcom/android/ims/ImsReasonInfo;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    :cond_11
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v31, v0

    const/16 v32, 0x4

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_10

    const-string/jumbo v31, "Update CW error"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :cond_12
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Lorg/codeaurora/ims/ImsUtImpl;->-wrap0(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Lcom/android/ims/ImsReasonInfo;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    :cond_13
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Success callback called for msg.what= "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    if-gez v31, :cond_14

    const-string/jumbo v31, "Invalid message id received in handleMessage."

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_14
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    if-eqz v31, :cond_15

    const-string/jumbo v31, "Query CF error"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Lorg/codeaurora/ims/ImsUtImpl;->-wrap0(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Lcom/android/ims/ImsReasonInfo;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    :cond_15
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v31, v0

    if-eqz v31, :cond_22

    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    instance-of v0, v0, [Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    move/from16 v31, v0

    if-eqz v31, :cond_16

    const-string/jumbo v31, "Handle CFUT response"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1}, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->handleCFUTResponse(Landroid/os/AsyncResult;Landroid/os/Message;)V

    return-void

    :cond_16
    iget-object v13, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, [Lcom/android/internal/telephony/CallForwardInfo;

    array-length v0, v13

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_17

    const-string/jumbo v31, "CallForwardInfo[] has no elements!"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    new-instance v34, Lcom/android/ims/ImsReasonInfo;

    const/16 v35, 0x324

    const/16 v36, 0x0

    invoke-direct/range {v34 .. v36}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    return-void

    :cond_17
    const/4 v5, 0x0

    array-length v0, v13

    move/from16 v31, v0

    move/from16 v0, v31

    new-array v7, v0, [Lcom/android/ims/ImsCallForwardInfo;

    const/16 v21, 0x0

    :goto_5
    array-length v0, v13

    move/from16 v31, v0

    move/from16 v0, v21

    move/from16 v1, v31

    if-ge v0, v1, :cond_21

    aget-object v12, v13, v21

    new-instance v6, Lcom/android/ims/ImsCallForwardInfo;

    invoke-direct {v6}, Lcom/android/ims/ImsCallForwardInfo;-><init>()V

    iget v0, v12, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_18

    const/16 v31, 0x1

    move/from16 v0, v31

    iput v0, v6, Lcom/android/ims/ImsCallForwardInfo;->mStatus:I

    :goto_6
    iget v0, v12, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    move/from16 v31, v0

    if-nez v31, :cond_1a

    const/16 v31, 0x0

    move/from16 v0, v31

    iput v0, v6, Lcom/android/ims/ImsCallForwardInfo;->mCondition:I

    :goto_7
    if-eqz v5, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    new-instance v34, Lcom/android/ims/ImsReasonInfo;

    const/16 v35, 0x324

    const/16 v36, 0x0

    invoke-direct/range {v34 .. v36}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    return-void

    :cond_18
    iget v0, v12, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    move/from16 v31, v0

    if-nez v31, :cond_19

    const/16 v31, 0x0

    move/from16 v0, v31

    iput v0, v6, Lcom/android/ims/ImsCallForwardInfo;->mStatus:I

    goto :goto_6

    :cond_19
    const/4 v5, 0x1

    const-string/jumbo v31, "Bad status in Query CF response."

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    :cond_1a
    iget v0, v12, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1b

    const/16 v31, 0x1

    move/from16 v0, v31

    iput v0, v6, Lcom/android/ims/ImsCallForwardInfo;->mCondition:I

    goto :goto_7

    :cond_1b
    iget v0, v12, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    move/from16 v31, v0

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1c

    const/16 v31, 0x2

    move/from16 v0, v31

    iput v0, v6, Lcom/android/ims/ImsCallForwardInfo;->mCondition:I

    iget v0, v12, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    move/from16 v31, v0

    move/from16 v0, v31

    iput v0, v6, Lcom/android/ims/ImsCallForwardInfo;->mTimeSeconds:I

    goto :goto_7

    :cond_1c
    iget v0, v12, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    move/from16 v31, v0

    const/16 v32, 0x3

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1d

    const/16 v31, 0x3

    move/from16 v0, v31

    iput v0, v6, Lcom/android/ims/ImsCallForwardInfo;->mCondition:I

    goto/16 :goto_7

    :cond_1d
    iget v0, v12, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    move/from16 v31, v0

    const/16 v32, 0x4

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1e

    const/16 v31, 0x4

    move/from16 v0, v31

    iput v0, v6, Lcom/android/ims/ImsCallForwardInfo;->mCondition:I

    goto/16 :goto_7

    :cond_1e
    iget v0, v12, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    move/from16 v31, v0

    const/16 v32, 0x5

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1f

    const/16 v31, 0x5

    move/from16 v0, v31

    iput v0, v6, Lcom/android/ims/ImsCallForwardInfo;->mCondition:I

    goto/16 :goto_7

    :cond_1f
    const/4 v5, 0x1

    const-string/jumbo v31, "Bad reason in Query CF response."

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_20
    iget v0, v12, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    move/from16 v31, v0

    move/from16 v0, v31

    iput v0, v6, Lcom/android/ims/ImsCallForwardInfo;->mToA:I

    new-instance v31, Ljava/lang/String;

    iget-object v0, v12, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-direct/range {v31 .. v32}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    iput-object v0, v6, Lcom/android/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    iget v0, v12, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    move/from16 v31, v0

    move/from16 v0, v31

    iput v0, v6, Lcom/android/ims/ImsCallForwardInfo;->mServiceClass:I

    aput-object v6, v7, v21

    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_5

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2, v7}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationCallForwardQueried(Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsCallForwardInfo;)V

    goto/16 :goto_0

    :cond_22
    const-string/jumbo v31, "Null response received for Query CF!"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    new-instance v34, Lcom/android/ims/ImsReasonInfo;

    const/16 v35, 0x324

    const/16 v36, 0x0

    invoke-direct/range {v34 .. v36}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    if-gez v31, :cond_23

    const-string/jumbo v31, "Invalid message id received in handleMessage."

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_23
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    if-eqz v31, :cond_24

    const-string/jumbo v31, "Query CW error"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Lorg/codeaurora/ims/ImsUtImpl;->-wrap0(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Lcom/android/ims/ImsReasonInfo;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    :cond_24
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v31, v0

    if-eqz v31, :cond_28

    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [I

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v9, v0, [Lcom/android/ims/ImsSsInfo;

    new-instance v8, Lcom/android/ims/ImsSsInfo;

    invoke-direct {v8}, Lcom/android/ims/ImsSsInfo;-><init>()V

    const/16 v31, 0x0

    aget v31, v20, v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_26

    const/16 v31, 0x1

    aget v31, v20, v31

    and-int/lit8 v31, v31, 0x1

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_25

    const/16 v31, 0x1

    move/from16 v0, v31

    iput v0, v8, Lcom/android/ims/ImsSsInfo;->mStatus:I

    :goto_8
    const/16 v31, 0x0

    aput-object v8, v9, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2, v9}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationCallWaitingQueried(Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsSsInfo;)V

    goto/16 :goto_0

    :cond_25
    const/16 v31, 0x0

    move/from16 v0, v31

    iput v0, v8, Lcom/android/ims/ImsSsInfo;->mStatus:I

    goto :goto_8

    :cond_26
    const/16 v31, 0x0

    aget v31, v20, v31

    if-nez v31, :cond_27

    const/16 v31, 0x0

    move/from16 v0, v31

    iput v0, v8, Lcom/android/ims/ImsSsInfo;->mStatus:I

    goto :goto_8

    :cond_27
    const-string/jumbo v31, "No service status received for CallWaitingInfo."

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    new-instance v34, Lcom/android/ims/ImsReasonInfo;

    const/16 v35, 0x324

    const/16 v36, 0x0

    invoke-direct/range {v34 .. v36}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    return-void

    :cond_28
    const-string/jumbo v31, "Null response received for Query CW!"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    new-instance v34, Lcom/android/ims/ImsReasonInfo;

    const/16 v35, 0x324

    const/16 v36, 0x0

    invoke-direct/range {v34 .. v36}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    if-gez v31, :cond_29

    const-string/jumbo v31, "Invalid message id received in handleMessage."

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_29
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    if-eqz v31, :cond_2b

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v31, v0

    const/16 v32, 0x5

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_2a

    const-string/jumbo v31, "Query CLIR error"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2a
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Lorg/codeaurora/ims/ImsUtImpl;->-wrap0(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Lcom/android/ims/ImsReasonInfo;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    :cond_2b
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, [I

    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v31, "queryClir"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string/jumbo v31, "Calling success callback for Query CLIR."

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v15, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v15, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    if-gez v31, :cond_2c

    const-string/jumbo v31, "Invalid message id received in handleMessage."

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_2c
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    if-eqz v31, :cond_2d

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Error for Query Event= "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    invoke-virtual {v15}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    const/16 v34, 0x324

    move-object/from16 v0, v26

    move/from16 v1, v34

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsCallUtils;->getImsReasonInfo(Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;I)Lcom/android/ims/ImsReasonInfo;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    :cond_2d
    if-eqz v15, :cond_0

    new-instance v28, Lcom/android/ims/ImsSsInfo;

    invoke-direct/range {v28 .. v28}, Lcom/android/ims/ImsSsInfo;-><init>()V

    invoke-virtual {v15}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->getClipStatus()I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/ims/ImsSsInfo;->mStatus:I

    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v31, "imsSsInfo"

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Success callback on Query event= "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2, v14}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_7
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lorg/codeaurora/ims/ImsQmiIF$Colr;

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    if-gez v31, :cond_2e

    const-string/jumbo v31, "Invalid message id received in handleMessage."

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_2e
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    if-eqz v31, :cond_2f

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Error for Query Event= "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    invoke-virtual/range {v18 .. v18}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    const/16 v34, 0x324

    move-object/from16 v0, v26

    move/from16 v1, v34

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsCallUtils;->getImsReasonInfo(Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;I)Lcom/android/ims/ImsReasonInfo;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    :cond_2f
    if-eqz v18, :cond_0

    new-instance v28, Lcom/android/ims/ImsSsInfo;

    invoke-direct/range {v28 .. v28}, Lcom/android/ims/ImsSsInfo;-><init>()V

    invoke-virtual/range {v18 .. v18}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->getPresentation()I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/ims/ImsSsInfo;->mStatus:I

    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v31, "imsSsInfo"

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Success callback on Query event= "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2, v14}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_8
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    if-gez v31, :cond_30

    const-string/jumbo v31, "Invalid message id received in handleMessage."

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_30
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    if-eqz v31, :cond_31

    const-string/jumbo v31, "Query COLP error"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Lorg/codeaurora/ims/ImsUtImpl;->-wrap0(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Lcom/android/ims/ImsReasonInfo;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    :cond_31
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasErrorDetails()Z

    move-result v31

    if-eqz v31, :cond_32

    const-string/jumbo v31, "SuppSvcResponse has failure for COLP query."

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    const/16 v34, 0x324

    move-object/from16 v0, v26

    move/from16 v1, v34

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsCallUtils;->getImsReasonInfo(Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;I)Lcom/android/ims/ImsReasonInfo;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    :cond_32
    new-instance v28, Lcom/android/ims/ImsSsInfo;

    invoke-direct/range {v28 .. v28}, Lcom/android/ims/ImsSsInfo;-><init>()V

    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasStatus()Z

    move-result v31

    if-eqz v31, :cond_0

    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getStatus()I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/ims/ImsSsInfo;->mStatus:I

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Service= "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, " status= "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/ims/ImsSsInfo;->mStatus:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v31, "imsSsInfo"

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v31, "Success callback called for Query COLP."

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2, v14}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_9
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    if-gez v31, :cond_33

    const-string/jumbo v31, "Invalid message id received in handleMessage."

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_33
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    if-eqz v31, :cond_38

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v31, v0

    const/16 v32, 0x6

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_35

    const-string/jumbo v31, "Update CLIR error"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_34
    :goto_9
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Lorg/codeaurora/ims/ImsUtImpl;->-wrap0(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Lcom/android/ims/ImsReasonInfo;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    :cond_35
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v31, v0

    const/16 v32, 0x8

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_36

    const-string/jumbo v31, "Update CLIP error"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_9

    :cond_36
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v31, v0

    const/16 v32, 0xa

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_37

    const-string/jumbo v31, "Update COLR error"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_9

    :cond_37
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v31, v0

    const/16 v32, 0xc

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_34

    const-string/jumbo v31, "Update COLP error"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_9

    :cond_38
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v31, v0

    if-eqz v31, :cond_3c

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v31, v0

    const/16 v32, 0x7

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_39

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v31, v0

    const/16 v32, 0xb

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_3b

    :cond_39
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasErrorDetails()Z

    move-result v31

    if-eqz v31, :cond_3a

    const-string/jumbo v31, "SuppSvcResponse has failure for CLIP/COLP update."

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    const/16 v34, 0x324

    move-object/from16 v0, v26

    move/from16 v1, v34

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsCallUtils;->getImsReasonInfo(Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;I)Lcom/android/ims/ImsReasonInfo;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V

    goto/16 :goto_0

    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V

    goto/16 :goto_0

    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_9
        :pswitch_6
        :pswitch_9
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
