.class public final Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;
.super Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;
.source "QtiImsExtBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/QtiImsExtBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "QtiImsExtBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/QtiImsExtBase;


# direct methods
.method public constructor <init>(Lorg/codeaurora/ims/QtiImsExtBase;)V
    .locals 0

    iput-object p1, p0, Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;->this$0:Lorg/codeaurora/ims/QtiImsExtBase;

    invoke-direct {p0}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallForwardUncondTimer(IILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;->this$0:Lorg/codeaurora/ims/QtiImsExtBase;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codeaurora/ims/QtiImsExtBase;->onGetCallForwardUncondTimer(IILorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    return-void
.end method

.method public getHandoverConfig(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;->this$0:Lorg/codeaurora/ims/QtiImsExtBase;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/QtiImsExtBase;->onGetHandoverConfig(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    return-void
.end method

.method public getImsPhoneId()I
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;->this$0:Lorg/codeaurora/ims/QtiImsExtBase;

    invoke-virtual {v0}, Lorg/codeaurora/ims/QtiImsExtBase;->onGetImsPhoneId()I

    move-result v0

    return v0
.end method

.method public getPacketCount(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;->this$0:Lorg/codeaurora/ims/QtiImsExtBase;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/QtiImsExtBase;->onGetPacketCount(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    return-void
.end method

.method public getPacketErrorCount(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;->this$0:Lorg/codeaurora/ims/QtiImsExtBase;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/QtiImsExtBase;->onGetPacketErrorCount(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    return-void
.end method

.method public querySsacStatus(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;->this$0:Lorg/codeaurora/ims/QtiImsExtBase;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/QtiImsExtBase;->onQuerySsacStatus(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    return-void
.end method

.method public queryVoltePreference(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;->this$0:Lorg/codeaurora/ims/QtiImsExtBase;

    invoke-virtual {v0, p1, p2}, Lorg/codeaurora/ims/QtiImsExtBase;->onQueryVoltePreference(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    return-void
.end method

.method public queryVopsStatus(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;->this$0:Lorg/codeaurora/ims/QtiImsExtBase;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/QtiImsExtBase;->onQueryVopsStatus(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    return-void
.end method

.method public registerForParticipantStatusInfo(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;->this$0:Lorg/codeaurora/ims/QtiImsExtBase;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/QtiImsExtBase;->onRegisterForParticipantStatusInfo(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    return-void
.end method

.method public registerForViceRefreshInfo(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;->this$0:Lorg/codeaurora/ims/QtiImsExtBase;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/QtiImsExtBase;->onRegisterForViceRefreshInfo(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    return-void
.end method

.method public resumePendingCall(I)V
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;->this$0:Lorg/codeaurora/ims/QtiImsExtBase;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/QtiImsExtBase;->onResumePendingCall(I)V

    return-void
.end method

.method public sendCallDeflectRequest(ILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;->this$0:Lorg/codeaurora/ims/QtiImsExtBase;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codeaurora/ims/QtiImsExtBase;->onSendCallDeflectRequest(ILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    return-void
.end method

.method public sendCallTransferRequest(IILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;->this$0:Lorg/codeaurora/ims/QtiImsExtBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/codeaurora/ims/QtiImsExtBase;->onSendCallTransferRequest(IILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    return-void
.end method

.method public setCallForwardUncondTimer(IIIIIIILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 10

    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;->this$0:Lorg/codeaurora/ims/QtiImsExtBase;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lorg/codeaurora/ims/QtiImsExtBase;->onSetCallForwardUncondTimer(IIIIIIILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    return-void
.end method

.method public setHandoverConfig(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;->this$0:Lorg/codeaurora/ims/QtiImsExtBase;

    invoke-virtual {v0, p1, p2}, Lorg/codeaurora/ims/QtiImsExtBase;->onSetHandoverConfig(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    return-void
.end method

.method public updateVoltePreference(IILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;->this$0:Lorg/codeaurora/ims/QtiImsExtBase;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codeaurora/ims/QtiImsExtBase;->onUpdateVoltePreference(IILorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    return-void
.end method
