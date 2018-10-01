.class public abstract Lorg/codeaurora/ims/QtiImsExtBase;
.super Ljava/lang/Object;
.source "QtiImsExtBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;
    }
.end annotation


# instance fields
.field private mQtiImsExtBinder:Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBinder()Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtBase;->mQtiImsExtBinder:Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;

    if-nez v0, :cond_0

    new-instance v0, Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;-><init>(Lorg/codeaurora/ims/QtiImsExtBase;)V

    iput-object v0, p0, Lorg/codeaurora/ims/QtiImsExtBase;->mQtiImsExtBinder:Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;

    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtBase;->mQtiImsExtBinder:Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;

    return-object v0
.end method

.method protected onGetCallForwardUncondTimer(IILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0

    return-void
.end method

.method protected onGetHandoverConfig(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0

    return-void
.end method

.method protected onGetImsPhoneId()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected onGetPacketCount(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0

    return-void
.end method

.method protected onGetPacketErrorCount(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0

    return-void
.end method

.method protected onQuerySsacStatus(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0

    return-void
.end method

.method protected onQueryVoltePreference(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0

    return-void
.end method

.method protected onQueryVopsStatus(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0

    return-void
.end method

.method protected onRegisterForParticipantStatusInfo(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0

    return-void
.end method

.method protected onRegisterForViceRefreshInfo(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0

    return-void
.end method

.method protected onResumePendingCall(I)V
    .locals 0

    return-void
.end method

.method protected onSendCallDeflectRequest(ILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0

    return-void
.end method

.method protected onSendCallTransferRequest(IILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0

    return-void
.end method

.method protected onSetCallForwardUncondTimer(IIIIIIILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0

    return-void
.end method

.method protected onSetHandoverConfig(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0

    return-void
.end method

.method protected onUpdateVoltePreference(IILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0

    return-void
.end method
