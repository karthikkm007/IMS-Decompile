.class public Lorg/codeaurora/ims/ImsCallSessionListenerProxy;
.super Landroid/telephony/ims/IImsCallSessionListener$Stub;
.source "ImsCallSessionListenerProxy.java"


# instance fields
.field private mCallbackHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field public mListener:Landroid/telephony/ims/IImsCallSessionListener;


# direct methods
.method static synthetic -wrap0(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->cleanup()V

    return-void
.end method

.method static synthetic -wrap1(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->handleError(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/telephony/ims/IImsCallSessionListener$Stub;-><init>()V

    .line 45
    const-string/jumbo v0, "Constructor: start handler thread for callbacks."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mHandlerThread:Landroid/os/HandlerThread;

    .line 47
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 48
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mCallbackHandler:Landroid/os/Handler;

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;)V
    .locals 2
    .param p1, "copyFrom"    # Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/telephony/ims/IImsCallSessionListener$Stub;-><init>()V

    .line 52
    const-string/jumbo v0, "Copy Constructor: Pass the thread and callback handler refs."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v0, p1, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/IImsCallSessionListener;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/IImsCallSessionListener;

    .line 54
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mHandlerThread:Landroid/os/HandlerThread;

    .line 55
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 56
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mCallbackHandler:Landroid/os/Handler;

    .line 51
    return-void
.end method

.method private cleanup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 597
    const-string/jumbo v0, "cleanup"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 598
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 600
    iput-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mHandlerThread:Landroid/os/HandlerThread;

    .line 601
    iput-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mCallbackHandler:Landroid/os/Handler;

    .line 596
    :cond_0
    return-void
.end method

.method private handleError(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 613
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

    .line 612
    return-void
.end method


# virtual methods
.method public callSessionConferenceExtendFailed(Landroid/telephony/ims/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 471
    return-void
.end method

.method public callSessionConferenceExtendReceived(Landroid/telephony/ims/IImsCallSession;Landroid/telephony/ims/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/IImsCallSession;
    .param p2, "newSession"    # Landroid/telephony/ims/IImsCallSession;
    .param p3, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 473
    return-void
.end method

.method public callSessionConferenceExtended(Landroid/telephony/ims/IImsCallSession;Landroid/telephony/ims/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/IImsCallSession;
    .param p2, "newSession"    # Landroid/telephony/ims/IImsCallSession;
    .param p3, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 469
    return-void
.end method

.method public callSessionConferenceStateUpdated(Landroid/telephony/ims/IImsCallSession;Lcom/android/ims/ImsConferenceState;)V
    .locals 2
    .param p1, "session"    # Landroid/telephony/ims/IImsCallSession;
    .param p2, "state"    # Lcom/android/ims/ImsConferenceState;

    .prologue
    .line 524
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 525
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$21;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$21;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Landroid/telephony/ims/IImsCallSession;Lcom/android/ims/ImsConferenceState;)V

    .line 536
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 523
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionHandover(Landroid/telephony/ims/IImsCallSession;IILcom/android/ims/ImsReasonInfo;)V
    .locals 6
    .param p1, "session"    # Landroid/telephony/ims/IImsCallSession;
    .param p2, "srcAccessTech"    # I
    .param p3, "targetAccessTech"    # I
    .param p4, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 145
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 146
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$5;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$5;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Landroid/telephony/ims/IImsCallSession;IILcom/android/ims/ImsReasonInfo;)V

    .line 158
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 144
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionHandoverFailed(Landroid/telephony/ims/IImsCallSession;IILcom/android/ims/ImsReasonInfo;)V
    .locals 6
    .param p1, "session"    # Landroid/telephony/ims/IImsCallSession;
    .param p2, "srcAccessTech"    # I
    .param p3, "targetAccessTech"    # I
    .param p4, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 165
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 166
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$6;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$6;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Landroid/telephony/ims/IImsCallSession;IILcom/android/ims/ImsReasonInfo;)V

    .line 178
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 164
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionHeld(Landroid/telephony/ims/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "session"    # Landroid/telephony/ims/IImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 246
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 247
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$8;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$8;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Landroid/telephony/ims/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 258
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 245
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionHoldFailed(Landroid/telephony/ims/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "session"    # Landroid/telephony/ims/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 265
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 266
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$9;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$9;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Landroid/telephony/ims/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 276
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 264
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionHoldReceived(Landroid/telephony/ims/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "session"    # Landroid/telephony/ims/IImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 283
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 284
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$10;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$10;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Landroid/telephony/ims/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 294
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 282
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionInviteParticipantsRequestDelivered(Landroid/telephony/ims/IImsCallSession;)V
    .locals 2
    .param p1, "session"    # Landroid/telephony/ims/IImsCallSession;

    .prologue
    .line 479
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 480
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$19;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$19;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Landroid/telephony/ims/IImsCallSession;)V

    .line 492
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 478
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionInviteParticipantsRequestFailed(Landroid/telephony/ims/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "session"    # Landroid/telephony/ims/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 498
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 499
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$20;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$20;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Landroid/telephony/ims/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 511
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 497
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionMergeComplete(Landroid/telephony/ims/IImsCallSession;)V
    .locals 2
    .param p1, "activeCallSession"    # Landroid/telephony/ims/IImsCallSession;

    .prologue
    .line 380
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 381
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$15;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$15;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Landroid/telephony/ims/IImsCallSession;)V

    .line 392
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 379
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionMergeFailed(Landroid/telephony/ims/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "session"    # Landroid/telephony/ims/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 404
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 405
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$16;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$16;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Landroid/telephony/ims/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 416
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 403
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionMergeStarted(Landroid/telephony/ims/IImsCallSession;Landroid/telephony/ims/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "session"    # Landroid/telephony/ims/IImsCallSession;
    .param p2, "newSession"    # Landroid/telephony/ims/IImsCallSession;
    .param p3, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 358
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 359
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$14;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$14;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Landroid/telephony/ims/IImsCallSession;Landroid/telephony/ims/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 370
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 357
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionMultipartyStateChanged(Landroid/telephony/ims/IImsCallSession;Z)V
    .locals 2
    .param p1, "session"    # Landroid/telephony/ims/IImsCallSession;
    .param p2, "isMultiParty"    # Z

    .prologue
    .line 569
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 570
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$23;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$23;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Landroid/telephony/ims/IImsCallSession;Z)V

    .line 581
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 567
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionProgressing(Landroid/telephony/ims/IImsCallSession;Lcom/android/ims/ImsStreamMediaProfile;)V
    .locals 2
    .param p1, "session"    # Landroid/telephony/ims/IImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsStreamMediaProfile;

    .prologue
    .line 81
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 82
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$2;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$2;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Landroid/telephony/ims/IImsCallSession;Lcom/android/ims/ImsStreamMediaProfile;)V

    .line 93
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 79
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionRemoveParticipantsRequestDelivered(Landroid/telephony/ims/IImsCallSession;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/IImsCallSession;

    .prologue
    .line 515
    return-void
.end method

.method public callSessionRemoveParticipantsRequestFailed(Landroid/telephony/ims/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 517
    return-void
.end method

.method public callSessionResumeFailed(Landroid/telephony/ims/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "session"    # Landroid/telephony/ims/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 317
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 318
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$12;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$12;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Landroid/telephony/ims/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 328
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 316
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionResumeReceived(Landroid/telephony/ims/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "session"    # Landroid/telephony/ims/IImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 334
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 335
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$13;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$13;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Landroid/telephony/ims/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 345
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 333
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionResumed(Landroid/telephony/ims/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "session"    # Landroid/telephony/ims/IImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 300
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 301
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$11;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$11;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Landroid/telephony/ims/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 311
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 299
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionRetryErrorReceived(Landroid/telephony/ims/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "session"    # Landroid/telephony/ims/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 545
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 546
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$22;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$22;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;)V

    .line 556
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 544
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionStartFailed(Landroid/telephony/ims/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "session"    # Landroid/telephony/ims/IImsCallSession;
    .param p2, "reason"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 62
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 63
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$1;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Landroid/telephony/ims/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 73
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 61
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionStarted(Landroid/telephony/ims/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "session"    # Landroid/telephony/ims/IImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 101
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 102
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$3;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$3;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Landroid/telephony/ims/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 113
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 99
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionSuppServiceReceived(Landroid/telephony/ims/IImsCallSession;Lcom/android/ims/ImsSuppServiceNotification;)V
    .locals 2
    .param p1, "session"    # Landroid/telephony/ims/IImsCallSession;
    .param p2, "suppServiceInfo"    # Lcom/android/ims/ImsSuppServiceNotification;

    .prologue
    .line 445
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 446
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$18;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$18;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Landroid/telephony/ims/IImsCallSession;Lcom/android/ims/ImsSuppServiceNotification;)V

    .line 456
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 444
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionTerminated(Landroid/telephony/ims/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "session"    # Landroid/telephony/ims/IImsCallSession;
    .param p2, "reason"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 120
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 121
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$4;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$4;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Landroid/telephony/ims/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 132
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 119
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionTtyModeReceived(Landroid/telephony/ims/IImsCallSession;I)V
    .locals 2
    .param p1, "session"    # Landroid/telephony/ims/IImsCallSession;
    .param p2, "ttyMode"    # I

    .prologue
    .line 185
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 186
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$7;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$7;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Landroid/telephony/ims/IImsCallSession;I)V

    .line 197
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 184
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionUpdateFailed(Landroid/telephony/ims/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 461
    return-void
.end method

.method public callSessionUpdateReceived(Landroid/telephony/ims/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/IImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 463
    return-void
.end method

.method public callSessionUpdated(Landroid/telephony/ims/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "session"    # Landroid/telephony/ims/IImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 425
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 426
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$17;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$17;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Landroid/telephony/ims/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 436
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 424
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionUssdMessageReceived(Landroid/telephony/ims/IImsCallSession;ILjava/lang/String;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/IImsCallSession;
    .param p2, "mode"    # I
    .param p3, "ussdMessage"    # Ljava/lang/String;

    .prologue
    .line 138
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 586
    const-string/jumbo v1, "dispose"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 587
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$24;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$24;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;)V

    .line 593
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 585
    return-void
.end method

.method postRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 606
    const-string/jumbo v0, "posting to handler"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mCallbackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 605
    :cond_0
    return-void
.end method
