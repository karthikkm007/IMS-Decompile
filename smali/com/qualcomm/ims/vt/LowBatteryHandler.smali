.class public Lcom/qualcomm/ims/vt/LowBatteryHandler;
.super Ljava/lang/Object;
.source "LowBatteryHandler.java"

# interfaces
.implements Lorg/codeaurora/ims/ICallListListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/ims/vt/LowBatteryHandler$1;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static sInstance:Lcom/qualcomm/ims/vt/LowBatteryHandler;


# instance fields
.field private final isCarrierOneSupported:Z

.field private mBatteryLevel:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mIsLowBattery:Z

.field private mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/qualcomm/ims/vt/LowBatteryHandler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->isCarrierOneSupported:Z

    return v0
.end method

.method static synthetic -get2(Lcom/qualcomm/ims/vt/LowBatteryHandler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/qualcomm/ims/vt/LowBatteryHandler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mIsLowBattery:Z

    return v0
.end method

.method static synthetic -set0(Lcom/qualcomm/ims/vt/LowBatteryHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mIsLowBattery:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/qualcomm/ims/vt/LowBatteryHandler;Landroid/content/Intent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->isLowBattery(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/qualcomm/ims/vt/LowBatteryHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->disconnectVideoCalls()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/qualcomm/ims/vt/LowBatteryHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->updateLowBatteryStatus()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "VideoCall_LowBattery"

    sput-object v0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mIsLowBattery:Z

    invoke-static {}, Lorg/codeaurora/ims/ImsCallUtils;->isCarrierOneSupported()Z

    move-result v1

    iput-boolean v1, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->isCarrierOneSupported:Z

    new-instance v1, Lcom/qualcomm/ims/vt/LowBatteryHandler$1;

    invoke-direct {v1, p0}, Lcom/qualcomm/ims/vt/LowBatteryHandler$1;-><init>(Lcom/qualcomm/ims/vt/LowBatteryHandler;)V

    iput-object v1, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mBatteryLevel:Landroid/content/BroadcastReceiver;

    iput-object p2, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mBatteryLevel:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private disconnectVideoCalls()V
    .locals 2

    sget-object v0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "disconnectVideoCalls "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->disconnectVideoCalls(Lorg/codeaurora/ims/DriverCallIms$State;)V

    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->disconnectVideoCalls(Lorg/codeaurora/ims/DriverCallIms$State;)V

    return-void
.end method

.method private disconnectVideoCalls(Lorg/codeaurora/ims/DriverCallIms$State;)V
    .locals 5

    iget-object v2, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v2, p1}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    sget-object v2, Lcom/qualcomm/ims/vt/LowBatteryHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "disconnectVideoCalls session : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v2

    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1f9

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->terminate(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/qualcomm/ims/vt/LowBatteryHandler;
    .locals 3

    const-class v1, Lcom/qualcomm/ims/vt/LowBatteryHandler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->sInstance:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->sInstance:Lcom/qualcomm/ims/vt/LowBatteryHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "LowBatteryHandler: Not initialized"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized init(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;)Lcom/qualcomm/ims/vt/LowBatteryHandler;
    .locals 3

    const-class v1, Lcom/qualcomm/ims/vt/LowBatteryHandler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->sInstance:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/qualcomm/ims/vt/LowBatteryHandler;

    invoke-direct {v0, p0, p1}, Lcom/qualcomm/ims/vt/LowBatteryHandler;-><init>(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;)V

    sput-object v0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->sInstance:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    sget-object v0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->sInstance:Lcom/qualcomm/ims/vt/LowBatteryHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "LowBatteryHandler: Multiple initialization"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isLowBattery(Landroid/content/Intent;)Z
    .locals 3

    const-string/jumbo v1, "level"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateLowBatteryStatus()V
    .locals 1

    iget-object v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->updateLowBatteryStatus()V

    return-void
.end method


# virtual methods
.method public isLowBattery()Z
    .locals 1

    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->isCarrierOneSupported:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->allowVideoCallsInLowBattery(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mIsLowBattery:Z

    return v0
.end method

.method public onCallSessionAdded(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 4

    sget-object v1, Lcom/qualcomm/ims/vt/LowBatteryHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCallSessionAdded callSession = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->isCarrierOneSupported:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mIsLowBattery:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallUtils;->isIncomingCall(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsCallSessionImpl;

    const/16 v2, 0x1f5

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->terminate(I)V

    :cond_1
    return-void
.end method

.method public onCallSessionRemoved(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 0

    return-void
.end method

.method public setActiveSub(Lorg/codeaurora/ims/ImsServiceSub;)V
    .locals 0

    iput-object p1, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    return-void
.end method
