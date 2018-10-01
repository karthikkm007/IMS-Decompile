.class public Lorg/codeaurora/ims/ImsCallSessionListenerProxy;
.super Lcom/android/ims/internal/IImsCallSessionListener$Stub;
.source "ImsCallSessionListenerProxy.java"


# instance fields
.field private mCallbackHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field public mListener:Lcom/android/ims/internal/IImsCallSessionListener;


# direct methods
.method static synthetic -wrap0(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->cleanup()V

    return-void
.end method

.method static synthetic -wrap1(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->handleError(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;-><init>()V

    const-string/jumbo v0, "Constructor: start handler thread for callbacks."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mCallbackHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;-><init>()V

    const-string/jumbo v0, "Copy Constructor: Pass the thread and callback handler refs."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mCallbackHandler:Landroid/os/Handler;

    return-void
.end method

.method private cleanup()V
    .locals 2

    const/4 v1, 0x0

    const-string/jumbo v0, "cleanup"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    iput-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mHandlerThread:Landroid/os/HandlerThread;

    iput-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mCallbackHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method private handleError(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public callSessionConferenceExtendFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0

    return-void
.end method

.method public callSessionConferenceExtendReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 0

    return-void
.end method

.method public callSessionConferenceExtended(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 0

    return-void
.end method

.method public callSessionConferenceStateUpdated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsConferenceState;)V
    .locals 2

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$21;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$21;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsConferenceState;)V

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public callSessionHandover(Lcom/android/ims/internal/IImsCallSession;IILcom/android/ims/ImsReasonInfo;)V
    .locals 6

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$5;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$5;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;IILcom/android/ims/ImsReasonInfo;)V

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public callSessionHandoverFailed(Lcom/android/ims/internal/IImsCallSession;IILcom/android/ims/ImsReasonInfo;)V
    .locals 6

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$6;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$6;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;IILcom/android/ims/ImsReasonInfo;)V

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public callSessionHeld(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$8;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$8;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public callSessionHoldFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$9;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$9;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public callSessionHoldReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$10;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$10;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public callSessionInviteParticipantsRequestDelivered(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 2

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$19;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$19;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;)V

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public callSessionInviteParticipantsRequestFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$20;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$20;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 2

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$15;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$15;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;)V

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public callSessionMergeFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$16;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$16;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public callSessionMergeStarted(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$14;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$14;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public callSessionMultipartyStateChanged(Lcom/android/ims/internal/IImsCallSession;Z)V
    .locals 2

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$23;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$23;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Z)V

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public callSessionProgressing(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsStreamMediaProfile;)V
    .locals 2

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$2;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$2;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsStreamMediaProfile;)V

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public callSessionRemoveParticipantsRequestDelivered(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 0

    return-void
.end method

.method public callSessionRemoveParticipantsRequestFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0

    return-void
.end method

.method public callSessionResumeFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$12;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$12;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public callSessionResumeReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$13;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$13;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public callSessionResumed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$11;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$11;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public callSessionRetryErrorReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$22;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$22;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;)V

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public callSessionStartFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$1;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public callSessionStarted(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$3;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$3;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public callSessionSuppServiceReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsSuppServiceNotification;)V
    .locals 2

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$18;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$18;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsSuppServiceNotification;)V

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public callSessionTerminated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$4;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$4;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public callSessionTtyModeReceived(Lcom/android/ims/internal/IImsCallSession;I)V
    .locals 2

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$7;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$7;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;I)V

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public callSessionUpdateFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0

    return-void
.end method

.method public callSessionUpdateReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 0

    return-void
.end method

.method public callSessionUpdated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$17;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$17;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public callSessionUssdMessageReceived(Lcom/android/ims/internal/IImsCallSession;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public dispose()V
    .locals 2

    const-string/jumbo v1, "dispose"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$24;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$24;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;)V

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method postRunnable(Ljava/lang/Runnable;)V
    .locals 1

    const-string/jumbo v0, "posting to handler"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mCallbackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
