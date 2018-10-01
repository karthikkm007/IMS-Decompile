.class public Lorg/codeaurora/ims/ImsCallModification;
.super Ljava/lang/Object;
.source "ImsCallModification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;,
        Lorg/codeaurora/ims/ImsCallModification$PauseState;
    }
.end annotation


# static fields
.field static final EVENT_AVP_UPGRADE_DONE:I = 0x5

.field static final EVENT_MODIFY_CALL_CONFIRM_DONE:I = 0x8

.field static final EVENT_MODIFY_CALL_INITIATE_DONE:I = 0x6

.field static final EVENT_VIDEO_PAUSE_DONE:I = 0x7

.field static final EVENT_VIDEO_PAUSE_RETRY:I = 0x9

.field private static final MAX_MULTITASK_RETRIES:I = 0x1

.field static final PAUSE_DELAY_MILLIS:I = 0xbb8


# instance fields
.field private callModifyRequest:Lorg/codeaurora/ims/CallModify;

.field private mAvpCallType:I

.field private mAvpRetryAllowed:Z

.field private mCi:Lorg/codeaurora/ims/ImsSenderRxr;

.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field public mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

.field public mIndex:I

.field private mIsLocallyPaused:Z

.field private mIsVideoPauseRequested:Z

.field private mMultiTaskRetryCount:I

.field private mPendingVTMultitask:Lorg/codeaurora/ims/ImsCallModification$PauseState;

.field private mPrevVideoCallType:I


# direct methods
.method static synthetic -get0(Lorg/codeaurora/ims/ImsCallModification;)Lorg/codeaurora/ims/CallModify;
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    return-object v0
.end method

.method static synthetic -get1(Lorg/codeaurora/ims/ImsCallModification;)I
    .locals 1

    iget v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mMultiTaskRetryCount:I

    return v0
.end method

.method static synthetic -get2(Lorg/codeaurora/ims/ImsCallModification;)Lorg/codeaurora/ims/ImsCallModification$PauseState;
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mPendingVTMultitask:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    return-object v0
.end method

.method static synthetic -set0(Lorg/codeaurora/ims/ImsCallModification;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsLocallyPaused:Z

    return p1
.end method

.method static synthetic -set1(Lorg/codeaurora/ims/ImsCallModification;I)I
    .locals 0

    iput p1, p0, Lorg/codeaurora/ims/ImsCallModification;->mMultiTaskRetryCount:I

    return p1
.end method

.method static synthetic -wrap0(Lorg/codeaurora/ims/ImsCallModification;)Z
    .locals 1

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->shouldRetryVideoPause()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lorg/codeaurora/ims/ImsCallModification;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->clearPendingModify()V

    return-void
.end method

.method static synthetic -wrap2(Lorg/codeaurora/ims/ImsCallModification;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallModification;->createAndSendMultiTaskRequest(I)V

    return-void
.end method

.method static synthetic -wrap3(Lorg/codeaurora/ims/ImsCallModification;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->processPendingVTMultitask()V

    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/ImsCallSessionImpl;Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;)V
    .locals 3

    const/16 v2, 0xa

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mIndex:I

    iput v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mPrevVideoCallType:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mAvpRetryAllowed:Z

    iput v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mAvpCallType:I

    iput v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mMultiTaskRetryCount:I

    sget-object v0, Lorg/codeaurora/ims/ImsCallModification$PauseState;->NONE:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mPendingVTMultitask:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsLocallyPaused:Z

    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsVideoPauseRequested:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ImsCallModification instance created imsCallSessionImpl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lorg/codeaurora/ims/ImsCallModification;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iput-object p2, p0, Lorg/codeaurora/ims/ImsCallModification;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    new-instance v0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;-><init>(Lorg/codeaurora/ims/ImsCallModification;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private areCallTypesSame(I)Z
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private canModifyForCarrierOne()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->getInstance()Lcom/qualcomm/ims/vt/LowBatteryHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->isLowBattery()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private clearPendingModify()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "clearPendingModify imsconn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    return-void
.end method

.method private clearPendingVTMultiTask()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "clearPendingVTMultiTask imsconn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lorg/codeaurora/ims/ImsCallModification$PauseState;->NONE:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mPendingVTMultitask:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    return-void
.end method

.method private createAndSendMultiTaskRequest(I)V
    .locals 3

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsCallModification;->modifyCallInitiate(Landroid/os/Message;ILjava/util/Map;)V

    return-void
.end method

.method public static hasError(Lorg/codeaurora/ims/CallModify;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/codeaurora/ims/CallModify;->error()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isIndexValid()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isOldAndNewPauseRequestSame()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isOldAndNewPauseRequestSame Unexpectedly callModifyRequest:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return v0

    :cond_0
    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsLocallyPaused:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mPendingVTMultitask:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    sget-object v2, Lorg/codeaurora/ims/ImsCallModification$PauseState;->PAUSE:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isOldAndNewPauseRequestSame "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return v0

    :cond_1
    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsLocallyPaused:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mPendingVTMultitask:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    sget-object v2, Lorg/codeaurora/ims/ImsCallModification$PauseState;->RESUME:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVTMultitaskRequest(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidCallModifyConfirmRequest(I)Z
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    if-nez v1, :cond_0

    const-string/jumbo v1, "callModifyRequest is null"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return v2

    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    iget-object v1, v1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v1, v1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    if-ne v1, v3, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0

    :cond_3
    if-eq p1, v3, :cond_1

    if-eqz p1, :cond_1

    :cond_4
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    iget-object v1, v1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v1, v1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    if-ne p1, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private modifyCallInitiate(Landroid/os/Message;ILjava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Message;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p2}, Lorg/codeaurora/ims/ImsCallUtils;->isValidRilModifyCallType(I)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "modifyCallInitiate not a Valid RilCallType"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lorg/codeaurora/ims/CallDetails;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallDomain()I

    move-result v2

    invoke-static {p3}, Lorg/codeaurora/ims/CallDetails;->getExtrasFromMap(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p2, v2, v3}, Lorg/codeaurora/ims/CallDetails;-><init>(II[Ljava/lang/String;)V

    new-instance v1, Lorg/codeaurora/ims/CallModify;

    iget v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mIndex:I

    invoke-direct {v1, v0, v2}, Lorg/codeaurora/ims/CallModify;-><init>(Lorg/codeaurora/ims/CallDetails;I)V

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Overwriting callModifyRequest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " with callModify:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    iput-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-virtual {v2, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->modifyCallInitiate(Landroid/os/Message;Lorg/codeaurora/ims/CallModify;)V

    return-void
.end method

.method private notifyVideoPaused(I)V
    .locals 2

    new-instance v0, Landroid/telecom/VideoProfile;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Landroid/telecom/VideoProfile;-><init>(II)V

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getImsVideoCallProviderImpl()Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    return-void
.end method

.method private pendingPauseStatetoRilCallType()I
    .locals 3

    const/16 v0, 0xa

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mPendingVTMultitask:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    sget-object v2, Lorg/codeaurora/ims/ImsCallModification$PauseState;->PAUSE:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    if-ne v1, v2, :cond_1

    const/4 v0, 0x4

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mPendingVTMultitask:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    sget-object v2, Lorg/codeaurora/ims/ImsCallModification$PauseState;->RESUME:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    if-ne v1, v2, :cond_0

    iget v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mPrevVideoCallType:I

    goto :goto_0
.end method

.method private processPendingVTMultitask()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "processPendingVTMultitask mPendingVTMultitask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mPendingVTMultitask:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->isOldAndNewPauseRequestSame()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "Old and new Pause Request is Same so clearing Pending VT multitask"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->clearPendingVTMultiTask()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mPendingVTMultitask:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    sget-object v1, Lorg/codeaurora/ims/ImsCallModification$PauseState;->NONE:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->pendingPauseStatetoRilCallType()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallModification;->createAndSendMultiTaskRequest(I)V

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->clearPendingVTMultiTask()V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "processPendingVTMultitask callModifyRequest not null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private retryAvpUpgrade(Z)V
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "retryAvpUpgrade: AVPF failed so retrying using AVP. mAvpCallType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mAvpCallType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " shouldNotifyUser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mIndex:I

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mAvpCallType:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/codeaurora/ims/ImsCallModification;->modifyCallInitiate(Landroid/os/Message;ILjava/util/Map;)V

    return-void
.end method

.method private shouldRetryVideoPause()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mMultiTaskRetryCount:I

    if-gt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private toRilCallType(I)I
    .locals 3

    const/16 v0, 0xa

    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    iget v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mPrevVideoCallType:I

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toRilCallType unexpected calltype for VT multitask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private triggerOrQueueVTMultitask(I)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "triggerOrQueueVTMultitask callType= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " conn= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x6

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    sget-object v1, Lorg/codeaurora/ims/ImsCallModification$PauseState;->PAUSE:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    :goto_1
    iput-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mPendingVTMultitask:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsVideoPauseRequested:Z

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->processPendingVTMultitask()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    sget-object v1, Lorg/codeaurora/ims/ImsCallModification$PauseState;->RESUME:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    goto :goto_1
.end method

.method private updatePreviousVTCallType()V
    .locals 3

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    :cond_0
    :goto_0
    iput v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mPrevVideoCallType:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Updating mPrevVideoCallType to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mPrevVideoCallType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0
.end method

.method private validateIncomingModifyConnectionType(I)Z
    .locals 6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "validateIncomingModifyConnectionType newCallType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallModification;->areCallTypesSame(I)Z

    move-result v3

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->isIndexValid()Z

    move-result v0

    const/4 v1, 0x0

    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallModification;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->allowVideoCallsInLowBattery(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->getInstance()Lcom/qualcomm/ims/vt/LowBatteryHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->isLowBattery()Z

    move-result v1

    :cond_0
    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    const/4 v2, 0x0

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "validateIncomingModifyConnectionType modifyToCurrCallType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " isIndexValid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " isLowBattery = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return v2

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private validateOutgoingModifyConnectionType(Landroid/os/Message;I)Z
    .locals 8

    const/4 v7, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "validateOutgoingModifyConnectionType newCallType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsCallModification;->areCallTypesSame(I)Z

    move-result v4

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->isIndexValid()Z

    move-result v1

    invoke-static {}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->getInstance()Lcom/qualcomm/ims/vt/LowBatteryHandler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->isLowBattery()Z

    move-result v2

    if-eqz v1, :cond_0

    if-eqz v4, :cond_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {}, Lorg/codeaurora/ims/ImsCallUtils;->isCarrierOneSupported()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->canModifyForCarrierOne()Z

    move-result v5

    and-int/2addr v3, v5

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "validateOutgoingModifyConnectionType modifyToCurrCallType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " isIndexValid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " isLowBattery = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_4

    return v3

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    const/4 v5, 0x0

    :goto_2
    and-int/2addr v3, v5

    goto :goto_1

    :cond_3
    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    if-nez v3, :cond_6

    const/4 v0, 0x0

    if-eqz v2, :cond_7

    new-instance v0, Lorg/codeaurora/ims/ImsRilException;

    const-string/jumbo v5, "Low Battery"

    const/16 v6, 0x32

    invoke-direct {v0, v6, v5}, Lorg/codeaurora/ims/ImsRilException;-><init>(ILjava/lang/String;)V

    :cond_5
    :goto_3
    invoke-static {p1, v7, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    move-result-object v5

    iput-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_6
    return v3

    :cond_7
    if-nez v4, :cond_5

    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v5, "Can\'t modify call."

    invoke-direct {v0, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    goto :goto_3
.end method


# virtual methods
.method public acceptConnectionTypeChange(ILjava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Confirming call type change request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallModification;->isValidCallModifyConfirmRequest(I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "acceptConnectionTypeChange: MODIFY_CALL_CONFIRM with invalid calltype "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallModification;->rejectConnectionTypeChange()V

    return-void

    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    iget-object v1, v1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iput p1, v1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    if-eqz p2, :cond_1

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    iget-object v1, v1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v1, p2}, Lorg/codeaurora/ims/CallDetails;->setExtrasFromMap(Ljava/util/Map;)V

    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    invoke-virtual {v1, v0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->modifyCallConfirm(Landroid/os/Message;Lorg/codeaurora/ims/CallModify;)V

    :cond_2
    return-void
.end method

.method public changeConnectionType(Landroid/os/Message;ILjava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Message;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "changeConnectionType  newCallType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " newExtras= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/codeaurora/ims/ImsCallModification;->mIndex:I

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsCallModification;->isVTMultitaskRequest(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsCallModification;->triggerOrQueueVTMultitask(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallModification;->isAvpRetryAllowed()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p2}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithDir(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iput p2, p0, Lorg/codeaurora/ims/ImsCallModification;->mAvpCallType:I

    :cond_2
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    invoke-virtual {v3, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    if-nez v3, :cond_3

    invoke-direct {p0, v2, p2}, Lorg/codeaurora/ims/ImsCallModification;->validateOutgoingModifyConnectionType(Landroid/os/Message;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v2, p2, p3}, Lorg/codeaurora/ims/ImsCallModification;->modifyCallInitiate(Landroid/os/Message;ILjava/util/Map;)V

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "videocall changeConnectionType: not invoking modifyCallInitiate as there is pending callModifyRequest="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "Pending callModifyRequest so not sending modify request down"

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-static {p1, v5, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public isAvpRetryAllowed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mAvpRetryAllowed:Z

    return v0
.end method

.method public isLocallyPaused()Z
    .locals 1

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsLocallyPaused:Z

    return v0
.end method

.method public isVideoPauseRequested()Z
    .locals 1

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsVideoPauseRequested:Z

    return v0
.end method

.method public onReceivedModifyCall(Lorg/codeaurora/ims/CallModify;)V
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceivedCallModify("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/codeaurora/ims/CallModify;->error()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    iget v2, v2, Lorg/codeaurora/ims/CallModify;->call_index:I

    iget v3, p1, Lorg/codeaurora/ims/CallModify;->call_index:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    iget-object v2, v2, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v2, v2, Lorg/codeaurora/ims/CallDetails;->call_type:I

    iget-object v3, p1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v3, v3, Lorg/codeaurora/ims/CallDetails;->call_type:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    iget-object v2, v2, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v2, v2, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    iget-object v3, p1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v3, v3, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    invoke-virtual {v2}, Lorg/codeaurora/ims/CallModify;->error()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceivedModifyCall: Call Modify request not found.Dropping the Modify Call Request Failed. Cached Request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", Received Request:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-static {}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->getInstance()Lcom/qualcomm/ims/vt/LowBatteryHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->isLowBattery()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/codeaurora/ims/ImsCallUtils;->isCarrierOneSupported()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v2, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifyUnsolCallModify(Lorg/codeaurora/ims/CallModify;)V

    :cond_4
    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallModification;->hasError(Lorg/codeaurora/ims/CallModify;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->clearPendingModify()V

    :cond_5
    return-void

    :cond_6
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    iget v3, p1, Lorg/codeaurora/ims/CallModify;->error:I

    iput v3, v2, Lorg/codeaurora/ims/CallModify;->error:I

    const/4 v1, 0x1

    goto :goto_0

    :cond_7
    iget-object v2, p1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v2, v2, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsCallModification;->validateIncomingModifyConnectionType(I)Z

    move-result v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    if-nez v2, :cond_8

    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    :goto_2
    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallModification;->rejectConnectionTypeChange()V

    goto :goto_0

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "videocall onReceivedModifyCall: not notifying user about incoming modify call request as there is pending callModifyRequest="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_2

    :cond_9
    const/16 v2, 0x32

    iput v2, p1, Lorg/codeaurora/ims/CallModify;->error:I

    goto :goto_1
.end method

.method public rejectConnectionTypeChange()V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    if-nez v3, :cond_0

    const-string/jumbo v3, "rejectConnectionTypeChange callModifyRequest is null"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    invoke-virtual {v3}, Lorg/codeaurora/ims/CallModify;->error()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "rejectConnectionTypeChange callModifyRequest timed out."

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->clearPendingModify()V

    return-void

    :cond_1
    new-instance v0, Lorg/codeaurora/ims/CallDetails;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v3

    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallDomain()I

    move-result v4

    invoke-direct {v0, v3, v4, v5}, Lorg/codeaurora/ims/CallDetails;-><init>(II[Ljava/lang/String;)V

    new-instance v1, Lorg/codeaurora/ims/CallModify;

    invoke-direct {v1}, Lorg/codeaurora/ims/CallModify;-><init>()V

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lorg/codeaurora/ims/CallModify;->call_index:I

    new-instance v3, Lorg/codeaurora/ims/CallDetails;

    invoke-direct {v3, v0}, Lorg/codeaurora/ims/CallDetails;-><init>(Lorg/codeaurora/ims/CallDetails;)V

    iput-object v3, v1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Rejecting Change request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " keep as "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallModification;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-virtual {v3, v2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->modifyCallConfirm(Landroid/os/Message;Lorg/codeaurora/ims/CallModify;)V

    return-void
.end method

.method public update(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 7

    const/4 v5, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "update dc="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallUtils;->isActive(Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v4, v4, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-static {v4}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithDir(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iput-boolean v5, p0, Lorg/codeaurora/ims/ImsCallModification;->mAvpRetryAllowed:Z

    :cond_0
    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v4, v4, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-static {v4}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "videocall: update: Not a videocall CASE"

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->clearPendingVTMultiTask()V

    iput v5, p0, Lorg/codeaurora/ims/ImsCallModification;->mMultiTaskRetryCount:I

    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x9

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v4, p1}, Lorg/codeaurora/ims/ImsCallUtils;->isAvpRetryDialing(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v4

    iput v4, p0, Lorg/codeaurora/ims/ImsCallModification;->mAvpCallType:I

    :cond_2
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v4, p1}, Lorg/codeaurora/ims/ImsCallUtils;->isAvpRetryUpgrade(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v1

    if-nez v0, :cond_3

    if-eqz v1, :cond_7

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "videocall AVP RETRY CASE dc= "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " conn= "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v4

    sget-object v6, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v4, v6, :cond_6

    const/4 v4, 0x1

    :goto_0
    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsCallModification;->retryAvpUpgrade(Z)V

    :cond_4
    :goto_1
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->updatePreviousVTCallType()V

    new-instance v2, Lorg/codeaurora/ims/CallDetails;

    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-direct {v2, v4}, Lorg/codeaurora/ims/CallDetails;-><init>(Lorg/codeaurora/ims/CallDetails;)V

    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v4}, Lorg/codeaurora/ims/ImsCallUtils;->canVideoPause(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z

    move-result v4

    if-nez v4, :cond_5

    iput-boolean v5, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsLocallyPaused:Z

    iput-boolean v5, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsVideoPauseRequested:Z

    :cond_5
    return-void

    :cond_6
    move v4, v5

    goto :goto_0

    :cond_7
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v4, p1}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoPaused(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string/jumbo v4, "videocall Video Paused CASE"

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v4, p1}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoResumed(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "videocall Video Resumed CASE"

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method
