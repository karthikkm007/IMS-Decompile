.class public final Lorg/codeaurora/ims/ImsSenderRxr;
.super Lorg/codeaurora/ims/ImsPhoneBaseCommands;
.source "ImsSenderRxr.java"

# interfaces
.implements Lorg/codeaurora/ims/ImsPhoneCommandsInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;,
        Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;
    }
.end annotation


# static fields
.field private static final DEFAULT_WAKE_LOCK_TIMEOUT:I = 0xea60

.field static final EVENT_SEND:I = 0x1

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "ImsSenderRxr"

.field static final MAX_COMMAND_BYTES:I = 0x2000

.field private static final MSG_TAG_LENGTH:I = 0x1

.field private static final PDU_LENGTH_OFFSET:I = 0x4

.field static final RESPONSE_SOLICITED:I = 0x0

.field static final RESPONSE_UNSOLICITED:I = 0x1

.field static final SOCKET_NAME_IF:[Ljava/lang/String;

.field static final SOCKET_OPEN_RETRY_MILLIS:I = 0xfa0

.field static final TEST_MODE_SOCKET_NAME:Ljava/lang/String; = "imstestrunnersocket"

.field static sTestMode:Z


# instance fields
.field private mGeolocationRegistrants:Landroid/os/RegistrantList;

.field private mHandoverStatusRegistrants:Landroid/os/RegistrantList;

.field private mInstanceId:Ljava/lang/Integer;

.field private mIsUnsolCallListPresent:Z

.field mLastNITZTimeInfo:Ljava/lang/Object;

.field protected mModifyCallRegistrants:Landroid/os/RegistrantList;

.field protected mMwiRegistrants:Landroid/os/RegistrantList;

.field private mParticipantStatusRegistrants:Landroid/os/RegistrantList;

.field private mRadioStateRegistrations:Landroid/os/RegistrantList;

.field mReceiver:Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;

.field mReceiverThread:Ljava/lang/Thread;

.field private mRefreshConfInfoRegistrations:Landroid/os/RegistrantList;

.field mRequestMessagesPending:I

.field mRequestMessagesWaiting:I

.field mRequestsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/codeaurora/ims/IFRequest;",
            ">;"
        }
    .end annotation
.end field

.field mSender:Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;

.field mSenderThread:Landroid/os/HandlerThread;

.field mSocket:Landroid/net/LocalSocket;

.field private mSrvStatusRegistrations:Landroid/os/RegistrantList;

.field private mSsaccRegistrants:Landroid/os/RegistrantList;

.field protected mSsnRegistrant:Landroid/os/Registrant;

.field mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mTtyStatusRegistrants:Landroid/os/RegistrantList;

.field private mVoWiFiCallQualityRegistrants:Landroid/os/RegistrantList;

.field private mVopsRegistrants:Landroid/os/RegistrantList;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWakeLockTimeout:I


# direct methods
.method static synthetic -get0(Lorg/codeaurora/ims/ImsSenderRxr;)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mInstanceId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/io/InputStream;[B)I
    .locals 1

    invoke-static {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->readMessage(Ljava/io/InputStream;[B)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;
    .locals 1

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->findAndRemoveRequestFromList(I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lorg/codeaurora/ims/ImsSenderRxr;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->clearRequestsList(IZ)V

    return-void
.end method

.method static synthetic -wrap3(Lorg/codeaurora/ims/ImsSenderRxr;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->disableSrvStatus()V

    return-void
.end method

.method static synthetic -wrap4(Lorg/codeaurora/ims/ImsSenderRxr;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->releaseWakeLockIfDone()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    sput-boolean v2, Lorg/codeaurora/ims/ImsSenderRxr;->sTestMode:Z

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "qmux_radio/rild_ims0"

    aput-object v1, v0, v2

    const-string/jumbo v1, "qmux_radio/rild_ims1"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "qmux_radio/rild_ims2"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lorg/codeaurora/ims/ImsSenderRxr;->SOCKET_NAME_IF:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsPhoneBaseCommands;-><init>(Landroid/content/Context;)V

    iput-boolean v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIsUnsolCallListPresent:Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mModifyCallRegistrants:Landroid/os/RegistrantList;

    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMwiRegistrants:Landroid/os/RegistrantList;

    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mHandoverStatusRegistrants:Landroid/os/RegistrantList;

    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRefreshConfInfoRegistrations:Landroid/os/RegistrantList;

    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Landroid/os/RegistrantList;

    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mTtyStatusRegistrants:Landroid/os/RegistrantList;

    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRadioStateRegistrations:Landroid/os/RegistrantList;

    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mGeolocationRegistrants:Landroid/os/RegistrantList;

    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoWiFiCallQualityRegistrants:Landroid/os/RegistrantList;

    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsaccRegistrants:Landroid/os/RegistrantList;

    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVopsRegistrants:Landroid/os/RegistrantList;

    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mParticipantStatusRegistrants:Landroid/os/RegistrantList;

    iput v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mInstanceId:Ljava/lang/Integer;

    const-string/jumbo v4, "power"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    const-string/jumbo v4, "ImsSenderRxr"

    const/4 v5, 0x1

    invoke-virtual {v2, v5, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    const-string/jumbo v4, "ro.ril.wake_lock_timeout"

    const v5, 0xea60

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLockTimeout:I

    iput v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    iput v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    const-string/jumbo v4, "persist.qualcomm.imstestrunner"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    :cond_0
    sput-boolean v3, Lorg/codeaurora/ims/ImsSenderRxr;->sTestMode:Z

    new-instance v3, Landroid/os/HandlerThread;

    const-string/jumbo v4, "IFMsg_Sender"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSenderThread:Landroid/os/HandlerThread;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v3, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;

    invoke-direct {v3, p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/os/Looper;)V

    iput-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSender:Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;

    const-string/jumbo v3, "Starting IFMsg_Rxr"

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    new-instance v3, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;

    invoke-direct {v3, p0}, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;)V

    iput-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mReceiver:Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;

    new-instance v3, Ljava/lang/Thread;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mReceiver:Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;

    const-string/jumbo v5, "IFMsg_Rxr"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mReceiverThread:Ljava/lang/Thread;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mReceiverThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 6

    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSender:Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->removeMessages(I)V

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSender:Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSender:Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;

    iget v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLockTimeout:I

    int-to-long v4, v3

    invoke-virtual {v1, v0, v4, v5}, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private clearRequestsList(IZ)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz p2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "WAKE_LOCK_TIMEOUT  mReqPending="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " mRequestList="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/IFRequest;

    if-eqz p2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ": ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "] "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    invoke-static {v5}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lorg/codeaurora/ims/IFRequest;->onError(ILjava/lang/Object;)V

    invoke-virtual {v2}, Lorg/codeaurora/ims/IFRequest;->release()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    iput v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    iget-boolean v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIsUnsolCallListPresent:Z

    if-eqz v3, :cond_3

    iput-boolean v6, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIsUnsolCallListPresent:Z

    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mCallStateRegistrants:Landroid/os/RegistrantList;

    new-instance v4, Landroid/os/AsyncResult;

    new-instance v5, Ljava/lang/RuntimeException;

    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->errorIdToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7, v7, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_3
    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private copySrvStatusList([Lorg/codeaurora/ims/ServiceStatus;Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;)[Lorg/codeaurora/ims/ServiceStatus;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->getSrvStatusInfoCount()I

    move-result v3

    new-array p1, v3, [Lorg/codeaurora/ims/ServiceStatus;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Num of SrvUpdates = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->getSrvStatusInfoCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->getSrvStatusInfoCount()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-virtual {p2, v1}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->getSrvStatusInfo(I)Lorg/codeaurora/ims/ImsQmiIF$Info;

    move-result-object v2

    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    new-instance v3, Lorg/codeaurora/ims/ServiceStatus;

    invoke-direct {v3}, Lorg/codeaurora/ims/ServiceStatus;-><init>()V

    aput-object v3, p1, v1

    aget-object v3, p1, v1

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getIsValid()Z

    move-result v4

    iput-boolean v4, v3, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    aget-object v3, p1, v1

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getCallType()I

    move-result v4

    iput v4, v3, Lorg/codeaurora/ims/ServiceStatus;->type:I

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getAccTechStatusCount()I

    move-result v3

    if-lt v3, v6, :cond_1

    aget-object v3, p1, v1

    invoke-direct {p0, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->unpackAccTechStatus(Lorg/codeaurora/ims/ImsQmiIF$Info;Lorg/codeaurora/ims/ServiceStatus;)V

    :goto_1
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getStatus()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getRestrictCause()I

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "Partially Enabled Status due to Restrict Cause"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    aget-object v3, p1, v1

    iput v6, v3, Lorg/codeaurora/ims/ServiceStatus;->status:I

    :goto_2
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getUserdata()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/micro/ByteStringMicro;->size()I

    move-result v3

    if-lez v3, :cond_0

    aget-object v3, p1, v1

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getUserdata()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/micro/ByteStringMicro;->size()I

    move-result v4

    new-array v4, v4, [B

    iput-object v4, v3, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getUserdata()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v3

    aget-object v4, p1, v1

    iget-object v4, v4, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    invoke-virtual {v3, v4, v5}, Lcom/google/protobuf/micro/ByteStringMicro;->copyTo([BI)V

    :cond_0
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    aget-object v3, p1, v1

    new-array v4, v6, [Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    iput-object v4, v3, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v3, p1, v1

    iget-object v3, v3, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    new-instance v4, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    invoke-direct {v4}, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;-><init>()V

    aput-object v4, v3, v5

    aget-object v3, p1, v1

    iget-object v3, v3, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v0, v3, v5

    const/16 v3, 0xe

    iput v3, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getStatus()I

    move-result v3

    iput v3, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getRestrictCause()I

    move-result v3

    iput v3, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    goto :goto_1

    :cond_2
    aget-object v3, p1, v1

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getStatus()I

    move-result v4

    iput v4, v3, Lorg/codeaurora/ims/ServiceStatus;->status:I

    goto :goto_2

    :cond_3
    const-string/jumbo v3, "Null service status in list"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    return-object p1
.end method

.method private disableSrvStatus()V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "disableSrvStatus"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    invoke-direct {v1, v3, v3, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method static errorIdToString(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const-string/jumbo v0, "E_UNKNOWN"

    :goto_0
    return-object v0

    :sswitch_0
    const-string/jumbo v0, "SUCCESS"

    goto :goto_0

    :sswitch_1
    const-string/jumbo v0, "E_RADIO_NOT_AVAILABLE"

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "E_GENERIC_FAILURE"

    goto :goto_0

    :sswitch_3
    const-string/jumbo v0, "E_REQUEST_NOT_SUPPORTED"

    goto :goto_0

    :sswitch_4
    const-string/jumbo v0, "E_CANCELLED"

    goto :goto_0

    :sswitch_5
    const-string/jumbo v0, "E_UNUSED"

    goto :goto_0

    :sswitch_6
    const-string/jumbo v0, "E_INVALID_PARAMETER"

    goto :goto_0

    :sswitch_7
    const-string/jumbo v0, "E_REJECTED_BY_REMOTE"

    goto :goto_0

    :sswitch_8
    const-string/jumbo v0, "E_NETWORK_NOT_SUPPORTED"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_4
        0x10 -> :sswitch_5
        0x1b -> :sswitch_6
        0x1c -> :sswitch_7
        0x1e -> :sswitch_8
    .end sparse-switch
.end method

.method static facilityStringToInt(Ljava/lang/String;)I
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "invalid supplementary service"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string/jumbo v0, "CLIP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const-string/jumbo v0, "COLP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private findAndRemoveRequestFromList(I)Lorg/codeaurora/ims/IFRequest;
    .locals 5

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v4

    const/4 v0, 0x0

    :try_start_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_2

    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/IFRequest;

    iget v3, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    if-ne v3, p1, :cond_1

    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    if-lez v3, :cond_0

    iget v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v4

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v4

    const/4 v3, 0x0

    return-object v3

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getCallFailCauseForImsReason(I)I
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "imsReason= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v1, "Unsupported imsReason for ending call. Passing end cause as \'misc\'."

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    const/16 v1, 0x3f5

    return v1

    :pswitch_1
    const/16 v0, 0x1f6

    :goto_0
    return v0

    :pswitch_2
    const/16 v0, 0x1f5

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x1f7

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x1f8

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1f5
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getImsReasonForCallFailCause(Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;)I
    .locals 4

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->getFailcause()I

    move-result v0

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Call fail cause= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    sparse-switch v0, :sswitch_data_0

    const/4 v1, 0x0

    :goto_0
    :sswitch_0
    return v1

    :sswitch_1
    const/16 v1, 0x141

    goto :goto_0

    :sswitch_2
    const/16 v1, 0x14b

    goto :goto_0

    :sswitch_3
    const/16 v1, 0x14c

    goto :goto_0

    :sswitch_4
    const/16 v1, 0x14d

    goto :goto_0

    :sswitch_5
    const/16 v1, 0x14e

    goto :goto_0

    :sswitch_6
    const/16 v1, 0x14f

    goto :goto_0

    :sswitch_7
    const/16 v1, 0x150

    goto :goto_0

    :sswitch_8
    const/16 v1, 0x151

    goto :goto_0

    :sswitch_9
    const/16 v1, 0x152

    goto :goto_0

    :sswitch_a
    const/16 v1, 0x153

    goto :goto_0

    :sswitch_b
    const/16 v1, 0x154

    goto :goto_0

    :sswitch_c
    const/16 v1, 0x155

    goto :goto_0

    :sswitch_d
    const/16 v1, 0x160

    goto :goto_0

    :sswitch_e
    const/16 v1, 0x161

    goto :goto_0

    :sswitch_f
    const/16 v1, 0x169

    goto :goto_0

    :sswitch_10
    const/16 v1, 0x16a

    goto :goto_0

    :sswitch_11
    const/16 v1, 0x191

    goto :goto_0

    :sswitch_12
    const/16 v1, 0x192

    goto :goto_0

    :sswitch_13
    const/16 v1, 0x193

    goto :goto_0

    :sswitch_14
    const/16 v1, 0x194

    goto :goto_0

    :sswitch_15
    const/16 v1, 0x1f5

    goto :goto_0

    :sswitch_16
    const/16 v1, 0x152

    goto :goto_0

    :sswitch_17
    const/16 v1, 0x150

    goto :goto_0

    :sswitch_18
    const/16 v1, 0x3f6

    goto :goto_0

    :sswitch_19
    const/16 v1, 0xf1

    goto :goto_0

    :sswitch_1a
    const/16 v1, 0x92

    goto :goto_0

    :sswitch_1b
    const/16 v1, 0x95

    goto :goto_0

    :sswitch_1c
    const/16 v1, 0x1f9

    goto :goto_0

    :sswitch_1d
    const/16 v1, 0x16b

    goto :goto_0

    :sswitch_1e
    const/16 v1, 0x16c

    goto :goto_0

    :sswitch_1f
    const/16 v1, 0x3f7

    goto :goto_0

    :sswitch_20
    const/16 v1, 0x3f8

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_15
        0x11 -> :sswitch_16
        0xf1 -> :sswitch_19
        0x145 -> :sswitch_1d
        0x146 -> :sswitch_1e
        0x17e -> :sswitch_1b
        0x1f7 -> :sswitch_1c
        0x1f9 -> :sswitch_1a
        0x3f2 -> :sswitch_17
        0x3f6 -> :sswitch_18
        0x3f7 -> :sswitch_1f
        0x3f8 -> :sswitch_20
        0x7d1 -> :sswitch_1
        0x7d2 -> :sswitch_2
        0x7d3 -> :sswitch_3
        0x7d4 -> :sswitch_4
        0x7d5 -> :sswitch_5
        0x7d6 -> :sswitch_6
        0x7d7 -> :sswitch_7
        0x7d8 -> :sswitch_8
        0x7d9 -> :sswitch_9
        0x7da -> :sswitch_a
        0x7db -> :sswitch_b
        0x7dc -> :sswitch_c
        0x7dd -> :sswitch_0
        0x7de -> :sswitch_0
        0x7df -> :sswitch_0
        0x7e0 -> :sswitch_d
        0x7e1 -> :sswitch_e
        0x7e2 -> :sswitch_0
        0x7e3 -> :sswitch_0
        0x7e4 -> :sswitch_0
        0x7e5 -> :sswitch_f
        0x7e6 -> :sswitch_10
        0xbb9 -> :sswitch_11
        0xbba -> :sswitch_12
        0xbbb -> :sswitch_13
        0xbbc -> :sswitch_14
    .end sparse-switch
.end method

.method private handleSsacInfo([B)Ljava/lang/Object;
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "InvalidProtocolBufferException in handleSsacInfo parsing"

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    :cond_0
    return-object v3
.end method

.method private handleVopsInfo([B)Ljava/lang/Object;
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$VopsInfo;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$VopsInfo;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "InvalidProtocolBufferException in handleVopsInfo parsing"

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    :cond_0
    return-object v3
.end method

.method static msgIdToString(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const-string/jumbo v0, "<unknown message>"

    return-object v0

    :sswitch_0
    const-string/jumbo v0, "GET_CURRENT_CALLS"

    return-object v0

    :sswitch_1
    const-string/jumbo v0, "DIAL"

    return-object v0

    :sswitch_2
    const-string/jumbo v0, "REQUEST_ANSWER"

    return-object v0

    :sswitch_3
    const-string/jumbo v0, "REQUEST_DEFLECT_CALL"

    return-object v0

    :sswitch_4
    const-string/jumbo v0, "REQUEST_ADD_PARTICIPANT"

    return-object v0

    :sswitch_5
    const-string/jumbo v0, "HANGUP"

    return-object v0

    :sswitch_6
    const-string/jumbo v0, "HANGUP_WAITING_OR_BACKGROUND"

    return-object v0

    :sswitch_7
    const-string/jumbo v0, "HANGUP_FOREGROUND_RESUME_BACKGROUND"

    return-object v0

    :sswitch_8
    const-string/jumbo v0, "ImsQmiIF.REQUEST_SWITCH_WAITING_OR_HOLDING_AND_ACTIVE"

    return-object v0

    :sswitch_9
    const-string/jumbo v0, "CONFERENCE"

    return-object v0

    :sswitch_a
    const-string/jumbo v0, "UDUB"

    return-object v0

    :sswitch_b
    const-string/jumbo v0, "REQUEST_SEND_UI_TTY_MODE"

    return-object v0

    :sswitch_c
    const-string/jumbo v0, "MODIFY_CALL_INITIATE"

    return-object v0

    :sswitch_d
    const-string/jumbo v0, "MODIFY_CALL_CONFIRM"

    return-object v0

    :sswitch_e
    const-string/jumbo v0, "UNSOL_MODIFY_CALL"

    return-object v0

    :sswitch_f
    const-string/jumbo v0, "LAST_CALL_FAIL_CAUSE"

    return-object v0

    :sswitch_10
    const-string/jumbo v0, "DTMF"

    return-object v0

    :sswitch_11
    const-string/jumbo v0, "DTMF_START"

    return-object v0

    :sswitch_12
    const-string/jumbo v0, "DTMF_STOP"

    return-object v0

    :sswitch_13
    const-string/jumbo v0, "ImsQmiIF.REQUEST_EXPLICIT_CALL_TRANSFER"

    return-object v0

    :sswitch_14
    const-string/jumbo v0, "ImsQmiIF.REQUEST_EXIT_EMERGENCY_CALLBACK_MODE"

    return-object v0

    :sswitch_15
    const-string/jumbo v0, "REQUEST_IMS_REGISTRATION_STATE"

    return-object v0

    :sswitch_16
    const-string/jumbo v0, "REQUEST_QUERY_CLIP"

    return-object v0

    :sswitch_17
    const-string/jumbo v0, "REQUEST_QUERY_SERVICE_STATUS"

    return-object v0

    :sswitch_18
    const-string/jumbo v0, "REQUEST_SET_SERVICE_STATUS"

    return-object v0

    :sswitch_19
    const-string/jumbo v0, "REQUEST_GET_CLIR"

    return-object v0

    :sswitch_1a
    const-string/jumbo v0, "REQUEST_SET_CLIR"

    return-object v0

    :sswitch_1b
    const-string/jumbo v0, "REQUEST_QUERY_CALL_FORWARD_STATUS"

    return-object v0

    :sswitch_1c
    const-string/jumbo v0, "REQUEST_SET_CALL_FORWARD_STATUS"

    return-object v0

    :sswitch_1d
    const-string/jumbo v0, "REQUEST_QUERY_CALL_WAITING"

    return-object v0

    :sswitch_1e
    const-string/jumbo v0, "REQUEST_SET_CALL_WAITING"

    return-object v0

    :sswitch_1f
    const-string/jumbo v0, "REQUEST_SET_SUPP_SVC_NOTIFICATION"

    return-object v0

    :sswitch_20
    const-string/jumbo v0, "REQUEST_SUPP_SVC_STATUS"

    return-object v0

    :sswitch_21
    const-string/jumbo v0, "REQUEST_GET_RTP_STATISTICS"

    return-object v0

    :sswitch_22
    const-string/jumbo v0, "REQUEST_GET_RTP_ERROR_STATISTICS"

    return-object v0

    :sswitch_23
    const-string/jumbo v0, "REQUEST_GET_WIFI_CALLING_STATUS"

    return-object v0

    :sswitch_24
    const-string/jumbo v0, "REQUEST_SET_WIFI_CALLING_STATUS"

    return-object v0

    :sswitch_25
    const-string/jumbo v0, "REQUEST_GET_COLR"

    return-object v0

    :sswitch_26
    const-string/jumbo v0, "REQUEST_SET_COLR"

    return-object v0

    :sswitch_27
    const-string/jumbo v0, "REQUEST_HOLD"

    return-object v0

    :sswitch_28
    const-string/jumbo v0, "REQUEST_RESUME"

    return-object v0

    :sswitch_29
    const-string/jumbo v0, "REQUEST_SET_IMS_CONFIG"

    return-object v0

    :sswitch_2a
    const-string/jumbo v0, "REQUEST_GET_IMS_CONFIG"

    return-object v0

    :sswitch_2b
    const-string/jumbo v0, "REQUEST_SEND_GEOLOCATION_INFO"

    return-object v0

    :sswitch_2c
    const-string/jumbo v0, "REQUEST_GET_VOPS_INFO"

    return-object v0

    :sswitch_2d
    const-string/jumbo v0, "REQUEST_GET_SSAC_INFO"

    return-object v0

    :sswitch_2e
    const-string/jumbo v0, "REQUEST_SET_VOLTE_PREF"

    return-object v0

    :sswitch_2f
    const-string/jumbo v0, "REQUEST_GET_VOLTE_PREF"

    return-object v0

    :sswitch_30
    const-string/jumbo v0, "REQUEST_GET_HANDOVER_CONFIG"

    return-object v0

    :sswitch_31
    const-string/jumbo v0, "REQUEST_SET_HANDOVER_CONFIG"

    return-object v0

    :sswitch_32
    const-string/jumbo v0, "UNSOL_RESPONSE_IMS_NETWORK_STATE_CHANGED"

    return-object v0

    :sswitch_33
    const-string/jumbo v0, "UNSOL_RESPONSE_CALL_STATE_CHANGED"

    return-object v0

    :sswitch_34
    const-string/jumbo v0, "UNSOL_CALL_RING"

    return-object v0

    :sswitch_35
    const-string/jumbo v0, "UNSOL_ENTER_EMERGENCY_CALLBACK_MODE"

    return-object v0

    :sswitch_36
    const-string/jumbo v0, "UNSOL_RINGBACK_TONE"

    return-object v0

    :sswitch_37
    const-string/jumbo v0, "UNSOL_EXIT_EMERGENCY_CALLBACK_MODE"

    return-object v0

    :sswitch_38
    const-string/jumbo v0, "REQUEST_IMS_REG_STATE_CHANGE"

    return-object v0

    :sswitch_39
    const-string/jumbo v0, "UNSOL_RESPONSE_HANDOVER"

    return-object v0

    :sswitch_3a
    const-string/jumbo v0, "UNSOL_REFRESH_CONF_INFO"

    return-object v0

    :sswitch_3b
    const-string/jumbo v0, "UNSOL_SRV_STATUS_UPDATE"

    return-object v0

    :sswitch_3c
    const-string/jumbo v0, "UNSOL_SUPP_SVC_NOTIFICATION"

    return-object v0

    :sswitch_3d
    const-string/jumbo v0, "UNSOL_TTY_NOTIFICATION"

    return-object v0

    :sswitch_3e
    const-string/jumbo v0, "UNSOL_RADIO_STATE_CHANGED"

    return-object v0

    :sswitch_3f
    const-string/jumbo v0, "UNSOL_MWI"

    return-object v0

    :sswitch_40
    const-string/jumbo v0, "UNSOL_REQUEST_GEOLOCATION"

    return-object v0

    :sswitch_41
    const-string/jumbo v0, "UNSOL_REFRESH_VICE_INFO"

    return-object v0

    :sswitch_42
    const-string/jumbo v0, "UNSOL_VOWIFI_CALL_QUALITY"

    return-object v0

    :sswitch_43
    const-string/jumbo v0, "UNSOL_VOPS_CHANGED"

    return-object v0

    :sswitch_44
    const-string/jumbo v0, "UNSOL_SSAC_CHANGED"

    return-object v0

    :sswitch_45
    const-string/jumbo v0, "UNSOL_PARTICIPANT_STATUS_INFO"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_15
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_5
        0x5 -> :sswitch_f
        0x6 -> :sswitch_0
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_14
        0xc -> :sswitch_13
        0xd -> :sswitch_10
        0xe -> :sswitch_11
        0xf -> :sswitch_12
        0x10 -> :sswitch_a
        0x11 -> :sswitch_c
        0x12 -> :sswitch_d
        0x13 -> :sswitch_16
        0x14 -> :sswitch_19
        0x15 -> :sswitch_1a
        0x16 -> :sswitch_1b
        0x17 -> :sswitch_1c
        0x18 -> :sswitch_1d
        0x19 -> :sswitch_1e
        0x1a -> :sswitch_38
        0x1b -> :sswitch_1f
        0x1c -> :sswitch_4
        0x1d -> :sswitch_17
        0x1e -> :sswitch_18
        0x1f -> :sswitch_20
        0x20 -> :sswitch_3
        0x21 -> :sswitch_25
        0x22 -> :sswitch_26
        0x25 -> :sswitch_27
        0x26 -> :sswitch_28
        0x27 -> :sswitch_b
        0x28 -> :sswitch_21
        0x29 -> :sswitch_22
        0x2a -> :sswitch_23
        0x2b -> :sswitch_24
        0x2c -> :sswitch_29
        0x2d -> :sswitch_2a
        0x2e -> :sswitch_2b
        0x30 -> :sswitch_2c
        0x31 -> :sswitch_2d
        0x32 -> :sswitch_2e
        0x33 -> :sswitch_2f
        0x34 -> :sswitch_30
        0x35 -> :sswitch_31
        0xc9 -> :sswitch_33
        0xca -> :sswitch_34
        0xcb -> :sswitch_36
        0xcc -> :sswitch_32
        0xcd -> :sswitch_35
        0xce -> :sswitch_37
        0xcf -> :sswitch_e
        0xd0 -> :sswitch_39
        0xd1 -> :sswitch_3a
        0xd2 -> :sswitch_3b
        0xd3 -> :sswitch_3c
        0xd4 -> :sswitch_3d
        0xd5 -> :sswitch_3e
        0xd6 -> :sswitch_3f
        0xd7 -> :sswitch_41
        0xd8 -> :sswitch_40
        0xd9 -> :sswitch_42
        0xda -> :sswitch_43
        0xdb -> :sswitch_44
        0xdc -> :sswitch_45
    .end sparse-switch
.end method

.method private processDial(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;Z)[B
    .locals 9

    const/4 v5, 0x0

    if-eqz p3, :cond_0

    iget-object v7, p3, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, p3, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    const-string/jumbo v8, "isConferenceUri"

    invoke-virtual {p3, v7, v8}, Lorg/codeaurora/ims/CallDetails;->getValueForKeyFromExtras([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v5, 0x1

    :cond_0
    const/4 v4, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lorg/codeaurora/ims/CallDetails;->getCallPull()Z

    move-result v4

    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "process dial isConfererenceUri = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ",isCallPull = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;-><init>()V

    if-eqz p3, :cond_2

    iget v7, p3, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    invoke-virtual {v0, v7}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->setCallDomain(I)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    iget v7, p3, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-virtual {v0, v7}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->setCallType(I)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    iget-object v7, p3, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    if-eqz v7, :cond_2

    const/4 v3, 0x0

    :goto_0
    iget-object v7, p3, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    array-length v7, v7

    if-ge v3, v7, :cond_2

    iget-object v7, p3, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-virtual {v0, v7}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->addExtras(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Packing extra string \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p3, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$Dial;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$Dial;-><init>()V

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->setAddress(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Dial;

    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->setCallDetails(Lorg/codeaurora/ims/ImsQmiIF$CallDetails;)Lorg/codeaurora/ims/ImsQmiIF$Dial;

    invoke-virtual {v1, p2}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->setClir(I)Lorg/codeaurora/ims/ImsQmiIF$Dial;

    packed-switch p2, :pswitch_data_0

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->setPresentation(I)Lorg/codeaurora/ims/ImsQmiIF$Dial;

    :goto_1
    if-eqz v5, :cond_3

    invoke-virtual {v1, v5}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->setIsConferenceUri(Z)Lorg/codeaurora/ims/ImsQmiIF$Dial;

    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v1, v4}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->setIsCallPull(Z)Lorg/codeaurora/ims/ImsQmiIF$Dial;

    :cond_4
    invoke-virtual {v1, p4}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->setIsEncrypted(Z)Lorg/codeaurora/ims/ImsQmiIF$Dial;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->toByteArray()[B

    move-result-object v2

    return-object v2

    :pswitch_0
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->setPresentation(I)Lorg/codeaurora/ims/ImsQmiIF$Dial;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private static readMessage(Ljava/io/InputStream;[B)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, -0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x4

    :cond_0
    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-gez v0, :cond_1

    const-string/jumbo v4, "ImsSenderRxr"

    const-string/jumbo v5, "Hit EOS reading message length"

    invoke-static {v4, v5}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :cond_1
    add-int/2addr v2, v0

    sub-int/2addr v3, v0

    if-gtz v3, :cond_0

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    const/4 v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/4 v5, 0x2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const/4 v5, 0x3

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int v1, v4, v5

    const/4 v2, 0x0

    move v3, v1

    :cond_2
    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-gez v0, :cond_3

    const-string/jumbo v4, "ImsSenderRxr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Hit EOS reading message.  messageLength="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " remaining="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :cond_3
    add-int/2addr v2, v0

    sub-int/2addr v3, v0

    if-gtz v3, :cond_2

    return v1
.end method

.method private releaseWakeLockIfDone()V
    .locals 3

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSender:Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->removeMessages(I)V

    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private responseCallFailCause([B)Ljava/lang/Object;
    .locals 4

    const-string/jumbo v2, " responseCallFailCause "

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "callfail cause response"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, " Message parsing "

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    const-string/jumbo v2, "InvalidProtocolBufferException "

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private responseCallRingBack([B)Ljava/lang/Object;
    .locals 5

    const/4 v3, 0x1

    new-array v1, v3, [I

    const-string/jumbo v3, " responseCallRingBack "

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;

    move-result-object v2

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->getFlag()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v1, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "responseCallRingBack "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v3, " Message parsing "

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    const-string/jumbo v3, "InvalidProtocolBufferException "

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private responseConfig([B)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasBoolValue()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->getBoolValue()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    :cond_0
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasIntValue()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->getIntValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3

    :cond_1
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasStringValue()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->getStringValue()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_2
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasErrorCause()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->getErrorCause()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v2

    const-string/jumbo v3, "InvalidProtocolBufferException in responseHandover parsing"

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-object v0

    :catch_1
    move-exception v1

    const-string/jumbo v3, "NullPointerException in responseConfig"

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private responseGetHanoverConfig([B)Ljava/lang/Object;
    .locals 5

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    array-length v3, p1

    const/4 v4, 0x1

    if-lt v3, v4, :cond_1

    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;->hasHoConfig()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;->getHoConfig()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "responseGetHanoverConfig, hoConfig = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3

    :cond_0
    const-string/jumbo v3, "responseGetHanoverConfig failed"

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v3, " Message parsing. InvalidProtocolBufferException "

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "responseGetHanoverConfig failed, message is null"

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private responseGetRtpErrorStatistics([B)Ljava/lang/Object;
    .locals 7

    const/4 v6, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v4, "responseGetRtpErrorStatistics failed, message is null"

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    :goto_0
    return-object v6

    :cond_0
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->hasCount()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->getCount()I

    move-result v4

    int-to-long v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "responseGetRtpErrorStatistics, perCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    return-object v4

    :cond_1
    const-string/jumbo v4, "responseGetRtpErrorStatistics failed"

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v4, " Message parsing. InvalidProtocolBufferException "

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private responseGetRtpStatistics([B)Ljava/lang/Object;
    .locals 7

    const/4 v6, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v4, "responseGetRtpStatistics failed, message is null"

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    :goto_0
    return-object v6

    :cond_0
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->hasCount()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->getCount()I

    move-result v4

    int-to-long v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "responseGetRtpStatistics, packetCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    return-object v4

    :cond_1
    const-string/jumbo v4, "responseGetRtpStatistics failed"

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v4, " Message parsing. InvalidProtocolBufferException "

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private responseGetWifiCallingStatus([B)Ljava/lang/Object;
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, " Message parsing. InvalidProtocolBufferException "

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "responseGetWifiCallingStatus failed, message is null"

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private responseModifyCall([B)Ljava/lang/Object;
    .locals 6

    new-instance v0, Lorg/codeaurora/ims/CallModify;

    invoke-direct {v0}, Lorg/codeaurora/ims/CallModify;-><init>()V

    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$CallModify;

    move-result-object v1

    iget-object v4, v0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v5

    invoke-virtual {v5}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getCallType()I

    move-result v5

    iput v5, v4, Lorg/codeaurora/ims/CallDetails;->call_type:I

    iget-object v4, v0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v5

    invoke-virtual {v5}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getCallDomain()I

    move-result v5

    iput v5, v4, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    iget-object v4, v0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v5

    invoke-virtual {v5}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getCallSubstate()I

    move-result v5

    iput v5, v4, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    iget-object v4, v0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v5

    invoke-virtual {v5}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getMediaId()I

    move-result v5

    iput v5, v4, Lorg/codeaurora/ims/CallDetails;->callMediaId:I

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v4

    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getExtrasList()Ljava/util/List;

    move-result-object v3

    iget-object v5, v0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iput-object v4, v5, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->getCallIndex()I

    move-result v4

    iput v4, v0, Lorg/codeaurora/ims/CallModify;->call_index:I

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->hasError()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->getError()I

    move-result v4

    :goto_0
    iput v4, v0, Lorg/codeaurora/ims/CallModify;->error:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "responseModifyCall "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v4, " Message parsing. InvalidProtocolBufferException "

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private responseSipErrorInfo([B)Ljava/lang/Object;
    .locals 3

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    array-length v2, p1

    if-lez v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, " Message parsing. InvalidProtocolBufferException "

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "responseSipErrorInfo failed, message is null"

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private retToString(ILjava/lang/Object;)Ljava/lang/String;
    .locals 12

    const/4 v11, 0x0

    if-nez p2, :cond_0

    const-string/jumbo v10, ""

    return-object v10

    :cond_0
    instance-of v10, p2, [I

    if-eqz v10, :cond_2

    move-object v5, p2

    check-cast v5, [I

    array-length v6, v5

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "{"

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-lez v6, :cond_1

    const/4 v3, 0x1

    aget v10, v5, v11

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_1

    const-string/jumbo v10, ", "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v3, v4, 0x1

    aget v11, v5, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v4, v3

    goto :goto_0

    :cond_1
    const-string/jumbo v10, "}"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_1
    return-object v7

    :cond_2
    instance-of v10, p2, [Ljava/lang/String;

    if-eqz v10, :cond_4

    move-object v9, p2

    check-cast v9, [Ljava/lang/String;

    array-length v6, v9

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "{"

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-lez v6, :cond_3

    const/4 v3, 0x1

    aget-object v10, v9, v11

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v3

    :goto_2
    if-ge v4, v6, :cond_3

    const-string/jumbo v10, ", "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v3, v4, 0x1

    aget-object v11, v9, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v3

    goto :goto_2

    :cond_3
    const-string/jumbo v10, "}"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_4
    const/16 v10, 0xc9

    if-eq p1, v10, :cond_5

    const/4 v10, 0x6

    if-ne p1, v10, :cond_7

    :cond_5
    move-object v0, p2

    check-cast v0, Ljava/util/ArrayList;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v10, " "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/DriverCallIms;

    const-string/jumbo v10, "["

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "] "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_7
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method

.method private setCallModify(Lorg/codeaurora/ims/CallModify;)[B
    .locals 5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCallModify callModify= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;-><init>()V

    iget-object v3, p1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v3, v3, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->setCallType(I)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    iget-object v3, p1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v3, v3, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->setCallDomain(I)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$CallModify;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;-><init>()V

    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->setCallDetails(Lorg/codeaurora/ims/ImsQmiIF$CallDetails;)Lorg/codeaurora/ims/ImsQmiIF$CallModify;

    iget v3, p1, Lorg/codeaurora/ims/CallModify;->call_index:I

    invoke-virtual {v1, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->setCallIndex(I)Lorg/codeaurora/ims/ImsQmiIF$CallModify;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method private static toCallSubstateConstants(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_2
    const/4 v0, 0x2

    return v0

    :pswitch_3
    const/4 v0, 0x4

    return v0

    :pswitch_4
    const/16 v0, 0x8

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private unpackAccTechStatus(Lorg/codeaurora/ims/ImsQmiIF$Info;Lorg/codeaurora/ims/ServiceStatus;)V
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getAccTechStatusCount()I

    move-result v1

    new-array v3, v1, [Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    iput-object v3, p2, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getAccTechStatus(I)Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    move-result-object v2

    iget-object v3, p2, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    new-instance v4, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    invoke-direct {v4}, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;-><init>()V

    aput-object v4, v3, v0

    iget-object v3, p2, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v3, v3, v0

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->getNetworkMode()I

    move-result v4

    iput v4, v3, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    iget-object v3, p2, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v3, v3, v0

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->getStatus()I

    move-result v4

    iput v4, v3, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    iget-object v3, p2, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v3, v3, v0

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->getRestrictionCause()I

    move-result v4

    iput v4, v3, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->getRegistered()Lorg/codeaurora/ims/ImsQmiIF$Registration;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p2, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v3, v3, v0

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->getRegistered()Lorg/codeaurora/ims/ImsQmiIF$Registration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->getState()I

    move-result v4

    iput v4, v3, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " networkMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v4, v4, v0

    iget v4, v4, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v4, v4, v0

    iget v4, v4, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " restrictCause = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v4, v4, v0

    iget v4, v4, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " registered = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v4, v4, v0

    iget v4, v4, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_0
    iget-object v3, p2, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v3, v3, v0

    const/4 v4, 0x2

    iput v4, v3, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    const-string/jumbo v3, "Registered not sent"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public acceptCall(Landroid/os/Message;I)V
    .locals 5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "acceptCall callType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    move v2, p2

    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$Answer;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$Answer;-><init>()V

    invoke-virtual {v1, p2}, Lorg/codeaurora/ims/ImsQmiIF$Answer;->setCallType(I)Lorg/codeaurora/ims/ImsQmiIF$Answer;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$Answer;->toByteArray()[B

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {p0, v3, p1, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    return-void
.end method

.method public acceptCall(Landroid/os/Message;II)V
    .locals 5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "acceptCall callType= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " presentation= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    move v2, p2

    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$Answer;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$Answer;-><init>()V

    invoke-virtual {v1, p2}, Lorg/codeaurora/ims/ImsQmiIF$Answer;->setCallType(I)Lorg/codeaurora/ims/ImsQmiIF$Answer;

    invoke-virtual {v1, p3}, Lorg/codeaurora/ims/ImsQmiIF$Answer;->setPresentation(I)Lorg/codeaurora/ims/ImsQmiIF$Answer;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$Answer;->toByteArray()[B

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {p0, v3, p1, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    return-void
.end method

.method public addParticipant(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;Landroid/os/Message;)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addParticipant address= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "clirMode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " callDetails= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->processDial(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;Z)[B

    move-result-object v0

    const/16 v1, 0x1c

    invoke-virtual {p0, v1, p4, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    return-void
.end method

.method public conference(Landroid/os/Message;)V
    .locals 2

    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    return-void
.end method

.method public deflectCall(ILjava/lang/String;Landroid/os/Message;)V
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "deflect call to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "connid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;-><init>()V

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->setConnIndex(I)Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;

    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->setNumber(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->toByteArray()[B

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {p0, v2, p3, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    return-void
.end method

.method public dial(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;ZLandroid/os/Message;)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dial address= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "clirMode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " callDetails= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " isEncrypted= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/codeaurora/ims/ImsSenderRxr;->processDial(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;Z)[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, p5, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    const-string/jumbo v3, "IMS INTERFACE:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " mSocket="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " mSenderThread="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " mSender="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSender:Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " mReceiverThread="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mReceiverThread:Ljava/lang/Thread;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " mReceiver="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mReceiver:Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " mWakeLock="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " mWakeLockTimeout="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLockTimeout:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " mRequestMessagesPending="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " mRequestMessagesWaiting="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " mRequestList count="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/IFRequest;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "] "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    invoke-static {v5}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " mLastNITZTimeInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mLastNITZTimeInfo:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " mTestingEmergencyCall="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public encodeMsg(ILandroid/os/Message;[B)V
    .locals 15

    const/4 v6, 0x0

    const/4 v10, 0x0

    invoke-static/range {p1 .. p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v8

    new-instance v7, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;

    invoke-direct {v7}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;-><init>()V

    iget v11, v8, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-virtual {v7, v11}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->setToken(I)Lorg/codeaurora/ims/ImsQmiIF$MsgTag;

    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->setType(I)Lorg/codeaurora/ims/ImsQmiIF$MsgTag;

    iget v11, v8, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    invoke-virtual {v7, v11}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->setId(I)Lorg/codeaurora/ims/ImsQmiIF$MsgTag;

    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->setError(I)Lorg/codeaurora/ims/ImsQmiIF$MsgTag;

    invoke-virtual {v7}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->toByteArray()[B

    move-result-object v9

    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    array-length v6, v0

    :cond_0
    array-length v11, v9

    add-int/lit8 v11, v11, 0x4

    add-int/2addr v11, v6

    add-int/lit8 v10, v11, 0x1

    new-array v11, v10, [B

    iput-object v11, v8, Lorg/codeaurora/ims/IFRequest;->mData:[B

    iget-object v11, v8, Lorg/codeaurora/ims/IFRequest;->mData:[B

    const/4 v12, 0x0

    const/4 v4, 0x1

    iget-object v13, v8, Lorg/codeaurora/ims/IFRequest;->mData:[B

    add-int/lit8 v5, v4, 0x1

    const/4 v14, 0x0

    aput-byte v14, v13, v4

    const/4 v13, 0x0

    aput-byte v13, v11, v12

    iget-object v11, v8, Lorg/codeaurora/ims/IFRequest;->mData:[B

    add-int/lit8 v4, v5, 0x1

    add-int/lit8 v12, v10, -0x4

    shr-int/lit8 v12, v12, 0x8

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v11, v5

    iget-object v11, v8, Lorg/codeaurora/ims/IFRequest;->mData:[B

    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v12, v10, -0x4

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v11, v4

    iget-object v11, v8, Lorg/codeaurora/ims/IFRequest;->mData:[B

    add-int/lit8 v4, v5, 0x1

    array-length v12, v9

    int-to-byte v12, v12

    aput-byte v12, v11, v5

    :try_start_0
    iget-object v11, v8, Lorg/codeaurora/ims/IFRequest;->mData:[B

    array-length v12, v9

    const/4 v13, 0x0

    invoke-static {v9, v13, v11, v4, v12}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-lez v6, :cond_1

    :try_start_1
    iget-object v11, v8, Lorg/codeaurora/ims/IFRequest;->mData:[B

    array-length v12, v9

    add-int/lit8 v12, v12, 0x5

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v13, v11, v12, v6}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/ArrayStoreException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_1
    :goto_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lorg/codeaurora/ims/IFRequest;->serialString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v8, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    invoke-static {v12}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Message data: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v8, Lorg/codeaurora/ims/IFRequest;->mData:[B

    invoke-static {v12}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Lorg/codeaurora/ims/ImsSenderRxr;->send(Lorg/codeaurora/ims/IFRequest;)V

    return-void

    :catch_0
    move-exception v3

    const-string/jumbo v11, " NullPointerException while parsing msg tag"

    invoke-virtual {p0, v11}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v11, " ArrayStoreException while parsing msg tag"

    invoke-virtual {p0, v11}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v2

    const-string/jumbo v11, " IndexOutOfBoundsException while encoding msg tag"

    invoke-virtual {p0, v11}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    :catch_3
    move-exception v3

    const-string/jumbo v11, " NullPointerException while parsing msg"

    invoke-virtual {p0, v11}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_1

    :catch_4
    move-exception v1

    const-string/jumbo v11, " ArrayStoreException while parsing msg"

    invoke-virtual {p0, v11}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_1

    :catch_5
    move-exception v2

    const-string/jumbo v11, " IndexOutOfBoundsException while encoding msg"

    invoke-virtual {p0, v11}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public exitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 2

    const-string/jumbo v0, "exitEmergencyCallbackMode"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    return-void
.end method

.method public explicitCallTransfer(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 3

    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;-><init>()V

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->setCallId(I)Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;

    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->setEctType(I)Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;

    if-eqz p3, :cond_0

    invoke-virtual {v0, p3}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->setTargetAddress(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;

    :cond_0
    if-lez p4, :cond_1

    invoke-virtual {v0, p4}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->setTargetCallId(I)Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;

    :cond_1
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->toByteArray()[B

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {p0, v2, p5, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    return-void
.end method

.method public explicitCallTransfer(Landroid/os/Message;)V
    .locals 2

    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    return-void
.end method

.method public getCLIR(Landroid/os/Message;)V
    .locals 2

    const-string/jumbo v0, "getCLIR"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    const/16 v0, 0x14

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    return-void
.end method

.method public getCOLR(Landroid/os/Message;)V
    .locals 2

    const-string/jumbo v0, "getCOLR"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    const/16 v0, 0x21

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    return-void
.end method

.method public getCurrentCalls(Landroid/os/Message;)V
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    return-void
.end method

.method public getHandoverConfig(Landroid/os/Message;)V
    .locals 2

    const-string/jumbo v0, "ImsSenderRxr"

    const-string/jumbo v1, "getHandoverConfig"

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x34

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    return-void
.end method

.method public getImsRegistrationState(Landroid/os/Message;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    return-void
.end method

.method public getLastCallFailCause(Landroid/os/Message;)V
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    return-void
.end method

.method public getPacketCount(Landroid/os/Message;)V
    .locals 2

    const-string/jumbo v0, "getPacketCount"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x28

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    return-void
.end method

.method public getPacketErrorCount(Landroid/os/Message;)V
    .locals 2

    const-string/jumbo v0, "getPacketErrorCount"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x29

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    return-void
.end method

.method public getSuppSvc(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2

    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->facilityStringToInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(IILandroid/os/Message;)V

    return-void
.end method

.method public getWifiCallingPreference(Landroid/os/Message;)V
    .locals 2

    const-string/jumbo v0, "getWifiCallingPreference"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x2a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    return-void
.end method

.method protected handleGeolocation([B)Ljava/lang/Object;
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "InvalidProtocolBufferException in handleGeolocation parsing"

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleMwi([B)Ljava/lang/Object;
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "InvalidProtocolBufferException in handleMwi parsing"

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleParticipantStatusInfo([B)Ljava/lang/Object;
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "InvalidProtocolBufferException in responseHandover parsing"

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleRadioStateChange([B)Ljava/lang/Object;
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    array-length v3, p1

    if-lt v3, v4, :cond_0

    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;

    move-result-object v2

    const/4 v3, 0x1

    new-array v1, v3, [I

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->getState()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v1, v4

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->getState()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    const-string/jumbo v3, "Invalid state in Radio State Change"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v1

    :sswitch_0
    sget-object v3, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->RADIO_OFF:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->setRadioState(Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;)V
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "InvalidProtocolBufferException in handleRadioStateChange parsing"

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    :try_start_1
    sget-object v3, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->setRadioState(Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;)V

    goto :goto_0

    :sswitch_2
    sget-object v3, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->RADIO_ON:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->setRadioState(Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;)V
    :try_end_1
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0xa -> :sswitch_2
    .end sparse-switch
.end method

.method protected handleRefreshInfo([B)Ljava/lang/Object;
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "InvalidProtocolBufferException in responseHandover parsing"

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleRefreshViceInfo([B)Ljava/lang/Object;
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$ViceInfo;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$ViceInfo;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "InvalidProtocolBufferException in responseHandover parsing"

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleSrvStatus([B)Ljava/lang/Object;
    .locals 11

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    move-result-object v7

    invoke-virtual {v7}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->getSrvStatusInfoCount()I

    move-result v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    :try_start_1
    invoke-virtual {v7, v1}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->getSrvStatusInfo(I)Lorg/codeaurora/ims/ImsQmiIF$Info;

    move-result-object v2

    new-instance v6, Lorg/codeaurora/ims/ServiceStatus;

    invoke-direct {v6}, Lorg/codeaurora/ims/ServiceStatus;-><init>()V

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getIsValid()Z

    move-result v8

    iput-boolean v8, v6, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getCallType()I

    move-result v8

    iput v8, v6, Lorg/codeaurora/ims/ServiceStatus;->type:I

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getStatus()I

    move-result v8

    iput v8, v6, Lorg/codeaurora/ims/ServiceStatus;->status:I

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getUserdata()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/protobuf/micro/ByteStringMicro;->size()I

    move-result v8

    if-lez v8, :cond_0

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getUserdata()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/protobuf/micro/ByteStringMicro;->size()I

    move-result v8

    new-array v8, v8, [B

    iput-object v8, v6, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getUserdata()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v8

    iget-object v9, v6, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/google/protobuf/micro/ByteStringMicro;->copyTo([BI)V

    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isValid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, v6, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " type = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v6, Lorg/codeaurora/ims/ServiceStatus;->type:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " status = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v6, Lorg/codeaurora/ims/ServiceStatus;->status:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " userdata = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v6, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    invoke-direct {p0, v2, v6}, Lorg/codeaurora/ims/ImsSenderRxr;->unpackAccTechStatus(Lorg/codeaurora/ims/ImsQmiIF$Info;Lorg/codeaurora/ims/ServiceStatus;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1
    move-object v4, v5

    :goto_1
    return-object v4

    :catch_0
    move-exception v0

    :goto_2
    const-string/jumbo v8, "InvalidProtocolBufferException in handleSrvStatus parsing"

    invoke-virtual {p0, v8}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v4, v5

    goto :goto_2
.end method

.method protected handleTtyNotify([B)Ljava/lang/Object;
    .locals 5

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;

    move-result-object v2

    const/4 v3, 0x1

    new-array v1, v3, [I

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;->getMode()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v1, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleTtyNotify mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v3, "InvalidProtocolBufferException in Message Tag parsing "

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleVoWiFiCallQuality([B)Ljava/lang/Object;
    .locals 5

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$VoWiFiCallQuality;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$VoWiFiCallQuality;

    move-result-object v0

    const/4 v3, 0x1

    new-array v2, v3, [I

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$VoWiFiCallQuality;->getQuality()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    const-string/jumbo v3, "InvalidProtocolBufferException in handleVoWiFiCallQuality parsing"

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public hangupConnection(ILandroid/os/Message;)V
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hangupConnection index= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;-><init>()V

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->setConnIndex(I)Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->setMultiParty(Z)Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v2, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    return-void
.end method

.method public hangupForegroundResumeBackground(Landroid/os/Message;)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    return-void
.end method

.method public hangupWaitingOrBackground(Landroid/os/Message;)V
    .locals 2

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    return-void
.end method

.method public hangupWithReason(ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;Landroid/os/Message;)V
    .locals 7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "hangupWithReason connId= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " userUri= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " confUri= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "mpty = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "failCause = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    new-instance v3, Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    invoke-direct {v3}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;-><init>()V

    const/4 v5, -0x1

    if-eq p1, v5, :cond_0

    invoke-virtual {v3, p1}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->setConnIndex(I)Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    :cond_0
    invoke-virtual {v3, p4}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->setMultiParty(Z)Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    if-eqz p2, :cond_1

    invoke-virtual {v3, p2}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->setConnUri(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    :cond_1
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;-><init>()V

    if-eqz p6, :cond_2

    invoke-virtual {p6}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    :goto_0
    invoke-direct {p0, p5}, Lorg/codeaurora/ims/ImsSenderRxr;->getCallFailCauseForImsReason(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->setFailcause(I)Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "hangupWithReason callFailCause="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    const/16 v5, 0x3f5

    if-ne v0, v5, :cond_3

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5}, Lcom/google/protobuf/micro/ByteStringMicro;->copyFrom([B)Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->setErrorinfo(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "hangupWithReason MISC callFailCause, errorInfo="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v3, v1}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->setFailCauseResponse(Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;)Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->toByteArray()[B

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {p0, v5, p7, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    return-void

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "hangupWithReason errorInfo = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    invoke-virtual {p6}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5}, Lcom/google/protobuf/micro/ByteStringMicro;->copyFrom([B)Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->setErrorinfo(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    goto :goto_0
.end method

.method public hold(Landroid/os/Message;I)V
    .locals 3

    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Hold;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Hold;-><init>()V

    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsQmiIF$Hold;->setCallId(I)Lorg/codeaurora/ims/ImsQmiIF$Hold;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$Hold;->toByteArray()[B

    move-result-object v1

    const/16 v2, 0x25

    invoke-virtual {p0, v2, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "[SUB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public logUnimplemented()V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Unimplemented method. Stack trace: "

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public logv(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "[SUB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public modifyCallConfirm(Landroid/os/Message;Lorg/codeaurora/ims/CallModify;)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "modifyCallConfirm callModify= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->setCallModify(Lorg/codeaurora/ims/CallModify;)[B

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {p0, v1, p1, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    return-void
.end method

.method public modifyCallInitiate(Landroid/os/Message;Lorg/codeaurora/ims/CallModify;)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "modifyCallInitiate callModify= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->setCallModify(Lorg/codeaurora/ims/CallModify;)[B

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {p0, v1, p1, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    return-void
.end method

.method public processResponse([BI)V
    .locals 12

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v0, 0x1

    const/4 v5, 0x0

    const-string/jumbo v9, "processResponse"

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    if-lez p2, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Response data: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p1, v11, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    :cond_0
    if-gt v0, p2, :cond_3

    aget-byte v6, p1, v7

    const/4 v8, 0x0

    move v7, v0

    add-int/lit8 v0, v6, 0x1

    if-gt v0, p2, :cond_2

    if-lez v6, :cond_2

    new-array v5, v6, [B

    const/4 v9, 0x0

    :try_start_0
    invoke-static {p1, v7, v5, v9, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-static {v5}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, " Tag "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->getToken()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->getType()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->getId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->getError()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    move v7, v0

    sub-int v6, p2, v0

    add-int/2addr v0, v6

    const/4 v5, 0x0

    if-gt v0, p2, :cond_1

    if-lez v6, :cond_1

    new-array v5, v6, [B

    const/4 v9, 0x0

    :try_start_1
    invoke-static {p1, v7, v5, v9, v6}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/ArrayStoreException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4

    :cond_1
    :goto_0
    invoke-virtual {v8}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->getType()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    const-string/jumbo v9, " Unknown Message Type  "

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->releaseWakeLockIfDone()V

    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v9, "InvalidProtocolBufferException while parsing msg tag"

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->releaseWakeLockIfDone()V

    return-void

    :catch_1
    move-exception v4

    const-string/jumbo v9, " NullPointerException while parsing msg tag"

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->releaseWakeLockIfDone()V

    return-void

    :catch_2
    move-exception v2

    const-string/jumbo v9, " ArrayStoreException while parsing msg tag"

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->releaseWakeLockIfDone()V

    return-void

    :catch_3
    move-exception v3

    const-string/jumbo v9, " IndexOutOfBoundsException while parsing msg tag"

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->releaseWakeLockIfDone()V

    return-void

    :catch_4
    move-exception v4

    const-string/jumbo v9, " NullPointerException while parsing msg tag"

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    :catch_5
    move-exception v2

    const-string/jumbo v9, " ArrayStoreException while parsing msg tag"

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    :catch_6
    move-exception v3

    const-string/jumbo v9, " IndexOutOfBoundsException while parsing msg tag"

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v8, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->processUnsolicited(Lorg/codeaurora/ims/ImsQmiIF$MsgTag;[B)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, v8, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->processSolicited(Lorg/codeaurora/ims/ImsQmiIF$MsgTag;[B)V

    goto :goto_1

    :cond_2
    const-string/jumbo v9, "Error in parsing msg tag"

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v9, "Error in parsing msg tag length"

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected processSolicited(Lorg/codeaurora/ims/ImsQmiIF$MsgTag;[B)V
    .locals 11

    const/4 v10, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->getToken()I

    move-result v5

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->getError()I

    move-result v0

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->getId()I

    move-result v2

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->findAndRemoveRequestFromList(I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unexpected solicited response! sn: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v3, 0x0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_3

    array-length v7, p2

    const/4 v8, 0x1

    if-lt v7, v8, :cond_3

    :cond_1
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    :try_start_0
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unrecognized solicited response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lorg/codeaurora/ims/IFRequest;->serialString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "< "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    invoke-static {v8}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "[SUB"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " exception, possible invalid response"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, v4, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    if-eqz v7, :cond_2

    iget-object v7, v4, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    invoke-static {v7, v10, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    iget-object v7, v4, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    invoke-virtual {v4}, Lorg/codeaurora/ims/IFRequest;->release()V

    return-void

    :pswitch_1
    :try_start_1
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseImsRegistration([B)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    :cond_3
    :goto_0
    :pswitch_2
    if-eqz v0, :cond_4

    invoke-virtual {v4, v0, v3}, Lorg/codeaurora/ims/IFRequest;->onError(ILjava/lang/Object;)V

    invoke-virtual {v4}, Lorg/codeaurora/ims/IFRequest;->release()V

    return-void

    :pswitch_3
    :try_start_2
    iget-object v7, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    if-eqz v7, :cond_3

    const-string/jumbo v7, "testing emergency call, notify ECM Registrants"

    invoke-virtual {p0, v7}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    iget-object v7, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    invoke-virtual {v7}, Landroid/os/Registrant;->notifyRegistrant()V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseCallList([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseCallFailCause([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseGetClir([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseQueryCallForward([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseQueryCallWaiting([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :pswitch_9
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseQueryClip([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :pswitch_a
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->handleSrvStatus([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :pswitch_b
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseSuppSvcStatus([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :pswitch_c
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseGetRtpStatistics([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :pswitch_d
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseGetRtpErrorStatistics([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :pswitch_e
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseGetColr([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :pswitch_f
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseGetWifiCallingStatus([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :pswitch_10
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->handleVopsInfo([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :pswitch_11
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->handleSsacInfo([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :pswitch_12
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseGetVoltePref([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :pswitch_13
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseGetHanoverConfig([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :pswitch_14
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseSipErrorInfo([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :pswitch_15
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseConfig([B)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    goto :goto_0

    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lorg/codeaurora/ims/IFRequest;->serialString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "< "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    invoke-static {v8}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    invoke-direct {p0, v8, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    iget-object v7, v4, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    if-eqz v7, :cond_5

    iget-object v7, v4, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    invoke-static {v7, v3, v10}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    iget-object v7, v4, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    :cond_5
    invoke-virtual {v4}, Lorg/codeaurora/ims/IFRequest;->release()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_14
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_9
        :pswitch_6
        :pswitch_2
        :pswitch_7
        :pswitch_b
        :pswitch_8
        :pswitch_b
        :pswitch_2
        :pswitch_2
        :pswitch_14
        :pswitch_a
        :pswitch_2
        :pswitch_b
        :pswitch_2
        :pswitch_e
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_14
        :pswitch_2
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_2
        :pswitch_15
        :pswitch_15
        :pswitch_2
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_2
        :pswitch_12
        :pswitch_13
        :pswitch_2
    .end packed-switch
.end method

.method protected processUnsolicited(Lorg/codeaurora/ims/ImsQmiIF$MsgTag;[B)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->getId()I

    move-result v1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    :try_start_0
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unrecognized unsol response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception processing unsol response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :pswitch_0
    if-eqz p2, :cond_0

    :try_start_1
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseCallRingBack([B)Ljava/lang/Object;

    move-result-object v2

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_1

    :cond_1
    :goto_1
    :pswitch_1
    return-void

    :pswitch_2
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseCallList([B)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :pswitch_3
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIsUnsolCallListPresent:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseCallList([B)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :pswitch_4
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseImsRegistration([B)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :pswitch_5
    const/4 v2, 0x0

    goto :goto_0

    :pswitch_6
    if-eqz p2, :cond_2

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseModifyCall([B)Ljava/lang/Object;

    move-result-object v2

    :cond_2
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mModifyCallRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/AsyncResult;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v5, v6, v2, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    :pswitch_7
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseHandover([B)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :pswitch_8
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->handleRefreshInfo([B)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :pswitch_9
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->handleSrvStatus([B)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :pswitch_a
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->handleTtyNotify([B)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :pswitch_b
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseSuppServiceNotification([B)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :pswitch_c
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->handleRadioStateChange([B)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :pswitch_d
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->handleMwi([B)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :pswitch_e
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->handleGeolocation([B)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :pswitch_f
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->handleRefreshViceInfo([B)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :pswitch_10
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->handleVoWiFiCallQuality([B)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :pswitch_11
    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->handleVopsInfo([B)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :pswitch_12
    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->handleSsacInfo([B)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_13
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->handleParticipantStatusInfo([B)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto/16 :goto_0

    :pswitch_14
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLog(I)V

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    :pswitch_15
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mCallStateRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    :pswitch_16
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRingRegistrant:Landroid/os/Registrant;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRingRegistrant:Landroid/os/Registrant;

    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    :pswitch_17
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLog(I)V

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    invoke-virtual {v4}, Landroid/os/Registrant;->notifyRegistrant()V

    goto/16 :goto_1

    :pswitch_18
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogvRet(ILjava/lang/Object;)V

    if-eqz v2, :cond_3

    check-cast v2, [I

    const/4 v4, 0x0

    aget v4, v2, v4

    if-ne v4, v9, :cond_4

    const/4 v0, 0x1

    :cond_3
    :goto_2
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/AsyncResult;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v5, v8, v6, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :pswitch_19
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v8, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    :pswitch_1a
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    if-eqz v2, :cond_1

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mHandoverStatusRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    :pswitch_1b
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    if-eqz v2, :cond_1

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRefreshConfInfoRegistrations:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    :pswitch_1c
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    if-eqz v2, :cond_1

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    :pswitch_1d
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    if-eqz v2, :cond_1

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mTtyStatusRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    :pswitch_1e
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsnRegistrant:Landroid/os/Registrant;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsnRegistrant:Landroid/os/Registrant;

    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    :pswitch_1f
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    if-eqz v2, :cond_1

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMwiRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    :pswitch_20
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    if-eqz v2, :cond_1

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mGeolocationRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    :pswitch_21
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    if-eqz v2, :cond_1

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRefreshViceInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    :pswitch_22
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    if-eqz v2, :cond_1

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoWiFiCallQualityRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    :pswitch_23
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    if-eqz v2, :cond_1

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsaccRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    :pswitch_24
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    if-eqz v2, :cond_1

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVopsRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    :pswitch_25
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    if-eqz v2, :cond_1

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mParticipantStatusRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_e
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc9
        :pswitch_15
        :pswitch_16
        :pswitch_18
        :pswitch_14
        :pswitch_17
        :pswitch_19
        :pswitch_1
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1e
        :pswitch_1d
        :pswitch_1
        :pswitch_1f
        :pswitch_21
        :pswitch_20
        :pswitch_22
        :pswitch_24
        :pswitch_23
        :pswitch_25
    .end packed-switch
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .locals 2

    const-string/jumbo v0, "queryClip"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    const/16 v0, 0x13

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .locals 5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queryCallForwardStatus cfReason= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " serviceClass = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;-><init>()V

    new-instance v2, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    invoke-direct {v2}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;-><init>()V

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    invoke-virtual {v2, p1}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setReason(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    invoke-virtual {v2, p2}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setServiceClass(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    invoke-static {p3}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setToa(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    if-eqz p3, :cond_0

    invoke-virtual {v2, p3}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setNumber(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setTimeSeconds(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->addInfo(Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->toByteArray()[B

    move-result-object v1

    const/16 v3, 0x16

    invoke-virtual {p0, v3, p4, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "queryCallWaiting serviceClass = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;-><init>()V

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->setServiceClass(I)Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->toByteArray()[B

    move-result-object v1

    const/16 v2, 0x18

    invoke-virtual {p0, v2, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 2

    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->facilityStringToInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0, p4}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(IILandroid/os/Message;)V

    return-void
.end method

.method public queryIncomingCallBarring(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 6

    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->facilityStringToInt(Ljava/lang/String;)I

    move-result v2

    const/4 v1, 0x3

    const/4 v3, 0x0

    move-object v0, p0

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(II[Ljava/lang/String;ILandroid/os/Message;)V

    return-void
.end method

.method public queryServiceStatus(Landroid/os/Message;)V
    .locals 2

    const/16 v0, 0x1d

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    return-void
.end method

.method public querySsacStatus(Landroid/os/Message;)V
    .locals 2

    const-string/jumbo v0, "querySsacStatus"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x31

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    return-void
.end method

.method public queryVoltePref(Landroid/os/Message;)V
    .locals 2

    const-string/jumbo v0, "queryVoltePref"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x33

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    return-void
.end method

.method public queryVopsStatus(Landroid/os/Message;)V
    .locals 2

    const-string/jumbo v0, "queryVopsStatus"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x30

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    return-void
.end method

.method public registerForGeolocationRequest(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mGeolocationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForHandoverStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mHandoverStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForModifyCall(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mModifyCallRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForMwi(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMwiRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForParticipantStatusInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mParticipantStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForPhoneId(I)V
    .locals 3

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerForPhoneId: mInstanceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " UNchanged"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mInstanceId:Ljava/lang/Integer;

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->disableSrvStatus()V

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSocket:Landroid/net/LocalSocket;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->shutdownInput()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerForPhoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' socket closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public registerForRefreshConfInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRefreshConfInfoRegistrations:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForSrvStatusUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForSsacStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsaccRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForTtyStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mTtyStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForVoWiFiCallQualityUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoWiFiCallQualityRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForVopsStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVopsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public rejectCall(Landroid/os/Message;)V
    .locals 2

    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    return-void
.end method

.method protected responseCallList([B)Ljava/lang/Object;
    .locals 19

    const/4 v14, 0x0

    const/4 v13, 0x0

    if-eqz p1, :cond_8

    :try_start_0
    invoke-static/range {p1 .. p1}, Lorg/codeaurora/ims/ImsQmiIF$CallList;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$CallList;

    move-result-object v4

    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsQmiIF$CallList;->getCallAttributesCount()I

    move-result v13

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15, v13}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v13, :cond_7

    :try_start_1
    invoke-virtual {v4, v8}, Lorg/codeaurora/ims/ImsQmiIF$CallList;->getCallAttributes(I)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    move-result-object v3

    new-instance v5, Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {v5}, Lorg/codeaurora/ims/DriverCallIms;-><init>()V

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getState()I

    move-result v16

    invoke-static/range {v16 .. v16}, Lorg/codeaurora/ims/DriverCallIms;->stateFromCall(I)Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v5, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIndex()I

    move-result v16

    move/from16 v0, v16

    iput v0, v5, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getToa()I

    move-result v16

    move/from16 v0, v16

    iput v0, v5, Lorg/codeaurora/ims/DriverCallIms;->TOA:I

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsMpty()Z

    move-result v16

    move/from16 v0, v16

    iput-boolean v0, v5, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsMT()Z

    move-result v16

    move/from16 v0, v16

    iput-boolean v0, v5, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getAls()I

    move-result v16

    move/from16 v0, v16

    iput v0, v5, Lorg/codeaurora/ims/DriverCallIms;->als:I

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsVoice()Z

    move-result v16

    move/from16 v0, v16

    iput-boolean v0, v5, Lorg/codeaurora/ims/DriverCallIms;->isVoice:Z

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsVoicePrivacy()Z

    move-result v16

    move/from16 v0, v16

    iput-boolean v0, v5, Lorg/codeaurora/ims/DriverCallIms;->isVoicePrivacy:Z

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getNumber()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v5, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getNumberPresentation()I

    move-result v12

    invoke-static {v12}, Lorg/codeaurora/ims/DriverCallIms;->presentationFromCLIP(I)I

    move-result v16

    move/from16 v0, v16

    iput v0, v5, Lorg/codeaurora/ims/DriverCallIms;->numberPresentation:I

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v5, Lorg/codeaurora/ims/DriverCallIms;->name:Ljava/lang/String;

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getNamePresentation()I

    move-result v16

    invoke-static/range {v16 .. v16}, Lorg/codeaurora/ims/DriverCallIms;->presentationFromCLIP(I)I

    move-result v16

    move/from16 v0, v16

    iput v0, v5, Lorg/codeaurora/ims/DriverCallIms;->namePresentation:I

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsEncrypted()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsEncrypted()Z

    move-result v16

    move/from16 v0, v16

    iput-boolean v0, v5, Lorg/codeaurora/ims/DriverCallIms;->isEncrypted:Z

    :goto_1
    new-instance v16, Lorg/codeaurora/ims/CallDetails;

    invoke-direct/range {v16 .. v16}, Lorg/codeaurora/ims/CallDetails;-><init>()V

    move-object/from16 v0, v16

    iput-object v0, v5, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v0, v5, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    move-object/from16 v16, v0

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getCallType()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    iget-object v0, v5, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    move-object/from16 v16, v0

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getCallDomain()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    iget-object v0, v5, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    move-object/from16 v16, v0

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getCallSubstate()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lorg/codeaurora/ims/ImsSenderRxr;->toCallSubstateConstants(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    iget-object v0, v5, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    move-object/from16 v16, v0

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getMediaId()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lorg/codeaurora/ims/CallDetails;->callMediaId:I

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getExtrasList()Ljava/util/List;

    move-result-object v7

    iget-object v0, v5, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    move-object/from16 v17, v0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    iget-object v0, v5, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    move-object/from16 v16, v0

    iget-object v0, v5, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    move-object/from16 v17, v0

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getLocalAbility()Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->copySrvStatusList([Lorg/codeaurora/ims/ServiceStatus;Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;)[Lorg/codeaurora/ims/ServiceStatus;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    iget-object v0, v5, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    move-object/from16 v16, v0

    iget-object v0, v5, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    move-object/from16 v17, v0

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getPeerAbility()Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->copySrvStatusList([Lorg/codeaurora/ims/ServiceStatus;Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;)[Lorg/codeaurora/ims/ServiceStatus;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    iget-object v0, v5, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    move-object/from16 v16, v0

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getCauseCode()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lorg/codeaurora/ims/CallDetails;->causeCode:I

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Call Details = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v5, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v5, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    move-object/from16 v16, v0

    iget v0, v5, Lorg/codeaurora/ims/DriverCallIms;->TOA:I

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v5, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    new-instance v16, Lcom/android/ims/ImsReasonInfo;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v16 .. v18}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    move-object/from16 v0, v16

    iput-object v0, v5, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Lcom/android/ims/ImsReasonInfo;

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasFailCause()Z

    move-result v16

    if-eqz v16, :cond_3

    const/4 v11, 0x0

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getFailCause()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasErrorDetails()Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getFailCause()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->getSipErrorString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v16, "Forbidden. Not Authorized for Service"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    const-string/jumbo v16, "Throwing ACTION_FORBIDDEN_NO_SERVICE_AUTHORIZATION intent."

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v16, "android.intent.action.ACTION_FORBIDDEN_NO_SERVICE_AUTHORIZATION"

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v16, 0x20000000

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsSenderRxr;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getFailCause()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasFailcause()Z

    move-result v16

    if-eqz v16, :cond_5

    iget-object v0, v5, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Lcom/android/ims/ImsReasonInfo;

    move-object/from16 v16, v0

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getFailCause()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->getImsReasonForCallFailCause(Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/ims/ImsReasonInfo;->mCode:I

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getFailCause()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasErrorDetails()Z

    move-result v16

    if-eqz v16, :cond_1

    iget-object v0, v5, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Lcom/android/ims/ImsReasonInfo;

    move-object/from16 v16, v0

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getFailCause()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->getSipErrorCode()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/ims/ImsReasonInfo;->mExtraCode:I

    :cond_1
    if-eqz v11, :cond_2

    iget-object v0, v5, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Lcom/android/ims/ImsReasonInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v11, v0, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    :cond_2
    new-instance v9, Lcom/android/ims/ImsReasonInfo;

    iget-object v0, v5, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Lcom/android/ims/ImsReasonInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/ims/ImsReasonInfo;->mCode:I

    move/from16 v16, v0

    iget-object v0, v5, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Lcom/android/ims/ImsReasonInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/ims/ImsReasonInfo;->mExtraCode:I

    move/from16 v17, v0

    iget-object v0, v5, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Lcom/android/ims/ImsReasonInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    move-object/from16 v18, v0

    move/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v9, v0, v1, v2}, Lcom/android/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v16, "com.android.imscontection.DISCONNECTED"

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v16, 0x20000000

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v16, "result"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v16, "stateChanged"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsSenderRxr;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string/jumbo v16, "CallFailCauseResponse sent to upper layer"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    :cond_3
    :goto_2
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, v5, Lorg/codeaurora/ims/DriverCallIms;->isVoicePrivacy:Z

    move/from16 v16, v0

    if-eqz v16, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/RegistrantList;->notifyRegistrants()V

    const-string/jumbo v16, "InCall VoicePrivacy is enabled"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_4
    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v5, Lorg/codeaurora/ims/DriverCallIms;->isEncrypted:Z
    :try_end_1
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v6

    move-object v14, v15

    :goto_4
    const-string/jumbo v16, "InvalidProtocolBufferException in Message Tag parsing "

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    :goto_5
    return-object v14

    :cond_5
    :try_start_2
    const-string/jumbo v16, "CallFailCauseResponse has no int error code!"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/RegistrantList;->notifyRegistrants()V

    const-string/jumbo v16, "InCall VoicePrivacy is disabled"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    invoke-static {v15}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_2
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v14, v15

    goto :goto_5

    :cond_8
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v13}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_5

    :catch_1
    move-exception v6

    goto :goto_4
.end method

.method protected responseGetClir([B)Ljava/lang/Object;
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$Clir;

    move-result-object v1

    const/4 v3, 0x2

    new-array v2, v3, [I

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->getParamN()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->getParamM()I

    move-result v3

    const/4 v4, 0x1

    aput v3, v2, v4
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const-string/jumbo v3, "InvalidProtocolBufferException in message tag parsing"

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-array v2, v3, [I

    goto :goto_0
.end method

.method protected responseGetColr([B)Ljava/lang/Object;
    .locals 3

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$Colr;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "InvalidProtocolBufferException in message tag parsing"

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected responseGetVoltePref([B)Ljava/lang/Object;
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    array-length v3, p1

    if-lt v3, v4, :cond_0

    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;

    move-result-object v1

    const/4 v3, 0x1

    new-array v2, v3, [I

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;->getMode()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const-string/jumbo v3, "InvalidProtocolBufferException in handleVoWiFiCallQuality parsing"

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected responseHandover([B)Ljava/lang/Object;
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$Handover;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "InvalidProtocolBufferException in responseHandover parsing"

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected responseImsRegistration([B)Ljava/lang/Object;
    .locals 4

    const-string/jumbo v2, " responseImsRegistration"

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$Registration;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Ims registration"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "InvalidProtocolBufferException in message tag parsing"

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "responseImsRegistration error"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected responseQueryCallForward([B)Ljava/lang/Object;
    .locals 11

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    if-eqz p1, :cond_2

    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;

    move-result-object v4

    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->getInfoCount()I

    move-result v6

    new-array v5, v6, [Lcom/android/internal/telephony/CallForwardInfo;

    new-array v8, v6, [Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v6, :cond_1

    invoke-virtual {v4, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->getInfo(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    move-result-object v0

    new-instance v9, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v9}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    aput-object v9, v5, v3

    aget-object v9, v5, v3

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getStatus()I

    move-result v10

    iput v10, v9, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    aget-object v9, v5, v3

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getReason()I

    move-result v10

    iput v10, v9, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    aget-object v9, v5, v3

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getServiceClass()I

    move-result v10

    iput v10, v9, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    aget-object v9, v5, v3

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getToa()I

    move-result v10

    iput v10, v9, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    aget-object v9, v5, v3

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getNumber()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    aget-object v9, v5, v3

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getTimeSeconds()I

    move-result v10

    iput v10, v9, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasCallFwdTimerStart()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasCallFwdTimerEnd()Z

    move-result v9

    if-eqz v9, :cond_0

    const-string/jumbo v9, "responseQueryCallForward for Timer"

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getCallFwdTimerStart()Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    move-result-object v7

    new-instance v9, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    invoke-direct {v9}, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;-><init>()V

    aput-object v9, v8, v3

    aget-object v9, v8, v3

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getStatus()I

    move-result v10

    iput v10, v9, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->status:I

    aget-object v9, v8, v3

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getReason()I

    move-result v10

    iput v10, v9, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->reason:I

    aget-object v9, v8, v3

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getServiceClass()I

    move-result v10

    iput v10, v9, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->serviceClass:I

    aget-object v9, v8, v3

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getNumber()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->number:Ljava/lang/String;

    aget-object v9, v8, v3

    invoke-virtual {v7}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->getHour()I

    move-result v10

    iput v10, v9, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->startHour:I

    aget-object v9, v8, v3

    invoke-virtual {v7}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->getMinute()I

    move-result v10

    iput v10, v9, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->startMinute:I

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getCallFwdTimerEnd()Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    move-result-object v1

    aget-object v9, v8, v3

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->getHour()I

    move-result v10

    iput v10, v9, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->endHour:I

    aget-object v9, v8, v3

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->getMinute()I

    move-result v10

    iput v10, v9, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->endMinute:I
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v8

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v9, "InvalidProtocolBufferException in message tag parsing"

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-object v5

    :cond_2
    const/4 v9, 0x0

    new-array v5, v9, [Lcom/android/internal/telephony/CallForwardInfo;

    goto :goto_1
.end method

.method protected responseQueryCallWaiting([B)Ljava/lang/Object;
    .locals 6

    const/4 v4, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;

    move-result-object v3

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->getServiceClass()Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    move-result-object v2

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->getServiceStatus()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    new-array v1, v4, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v4, v1, v5

    :goto_0
    return-object v1

    :cond_0
    const/4 v4, 0x2

    new-array v1, v4, [I

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v4, v1, v5

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->getServiceClass()I

    move-result v4

    const/4 v5, 0x1

    aput v4, v1, v5
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v4, "InvalidProtocolBufferException in message tag parsing"

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-array v1, v4, [I

    goto :goto_0
.end method

.method protected responseQueryClip([B)Ljava/lang/Object;
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "InvalidProtocolBufferException in message tag parsing"

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    :cond_0
    return-object v2
.end method

.method protected responseSuppServiceNotification([B)Ljava/lang/Object;
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "InvalidProtocolBufferException in responseSuppServiceNotification parsing"

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected responseSuppSvcStatus([B)Ljava/lang/Object;
    .locals 3

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "InvalidProtocolBufferException in message tag parsing"

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "responseSuppSvcStatus suppSvcStatusInfo null"

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resume(Landroid/os/Message;I)V
    .locals 3

    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Resume;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Resume;-><init>()V

    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsQmiIF$Resume;->setCallId(I)Lorg/codeaurora/ims/ImsQmiIF$Resume;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$Resume;->toByteArray()[B

    move-result-object v1

    const/16 v2, 0x26

    invoke-virtual {p0, v2, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    return-void
.end method

.method public send(Lorg/codeaurora/ims/IFRequest;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSocket:Landroid/net/LocalSocket;

    if-nez v1, :cond_0

    const-string/jumbo v1, "socket connection with ril is null"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Lorg/codeaurora/ims/IFRequest;->onError(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lorg/codeaurora/ims/IFRequest;->release()V

    return-void

    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSender:Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;

    invoke-virtual {v1, v2, p1}, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->acquireWakeLock()V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public sendConfigRequest(IIZILjava/lang/String;ILandroid/os/Message;)V
    .locals 2

    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;-><init>()V

    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->setItem(I)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    invoke-virtual {v0, p3}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->setBoolValue(Z)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    invoke-virtual {v0, p4}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->setIntValue(I)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    if-eqz p5, :cond_0

    invoke-virtual {v0, p5}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->setStringValue(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    :cond_0
    invoke-virtual {v0, p6}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->setErrorCause(I)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p0, p1, p7, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 3

    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;-><init>()V

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->setDtmf(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Dtmf;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->toByteArray()[B

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {p0, v2, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    return-void
.end method

.method public declared-synchronized sendGeolocationInfo(DDLandroid/location/Address;Landroid/os/Message;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendGeolocationInfo [Lat="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " | Lon="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;-><init>()V

    if-eqz p5, :cond_5

    invoke-virtual {p5}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->setCity(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    const-string/jumbo v5, " Address="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p5}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->setState(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    const-string/jumbo v5, " State="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p5}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->setCountry(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    const-string/jumbo v5, " Country="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p5}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->setPostalCode(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    const-string/jumbo v5, " Postal Code="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p5}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->setCountryCode(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    const-string/jumbo v5, " Country Code="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;-><init>()V

    invoke-virtual {v1, p1, p2}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->setLat(D)Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;

    invoke-virtual {v1, p3, p4}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->setLon(D)Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;

    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->setAddressInfo(Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;)Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->toByteArray()[B

    move-result-object v2

    const/16 v5, 0x2e

    invoke-virtual {p0, v5, p6, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    :try_start_1
    const-string/jumbo v5, " Null Address!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public sendImsRegistrationState(ILandroid/os/Message;)V
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendImsRegistration imsRegState= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Registration;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;-><init>()V

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->setState(I)Lorg/codeaurora/ims/ImsQmiIF$Registration;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->toByteArray()[B

    move-result-object v1

    const/16 v2, 0x1a

    invoke-virtual {p0, v2, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setCLIR clirmode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Clir;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Clir;-><init>()V

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->setParamN(I)Lorg/codeaurora/ims/ImsQmiIF$Clir;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->toByteArray()[B

    move-result-object v1

    const/16 v2, 0x15

    invoke-virtual {p0, v2, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    return-void
.end method

.method public setCOLR(ILandroid/os/Message;)V
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setCOLR presentationValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Colr;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Colr;-><init>()V

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->setPresentation(I)Lorg/codeaurora/ims/ImsQmiIF$Colr;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->toByteArray()[B

    move-result-object v1

    const/16 v2, 0x22

    invoke-virtual {p0, v2, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .locals 5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCallForward cfReason= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " serviceClass = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "timeSeconds = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;-><init>()V

    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;-><init>()V

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    invoke-virtual {v1, p2}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setReason(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    invoke-virtual {v1, p3}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setServiceClass(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    invoke-static {p4}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setToa(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    if-eqz p4, :cond_0

    invoke-virtual {v1, p4}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setNumber(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    :cond_0
    invoke-virtual {v1, p5}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setTimeSeconds(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->addInfo(Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->toByteArray()[B

    move-result-object v2

    const/16 v3, 0x17

    invoke-virtual {p0, v3, p6, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    return-void
.end method

.method public setCallForwardUncondTimer(IIIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setCallForwardUncondTimer cfReason= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " serviceClass = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "number = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p8

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "startHour = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "startMinute = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "endHour = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "endMin = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;-><init>()V

    new-instance v2, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    invoke-direct {v2}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;-><init>()V

    invoke-virtual {v2, p5}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    invoke-virtual {v2, p6}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setReason(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    invoke-virtual {v2, p7}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setServiceClass(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    invoke-static/range {p8 .. p8}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setToa(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    if-eqz p8, :cond_0

    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setNumber(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setTimeSeconds(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    new-instance v5, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    invoke-direct {v5}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;-><init>()V

    invoke-virtual {v5, p1}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->setHour(I)Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    invoke-virtual {v5, p2}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->setMinute(I)Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    invoke-virtual {v2, v5}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setCallFwdTimerStart(Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    new-instance v3, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    invoke-direct {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;-><init>()V

    invoke-virtual {v3, p3}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->setHour(I)Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    invoke-virtual {v3, p4}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->setMinute(I)Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setCallFwdTimerEnd(Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->addInfo(Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->toByteArray()[B

    move-result-object v4

    const/16 v6, 0x17

    move-object/from16 v0, p9

    invoke-virtual {p0, v6, v0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCallWaiting enable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "serviceClass = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    new-instance v2, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;

    invoke-direct {v2}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;-><init>()V

    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;-><init>()V

    invoke-virtual {v1, p2}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->setServiceClass(I)Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->setServiceStatus(I)Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;

    invoke-virtual {v2, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->setServiceClass(Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;)Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->toByteArray()[B

    move-result-object v0

    const/16 v3, 0x19

    invoke-virtual {p0, v3, p3, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    return-void

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->facilityStringToInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1, p5}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(IILandroid/os/Message;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public setHandoverConfig(ILandroid/os/Message;)V
    .locals 4

    const-string/jumbo v1, "ImsSenderRxr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setHandoverConfig hoConfig: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;-><init>()V

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;->setHoConfig(I)Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;->toByteArray()[B

    move-result-object v1

    const/16 v2, 0x35

    invoke-virtual {p0, v2, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    return-void
.end method

.method public setIncomingCallBarring(ILjava/lang/String;[Ljava/lang/String;ILandroid/os/Message;)V
    .locals 6

    invoke-static {p2}, Lorg/codeaurora/ims/ImsSenderRxr;->facilityStringToInt(Ljava/lang/String;)I

    move-result v2

    move-object v0, p0

    move v1, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(II[Ljava/lang/String;ILandroid/os/Message;)V

    return-void
.end method

.method public setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsnRegistrant:Landroid/os/Registrant;

    return-void
.end method

.method public setPhoneType(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPhoneType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " old value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    iput p1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneType:I

    return-void
.end method

.method public setServiceStatus(Landroid/os/Message;IIII)V
    .locals 4

    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;-><init>()V

    invoke-virtual {v1, p3}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->setNetworkMode(I)Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    invoke-virtual {v1, p4}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    invoke-virtual {v1, p5}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->setRestrictionCause(I)Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Info;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Info;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->setIsValid(Z)Lorg/codeaurora/ims/ImsQmiIF$Info;

    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->setCallType(I)Lorg/codeaurora/ims/ImsQmiIF$Info;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Info;->addAccTechStatus(Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;)Lorg/codeaurora/ims/ImsQmiIF$Info;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->toByteArray()[B

    move-result-object v2

    const/16 v3, 0x1e

    invoke-virtual {p0, v3, p1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    return-void
.end method

.method public setSuppServiceNotifications(ZLandroid/os/Message;)V
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSuppServiceNotifications enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;-><init>()V

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;->setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;->toByteArray()[B

    move-result-object v0

    const/16 v2, 0x1b

    invoke-virtual {p0, v2, p2, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setSuppSvc(Ljava/lang/String;ZLandroid/os/Message;)V
    .locals 2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->facilityStringToInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(IILandroid/os/Message;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public setUiTTYMode(ILandroid/os/Message;)V
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setUiTTYMode uittyMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;-><init>()V

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;->setMode(I)Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;->toByteArray()[B

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {p0, v2, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    return-void
.end method

.method public setWifiCallingPreference(IILandroid/os/Message;)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWifiCallingPreference wifiCallingStauts : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " wifiCallingPreference : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;-><init>()V

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;

    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->setPreference(I)Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->toByteArray()[B

    move-result-object v1

    const/16 v2, 0x2b

    invoke-virtual {p0, v2, p3, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    return-void
.end method

.method public startDtmf(CLandroid/os/Message;)V
    .locals 3

    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;-><init>()V

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->setDtmf(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Dtmf;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->toByteArray()[B

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {p0, v2, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    return-void
.end method

.method public stopDtmf(Landroid/os/Message;)V
    .locals 2

    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    return-void
.end method

.method public suppSvcStatus(IILandroid/os/Message;)V
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "suppSvcStatus operationType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " facility = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;-><init>()V

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->setOperationType(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;

    invoke-virtual {v1, p2}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->setFacilityType(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->toByteArray()[B

    move-result-object v0

    const/16 v2, 0x1f

    invoke-virtual {p0, v2, p3, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    return-void
.end method

.method public suppSvcStatus(II[Ljava/lang/String;ILandroid/os/Message;)V
    .locals 8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "suppSvcStatus operationType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " facility = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "serviceClassValue = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    new-instance v5, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;

    invoke-direct {v5}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;-><init>()V

    invoke-virtual {v5, p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->setOperationType(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;

    invoke-virtual {v5, p2}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->setFacilityType(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;

    new-instance v3, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    invoke-direct {v3}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;-><init>()V

    invoke-virtual {v3, p4}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->setServiceClass(I)Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;-><init>()V

    invoke-virtual {v1, v3}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->setServiceClass(Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;)Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    if-eqz p3, :cond_0

    const/4 v2, 0x0

    :goto_0
    array-length v6, p3

    if-ge v2, v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "icbnum: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p3, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "at index: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;-><init>()V

    aget-object v6, p3, v2

    invoke-virtual {v0, v6}, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;->setNumber(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CbNumList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->addCbNumList(Lorg/codeaurora/ims/ImsQmiIF$CbNumList;)Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v5, v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->setCbNumListType(Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;

    invoke-virtual {v5}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->toByteArray()[B

    move-result-object v4

    const/16 v6, 0x1f

    invoke-virtual {p0, v6, p5, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    return-void
.end method

.method public switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
    .locals 3

    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;-><init>()V

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->toByteArray()[B

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {p0, v2, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    return-void
.end method

.method public switchWaitingOrHoldingAndActive(Landroid/os/Message;I)V
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "switchWaitingOrHoldingAndActive callType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;-><init>()V

    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->setCallType(I)Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->toByteArray()[B

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {p0, v2, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    return-void
.end method

.method public unSetOnSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsnRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    return-void
.end method

.method public unregisterForGeolocationRequest(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mGeolocationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForHandoverStatusChanged(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mHandoverStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForModifyCall(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mModifyCallRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForMwi(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMwiRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForParticipantStatusInfo(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mParticipantStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForRefreshConfInfo(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRefreshConfInfoRegistrations:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSrvStatusUpdate(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSsacStatusChanged(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsaccRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForTtyStatusChanged(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mTtyStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForVoWiFiCallQualityUpdate(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoWiFiCallQualityRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForVopsStatusChanged(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVopsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unsljLog(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    return-void
.end method

.method public unsljLogMore(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    return-void
.end method

.method public unsljLogRet(ILjava/lang/Object;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    return-void
.end method

.method public unsljLogvRet(ILjava/lang/Object;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    return-void
.end method

.method public updateVoltePref(ILandroid/os/Message;)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateVoltePref as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;-><init>()V

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;->setMode(I)Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;->toByteArray()[B

    move-result-object v1

    const/16 v2, 0x32

    invoke-virtual {p0, v2, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    return-void
.end method
