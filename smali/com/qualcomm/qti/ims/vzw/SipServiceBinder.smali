.class public Lcom/qualcomm/qti/ims/vzw/SipServiceBinder;
.super Lverizon/net/sip/internal/ISipService$Stub;
.source "SipServiceBinder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lverizon/net/sip/internal/ISipService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public createSipSession()Lverizon/net/sip/internal/ISipSession;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public enableCallWaitingRules(Z)V
    .locals 0

    return-void
.end method

.method public getRegisterResponse()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSipSession(I)Lverizon/net/sip/internal/ISipSession;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isRegistered(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public makeMediaCall(Ljava/lang/String;Lverizon/net/sip/internal/ISipSessionListener;II)Lverizon/net/sip/internal/ISipSession;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public mergeMediaCalls(Lverizon/net/sip/internal/ISipSession;Lverizon/net/sip/internal/ISipSession;I)Lverizon/net/sip/internal/ISipSession;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public open(Ljava/lang/String;Landroid/app/PendingIntent;Lverizon/net/sip/internal/ISipRegistrationListener;I)V
    .locals 0

    return-void
.end method

.method public openSipDialog(Ljava/lang/String;Landroid/app/PendingIntent;Ljava/util/Map;Lverizon/net/sip/internal/ISipRegistrationListener;)Lverizon/net/sip/internal/ISipSession;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public resetCallingListeneer(Lverizon/net/sip/internal/ISipSessionListener;)V
    .locals 0

    return-void
.end method

.method public setCallingListener(Lverizon/net/sip/internal/ISipSessionListener;)V
    .locals 0

    return-void
.end method

.method public setRegistrationListener(Lverizon/net/sip/internal/ISipRegistrationListener;)V
    .locals 0

    return-void
.end method
