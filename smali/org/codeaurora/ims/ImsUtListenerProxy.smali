.class public Lorg/codeaurora/ims/ImsUtListenerProxy;
.super Lcom/android/ims/internal/IImsUtListener$Stub;
.source "ImsUtListenerProxy.java"


# instance fields
.field public mListener:Lcom/android/ims/internal/IImsUtListener;


# direct methods
.method static synthetic -wrap0(Lorg/codeaurora/ims/ImsUtListenerProxy;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsUtListenerProxy;->handleError(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/ims/internal/IImsUtListener$Stub;-><init>()V

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
.method startThread(Ljava/lang/Runnable;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    const-string/jumbo v1, "ImsUtListenerProxyThread"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public utConfigurationCallBarringQueried(Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsSsInfo;)V
    .locals 2

    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtListenerProxy;->mListener:Lcom/android/ims/internal/IImsUtListener;

    if-eqz v1, :cond_0

    new-instance v0, Lorg/codeaurora/ims/ImsUtListenerProxy$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsUtListenerProxy$5;-><init>(Lorg/codeaurora/ims/ImsUtListenerProxy;Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsSsInfo;)V

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsUtListenerProxy;->startThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public utConfigurationCallForwardQueried(Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsCallForwardInfo;)V
    .locals 2

    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtListenerProxy;->mListener:Lcom/android/ims/internal/IImsUtListener;

    if-eqz v1, :cond_0

    new-instance v0, Lorg/codeaurora/ims/ImsUtListenerProxy$6;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsUtListenerProxy$6;-><init>(Lorg/codeaurora/ims/ImsUtListenerProxy;Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsCallForwardInfo;)V

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsUtListenerProxy;->startThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public utConfigurationCallWaitingQueried(Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsSsInfo;)V
    .locals 2

    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtListenerProxy;->mListener:Lcom/android/ims/internal/IImsUtListener;

    if-eqz v1, :cond_0

    new-instance v0, Lorg/codeaurora/ims/ImsUtListenerProxy$7;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsUtListenerProxy$7;-><init>(Lorg/codeaurora/ims/ImsUtListenerProxy;Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsSsInfo;)V

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsUtListenerProxy;->startThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V
    .locals 2

    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtListenerProxy;->mListener:Lcom/android/ims/internal/IImsUtListener;

    if-eqz v1, :cond_0

    new-instance v0, Lorg/codeaurora/ims/ImsUtListenerProxy$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsUtListenerProxy$3;-><init>(Lorg/codeaurora/ims/ImsUtListenerProxy;Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsUtListenerProxy;->startThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    .locals 2

    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtListenerProxy;->mListener:Lcom/android/ims/internal/IImsUtListener;

    if-eqz v1, :cond_0

    new-instance v0, Lorg/codeaurora/ims/ImsUtListenerProxy$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsUtListenerProxy$4;-><init>(Lorg/codeaurora/ims/ImsUtListenerProxy;Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsUtListenerProxy;->startThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    .locals 2

    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtListenerProxy;->mListener:Lcom/android/ims/internal/IImsUtListener;

    if-eqz v1, :cond_0

    new-instance v0, Lorg/codeaurora/ims/ImsUtListenerProxy$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsUtListenerProxy$2;-><init>(Lorg/codeaurora/ims/ImsUtListenerProxy;Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsUtListenerProxy;->startThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V
    .locals 2

    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtListenerProxy;->mListener:Lcom/android/ims/internal/IImsUtListener;

    if-eqz v1, :cond_0

    new-instance v0, Lorg/codeaurora/ims/ImsUtListenerProxy$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsUtListenerProxy$1;-><init>(Lorg/codeaurora/ims/ImsUtListenerProxy;Lcom/android/ims/internal/IImsUt;I)V

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsUtListenerProxy;->startThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
