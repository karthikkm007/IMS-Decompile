.class public Lcom/qualcomm/ims/vt/ImsVideoGlobals;
.super Ljava/lang/Object;
.source "ImsVideoGlobals.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static sInstance:Lcom/qualcomm/ims/vt/ImsVideoGlobals;


# instance fields
.field private mCameraController:Lcom/qualcomm/ims/vt/CameraController;

.field private mContext:Landroid/content/Context;

.field private mLowBatteryHandler:Lcom/qualcomm/ims/vt/LowBatteryHandler;

.field private mMediaController:Lcom/qualcomm/ims/vt/MediaController;

.field private mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "VideoCall_ImsVideoGlobals"

    sput-object v0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->sInstance:Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    return-void
.end method

.method private constructor <init>(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    iput-object p2, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->getInstance()Lcom/qualcomm/ims/vt/ImsMedia;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/qualcomm/ims/vt/CameraController;->init(Landroid/content/Context;Lcom/qualcomm/ims/vt/ImsMedia;)Lcom/qualcomm/ims/vt/CameraController;

    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->getInstance()Lcom/qualcomm/ims/vt/ImsMedia;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/qualcomm/ims/vt/MediaController;->init(Landroid/content/Context;Lcom/qualcomm/ims/vt/ImsMedia;)V

    invoke-static {p1, p2}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->init(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;)Lcom/qualcomm/ims/vt/LowBatteryHandler;

    invoke-static {}, Lcom/qualcomm/ims/vt/CameraController;->getInstance()Lcom/qualcomm/ims/vt/CameraController;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mCameraController:Lcom/qualcomm/ims/vt/CameraController;

    invoke-static {}, Lcom/qualcomm/ims/vt/MediaController;->getInstance()Lcom/qualcomm/ims/vt/MediaController;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mMediaController:Lcom/qualcomm/ims/vt/MediaController;

    invoke-static {}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->getInstance()Lcom/qualcomm/ims/vt/LowBatteryHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mLowBatteryHandler:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mMediaController:Lcom/qualcomm/ims/vt/MediaController;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->addListener(Lorg/codeaurora/ims/ICallListListener;)V

    return-void
.end method

.method private getImsVideoCallProviderImpl(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getImsVideoCallProviderImpl()Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/qualcomm/ims/vt/ImsVideoGlobals;
    .locals 3

    const-class v1, Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->sInstance:Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "ImsVideoGlobals: Multiple initializaiton."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->sInstance:Lcom/qualcomm/ims/vt/ImsVideoGlobals;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized init(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;)V
    .locals 3

    const-class v1, Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    monitor-enter v1

    if-nez p0, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Default subscription is null."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->sInstance:Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    if-nez v0, :cond_1

    new-instance v0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    invoke-direct {v0, p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;-><init>(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;)V

    sput-object v0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->sInstance:Lcom/qualcomm/ims/vt/ImsVideoGlobals;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "ImsVideoGlobals: Multiple initializaiton."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method findSessionbyMediaId(I)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 1

    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->findSessionByMediaId(I)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    return-object v0
.end method

.method findVideoCallProviderbyMediaId(I)Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    .locals 1

    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->findSessionByMediaId(I)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getImsVideoCallProviderImpl(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v0

    return-object v0
.end method

.method getActiveCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 3

    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Multiple Active Calls: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->log(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsCallSessionImpl;

    goto :goto_0
.end method

.method getActiveCallVideoProvider()Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    .locals 1

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getActiveCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getImsVideoCallProviderImpl(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v0

    return-object v0
.end method

.method getActiveOrBackgroundCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 1

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getActiveCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getBackgroundCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method getActiveOrBackgroundCallVideoProvider()Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    .locals 1

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getActiveOrBackgroundCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getImsVideoCallProviderImpl(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v0

    return-object v0
.end method

.method getActiveOrOutgoingCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 1

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getActiveCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getOutgoingCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method getActiveOrOutgoingCallVideoProvider()Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    .locals 1

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getActiveOrOutgoingCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getImsVideoCallProviderImpl(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v0

    return-object v0
.end method

.method getBackgroundCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 3

    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Multiple Background Calls: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->log(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsCallSessionImpl;

    goto :goto_0
.end method

.method getBackgroundCallVideoProvider()Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    .locals 1

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getBackgroundCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getImsVideoCallProviderImpl(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v0

    return-object v0
.end method

.method getCameraController()Lcom/qualcomm/ims/vt/CameraController;
    .locals 1

    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mCameraController:Lcom/qualcomm/ims/vt/CameraController;

    return-object v0
.end method

.method getIncomingCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 3

    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Multiple Incoming Calls: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->log(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsCallSessionImpl;

    goto :goto_0
.end method

.method getIncomingCallVideoProvider()Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    .locals 1

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getIncomingCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getImsVideoCallProviderImpl(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v0

    return-object v0
.end method

.method getMediaController()Lcom/qualcomm/ims/vt/MediaController;
    .locals 1

    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mMediaController:Lcom/qualcomm/ims/vt/MediaController;

    return-object v0
.end method

.method getOutgoingCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 3

    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Multiple Outgoing Calls: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->log(Ljava/lang/String;)V

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsCallSessionImpl;

    goto :goto_0
.end method

.method getOutgoingCallVideoProvider()Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    .locals 1

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getOutgoingCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getImsVideoCallProviderImpl(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v0

    return-object v0
.end method

.method public setActiveSub(Lorg/codeaurora/ims/ImsServiceSub;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Active subscription is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SetActiveSub, Sub # "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsServiceSub;->getSubscription()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mMediaController:Lcom/qualcomm/ims/vt/MediaController;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->removeListener(Lorg/codeaurora/ims/ICallListListener;)V

    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mLowBatteryHandler:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->removeListener(Lorg/codeaurora/ims/ICallListListener;)V

    :cond_1
    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mMediaController:Lcom/qualcomm/ims/vt/MediaController;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->addListener(Lorg/codeaurora/ims/ICallListListener;)V

    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mLowBatteryHandler:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    invoke-virtual {v0, p1}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->setActiveSub(Lorg/codeaurora/ims/ImsServiceSub;)V

    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mLowBatteryHandler:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->addListener(Lorg/codeaurora/ims/ICallListListener;)V

    return-void
.end method
